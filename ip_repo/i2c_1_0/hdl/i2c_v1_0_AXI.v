
`timescale 1 ns / 1 ps

	module i2c_v1_0_AXI #
	(
		// Users to add parameters here

        
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
        input wire [2:0] tx_status,
        input wire [7:0] dbg_index,
        input wire[7:0] i2c_data_in,
        output wire [7:0] i2c_data_out,
        output wire clear_tx_overflow,
        output wire wr_request,
        output wire rd_request,
		// User ports ends
		// Do not modify the ports beyond this line

        // AXI clock and reset        
        input wire S_AXI_ACLK,
        input wire S_AXI_ARESETN,

        // AXI write channel
        // address:  add, protection, valid, ready
        // data:     data, byte enable strobes, valid, ready
        // response: response, valid, ready 
        input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
        input wire [2:0] S_AXI_AWPROT,
        input wire S_AXI_AWVALID,
        output wire S_AXI_AWREADY,
        
        input wire [31:0] S_AXI_WDATA,
        input wire [3:0] S_AXI_WSTRB,
        input wire S_AXI_WVALID,
        output wire  S_AXI_WREADY,
        
        output wire [1:0] S_AXI_BRESP,
        output wire S_AXI_BVALID,
        input wire S_AXI_BREADY,
        
        // AXI read channel
        // address: add, protection, valid, ready
        // data:    data, resp, valid, ready
        input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
        input wire [2:0] S_AXI_ARPROT,
        input wire S_AXI_ARVALID,
        output wire S_AXI_ARREADY,
        
        output wire [31:0] S_AXI_RDATA,
        output wire [1:0] S_AXI_RRESP,
        output wire S_AXI_RVALID,
        input wire S_AXI_RREADY
	);

    // Internal registers
    reg [31:0] address;
    reg [31:0] regnum;
    reg [31:0] rx_data;
    reg [31:0] tx_data;
    reg [31:0] read_status;
    reg [31:0] write_status;
    reg [31:0] control;

    localparam integer ADDR_REG     = 3'b000;
    localparam integer REGNUM_REG   = 3'b001;
    localparam integer DATA_REG     = 3'b010;
    localparam integer STATUS_REG   = 3'b011;
    localparam integer CTRL_REG     = 3'b100;
    
    // AXI4-lite signals
    reg axi_awready;
    reg axi_wready;
    reg [1:0] axi_bresp;
    reg axi_bvalid;
    reg axi_arready;
    reg [31:0] axi_rdata;
    reg [1:0] axi_rresp;
    reg axi_rvalid;
    
    // friendly clock, reset, and bus signals from master
    wire axi_clk           = S_AXI_ACLK;
    wire axi_resetn        = S_AXI_ARESETN;
    wire [31:0] axi_awaddr = S_AXI_AWADDR;
    wire axi_awvalid       = S_AXI_AWVALID;
    wire axi_wvalid        = S_AXI_WVALID;
    wire [3:0] axi_wstrb   = S_AXI_WSTRB;
    wire axi_bready        = S_AXI_BREADY;
    wire [31:0] axi_araddr = S_AXI_ARADDR;
    wire axi_arvalid       = S_AXI_ARVALID;
    wire axi_rready        = S_AXI_RREADY;    
    
    // assign bus signals to master to internal reg names
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RDATA   = axi_rdata;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;
	
	// Assert address ready handshake (axi_awready) 
    // - after address is valid (axi_awvalid)
    // - after data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    // De-assert ready (axi_awready)
    // - after write response channel ready handshake received (axi_bready)
    // - after this module sends write response channel valid (axi_bvalid) 
    wire wr_add_data_valid = axi_awvalid && axi_wvalid;
    reg aw_en;
    always @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_awready <= 1'b0;
            aw_en <= 1'b1;
        end
        else
        begin
            if (wr_add_data_valid && ~axi_awready && aw_en)
            begin
                axi_awready <= 1'b1;
                aw_en <= 1'b0;
            end
            else if (axi_bready && axi_bvalid)
                begin
                    aw_en <= 1'b1;
                    axi_awready <= 1'b0;
                end
            else           
                axi_awready <= 1'b0;
        end 
    end

    // Capture the write address (axi_awaddr) in the first clock (~axi_awready)
    // - after write address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    reg [C_S_AXI_ADDR_WIDTH-1:0] waddr;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            waddr <= 0;
        else if (wr_add_data_valid && ~axi_awready && aw_en)
            waddr <= axi_awaddr;
    end

    // Output write data ready handshake (axi_wready) generation for one clock
    // - after address is valid (axi_awvalid)
    // - after data is valid (axi_wvalid)
    // - while configured to receive a write (aw_en)
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            axi_wready <= 1'b0;
        else
            axi_wready <= (wr_add_data_valid && ~axi_wready && aw_en);
    end       

    // Write data to internal registers
    // - after address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - after this module asserts ready for address handshake (axi_awready)
    // - after this module asserts ready for data handshake (axi_wready)
    // write correct bytes in 32-bit word based on byte enables (axi_wstrb)
    // write_status[3] (clear_overflow_request) cleared after 1 cycle
    // write_status[6] (clear ack error) cleared after 1 cycle
    // tx_request cleared after 1 cycle 
    wire wr = wr_add_data_valid && axi_awready && axi_wready;
    integer byte_index;
    reg tx_request;
    
    assign i2c_data_out = tx_data[7:0];
    assign clear_tx_overflow = write_status[3];
    assign wr_request = tx_request;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            address[31:0] <= 32'b0;
            regnum <= 32'b0;
            tx_data <= 16'b0;
            write_status<= 32'b0;
            control <= 32'b0;
            tx_request <= 1'b0;
        end 
        else 
        begin
            if (wr)
            begin
                case (axi_awaddr[4:2])
                    ADDR_REG:
                    begin
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if ( axi_wstrb[byte_index] == 1) 
                                address[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end
                    REGNUM_REG:
                    begin
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if (axi_wstrb[byte_index] == 1)
                                regnum[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];     
                    end                      
                    DATA_REG: 
                    begin
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if (axi_wstrb[byte_index] == 1)
                                tx_data[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                        tx_request <= 1'b1;
                    end
                    STATUS_REG:
                    begin
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if (axi_wstrb[byte_index] == 1)
                                write_status[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end
                    CTRL_REG:
                    begin
                        for (byte_index = 0; byte_index <= 3; byte_index = byte_index+1)
                            if (axi_wstrb[byte_index] == 1) 
                                control[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    end
                endcase
            end
            else
            begin
                // Clear Write Request and Clear Overflow Request after 1 cycle.
                write_status[3] <= 1'b0;
                write_status[6] <= 1'b0;
                tx_request <= 1'b0;
            end
        end
    end    

    // Send write response (axi_bvalid, axi_bresp)
    // - after address is valid (axi_awvalid)
    // - after write data is valid (axi_wvalid)
    // - after this module asserts ready for address handshake (axi_awready)
    // - after this module asserts ready for data handshake (axi_wready)
    // Clear write response valid (axi_bvalid) after one clock
    wire wr_add_data_ready = axi_awready && axi_wready;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_bvalid  <= 0;
            axi_bresp   <= 2'b0;
        end 
        else
        begin    
            if (wr_add_data_valid && wr_add_data_ready && ~axi_bvalid)
            begin
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0;
            end
            else if (S_AXI_BREADY && axi_bvalid) 
                axi_bvalid <= 1'b0; 
        end
    end   

    // In the first clock (~axi_arready) that the read address is valid
    // - capture the address (axi_araddr)
    // - output ready (axi_arready) for one clock
    reg [C_S_AXI_ADDR_WIDTH-1:0] raddr;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_arready <= 1'b0;
            raddr <= 32'b0;
        end 
        else
        begin    
            // if valid, pulse ready (axi_rready) for one clock and save address
            if (axi_arvalid && ~axi_arready)
            begin
                axi_arready <= 1'b1;
                raddr  <= axi_araddr;
            end
            else
                axi_arready <= 1'b0;
        end 
    end       
        
    // Update register read data
    // - after this module receives a valid address (axi_arvalid)
    // - after this module asserts ready for address handshake (axi_arready)
    // - before the module asserts the data is valid (~axi_rvalid)
    //   (don't change the data while asserting read data is valid)
    wire rd = axi_arvalid && axi_arready && ~axi_rvalid;
    reg rx_request;
    assign rd_request = rx_request;
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
        begin
            axi_rdata <= 32'b0;
            rx_request <= 1'b0;
        end 
        else
        begin    
            if (rd)
            begin
                // Address decoding for reading registers
                case (raddr[4:2])
                    ADDR_REG: 
                    begin
                        axi_rdata <= address;
                    end
                    REGNUM_REG:
                    begin
                        axi_rdata <= regnum;
                    end
                    DATA_REG: 
                    begin
                        axi_rdata <= i2c_data_in;
                        // Set Read request to trigger read update
                        rx_request <= 1'b1;        
                    end
                    STATUS_REG: 
                    begin
                        axi_rdata <= read_status;
                    end
                    CTRL_REG:
                    begin
                        axi_rdata <= control;
                    end
                endcase
            end
            else
                // Clear FIFO Read Request after 1 cycle
                rx_request <= 1'b0;   
        end
    end    

    // Assert data is valid for reading (axi_rvalid)
    // - after address is valid (axi_arvalid)
    // - after this module asserts ready for address handshake (axi_arready)
    // De-assert data valid (axi_rvalid) 
    // - after master ready handshake is received (axi_rready)
    always_ff @ (posedge axi_clk)
    begin
        if (axi_resetn == 1'b0)
            axi_rvalid <= 1'b0;
        else
        begin
            if (axi_arvalid && axi_arready && ~axi_rvalid)
            begin
                axi_rvalid <= 1'b1;
                axi_rresp <= 2'b0;
            end   
            else if (axi_rvalid && axi_rready)
                axi_rvalid <= 1'b0;
        end
    end    
    
	// Add user logic here
	// set internal register to tx fifo status
	always_comb
	begin
	    read_status[2:0] <= 3'b0;
	    read_status[5:3] <= tx_status;
	    read_status[15:8] <= dbg_index;
	    read_status[31:16] <= 14'b0;
	end

	// User logic ends

	endmodule
