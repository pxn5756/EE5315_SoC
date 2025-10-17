`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2025 12:12:57 AM
// Design Name: 
// Module Name: edgeDetect
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


module edgeDetect(
    input clk,
    input signal,
    output clk_pulse
);
    reg prev_signal;

    always @ (posedge(clk))
    begin
        prev_signal <= signal;
    end

    assign clk_pulse = signal & ~prev_signal;
endmodule
