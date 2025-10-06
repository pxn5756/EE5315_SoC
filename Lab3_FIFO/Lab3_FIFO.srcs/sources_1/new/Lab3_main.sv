`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 08:48:03 PM
// Design Name: 
// Module Name: fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab3_main(
    input CLK100,           // 100 MHz clock input
    output [9:0] LED,       // RGB1, RGB0, LED 9..0 placed from left to right
    output [2:0] RGB0,      
    output [2:0] RGB1,
    output [3:0] SS_ANODE,   // Anodes 3..0 placed from left to right
    output [7:0] SS_CATHODE, // Bit order: DP, G, F, E, D, C, B, A
    input [11:0] SW,         // SWs 11..0 placed from left to right
    input [3:0] PB,          // PBs 3..0 placed from left to right
    inout [23:0] GPIO,       // PMODA-C 1P, 1N, ... 3P, 3N order
    output [3:0] SERVO,      // Servo outputs
    output PDM_SPEAKER,      // PDM signals for mic and speaker
    input PDM_MIC_DATA,      
    output PDM_MIC_CLK,
    output ESP32_UART1_TXD,  // WiFi/Bluetooth serial interface 1
    input ESP32_UART1_RXD,
    output IMU_SCLK,         // IMU spi clk
    output IMU_SDI,          // IMU spi data input
    input IMU_SDO_AG,        // IMU spi data output (accel/gyro)
    input IMU_SDO_M,         // IMU spi data output (mag)
    output IMU_CS_AG,        // IMU cs (accel/gyro) 
    output IMU_CS_M,         // IMU cs (mag)
    input IMU_DRDY_M,        // IMU data ready (mag)
    input IMU_INT1_AG,       // IMU interrupt (accel/gyro)
    input IMU_INT_M,         // IMU interrupt (mag)
    output IMU_DEN_AG        // IMU data enable (accel/gyro)
    );
    
    // Terminate all of the unused outputs or i/o's
    // assign LED = 10'b0000000000;
    // assign RGB0 = 3'b000;
    assign RGB1 = 3'b000;
    assign SS_ANODE = 4'b0000;
    assign SS_CATHODE = 8'b11111111;
    assign GPIO = 24'bzzzzzzzzzzzzzzzzzzzzzzzz;
    assign SERVO = 4'b0000;
    assign PDM_SPEAKER = 1'b0;
    assign PDM_MIC_CLK = 1'b0;
    assign ESP32_UART1_TXD = 1'b0;
    assign IMU_SCLK = 1'b0;
    assign IMU_SDI = 1'b0;
    assign IMU_CS_AG = 1'b1;
    assign IMU_CS_M = 1'b1;
    assign IMU_DEN_AG = 1'b0;
    
    wire clk = CLK100;
    
    reg RESET;
    reg pre_reset;
    reg CLEAR;
    reg pre_clear;
    reg MODE;
    reg pre_mode;
    reg [7:0] DATA;
    reg [7:0] pre_data;

    always_ff @ (posedge(clk))
    begin
        pre_reset <= PB[0];
        RESET <= pre_reset;
        pre_clear <= PB[1];
        CLEAR <= pre_clear;
        pre_mode <= SW[9];
        MODE <= pre_mode;
        pre_data <= SW[7:0];
        DATA <= pre_data;

        // pre_read <= PB[2];
        // READ <= pre_read;
        // pre_write <= PB[3];
        // WRITE <= pre_write;
    end

    debounce50ms db_write(
        .clk(clk),
        .button_in(PB[2]),
        .button_out(READ)
    );

    debounce50ms db_read(
        .clk(clk),
        .button_in(PB[3]),
        .button_out(WRITE)
    );

    reg wr_request;
    reg rd_request;
    reg [3:0] wr_index;
    reg [3:0] rd_index;
    reg [7:0] rd_data;
    reg[3:0] fifo_flags;
    reg [7:0] mode_output;
    assign LED[7:0] = mode_output;
    assign RGB0 = fifo_flags;

    always @ (MODE, rd_data, wr_index, rd_index)
    begin
        if (MODE)
        begin
            mode_output = {wr_index, rd_index};
        end 
        else
        begin
            mode_output = rd_data;
        end
    end

    assign LED[9:8] = {wr_request, rd_request};

    edgeDetect ed_write(
        .clk(clk),
        .signal(WRITE),
        .clk_pulse(wr_request)
    );

    edgeDetect ed_read(
        .clk(clk),
        .signal(READ),
        .clk_pulse(rd_request)
    );

    FIFO8x16 fifo_inst(
        .clk(clk),
        .reset(RESET),
        .wr_data(DATA),
        .wr_request(wr_request),
        .rd_request(rd_request),
        .clear_overflow_request(CLEAR),
        .rd_data(rd_data),
        .empty(fifo_flags[0]),
        .full(fifo_flags[1]),
        .overflow(fifo_flags[2]),
        .wr_index(wr_index),
        .rd_index(rd_index)
    );
endmodule



