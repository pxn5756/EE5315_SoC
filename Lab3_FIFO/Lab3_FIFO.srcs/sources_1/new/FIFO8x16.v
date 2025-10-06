`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2025 12:34:12 AM
// Design Name: 
// Module Name: FIFO8x16
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


module FIFO8x16(
    input clk,
    input reset,
    input [7:0] wr_data,
    input wr_request,
    input rd_request,
    input clear_overflow_request,
    output empty,
    output full, 
    output reg overflow,
    output reg [7:0] rd_data,
    output reg [3:0] wr_index,
    output reg [3:0] rd_index

);
    reg [7:0] fifo_buffer [0:15]; // 16 x 8-bit FIFO buffer
    
    assign full = ((wr_index + 1) & 4'b1111) == rd_index;
    assign empty = wr_index == rd_index;

    always @ (posedge(clk))
    begin
        if (reset) begin
            wr_index <= 0;
            rd_index <= 0;
            overflow <= 0;
        end
        else if (clear_overflow_request) 
        begin
            overflow <= 0;
        end
        else if (wr_request && !full) 
        begin
            fifo_buffer[wr_index] <= wr_data;
            wr_index <= (wr_index + 1) & 4'b1111;
        end
        else if (wr_request && full)
        begin
            overflow <= 1;
        end
        else
        begin
            if (rd_request && !empty) 
            begin
                rd_data <= fifo_buffer[rd_index];
                rd_index <= (rd_index + 1) & 4'b1111;
            end
        end
    end

endmodule

