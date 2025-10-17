
`timescale 1 ns / 1 ps

	module i2c_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface AXI
		parameter integer C_AXI_DATA_WIDTH	= 32,
		parameter integer C_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
        output wire [7:0] dbg_index,
        output wire [2:0] tx_status,
        
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface AXI
		input wire  axi_aclk,
		input wire  axi_aresetn,
		input wire [C_AXI_ADDR_WIDTH-1 : 0] axi_awaddr,
		input wire [2 : 0] axi_awprot,
		input wire  axi_awvalid,
		output wire  axi_awready,
		input wire [C_AXI_DATA_WIDTH-1 : 0] axi_wdata,
		input wire [(C_AXI_DATA_WIDTH/8)-1 : 0] axi_wstrb,
		input wire  axi_wvalid,
		output wire  axi_wready,
		output wire [1 : 0] axi_bresp,
		output wire  axi_bvalid,
		input wire  axi_bready,
		input wire [C_AXI_ADDR_WIDTH-1 : 0] axi_araddr,
		input wire [2 : 0] axi_arprot,
		input wire  axi_arvalid,
		output wire  axi_arready,
		output wire [C_AXI_DATA_WIDTH-1 : 0] axi_rdata,
		output wire [1 : 0] axi_rresp,
		output wire  axi_rvalid,
		input wire  axi_rready
	);
	
	wire [7:0] i2c_data_out;
	wire [7:0] i2c_data_in;
	wire wr_request;
	wire rd_request;
	wire clear_tx_overflow;
	wire [3:0] wr_index;
	wire [3:0] rd_index;
	assign dbg_index = {wr_index, rd_index};
	
    // Instantiation of Axi Bus Interface AXI
	i2c_v1_0_AXI # ( 
		.C_S_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH)
	) i2c_v1_0_AXI_inst (
		.S_AXI_ACLK(axi_aclk),
		.S_AXI_ARESETN(axi_aresetn),
		.S_AXI_AWADDR(axi_awaddr),
		.S_AXI_AWPROT(axi_awprot),
		.S_AXI_AWVALID(axi_awvalid),
		.S_AXI_AWREADY(axi_awready),
		.S_AXI_WDATA(axi_wdata),
		.S_AXI_WSTRB(axi_wstrb),
		.S_AXI_WVALID(axi_wvalid),
		.S_AXI_WREADY(axi_wready),
		.S_AXI_BRESP(axi_bresp),
		.S_AXI_BVALID(axi_bvalid),
		.S_AXI_BREADY(axi_bready),
		.S_AXI_ARADDR(axi_araddr),
		.S_AXI_ARPROT(axi_arprot),
		.S_AXI_ARVALID(axi_arvalid),
		.S_AXI_ARREADY(axi_arready),
		.S_AXI_RDATA(axi_rdata),
		.S_AXI_RRESP(axi_rresp),
		.S_AXI_RVALID(axi_rvalid),
        .S_AXI_RREADY(axi_rready),
		.i2c_data_in(i2c_data_in),
		.i2c_data_out(i2c_data_out),
        .wr_request(wr_request),
        .rd_request(rd_request),
		.dbg_index(dbg_index),
		.tx_status(tx_status),
		.clear_tx_overflow(clear_tx_overflow)
	);

	// Add user logic here
	
	FIFO tx_fifo(
        .clk(axi_aclk),
        .reset(!axi_aresetn),
        .wr_data(i2c_data_out),
        .wr_request(wr_request),
        .rd_request(rd_request),
        .clear_overflow_request(clear_tx_overflow),
        .rd_data(i2c_data_in),
        .empty(tx_status[2]),
        .full(tx_status[1]),
        .overflow(tx_status[0]),
        .wr_index(wr_index),
        .rd_index(rd_index)
	);
	// User logic ends

	endmodule
