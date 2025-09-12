`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 04:05:12 PM
// Design Name: 
// Module Name: hex_to_ss
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


module seven_seg(
    input clk,           // 100 MHz clock input
    input [7:0] SS_Displays [0:3], // 4 displays, 8-bit wide
    output reg [3:0] SS_ANODE,   // Anodes 3..0 placed from left to right
    output reg [7:0] SS_CATHODE // Bit order: DP, G, F, E, D, C, B, A
    );

    // 50 Hz Refresh Rate per display for 100 MHz clock
    parameter REFRESH_COUNT = 26'd500000; 
    reg [19:0] ticks; // 20-bit counter for refresh rate
    reg [1:0] display_idx;

    always_ff @(posedge clk) begin
        if (ticks < REFRESH_COUNT)
            ticks <= ticks + 1;
        else 
        begin
            ticks <= 0;
            display_idx <= display_idx + 1;
        end
    end
    
    always_comb
    begin
        if(display_idx == 2'd0)
            SS_ANODE = 4'b1110;
        else if(display_idx == 2'd1)
            SS_ANODE = 4'b1101;
        else if(display_idx == 2'd2)
            SS_ANODE = 4'b1011;
        else
            SS_ANODE = 4'b0111;

        SS_CATHODE = SS_Displays[display_idx];
    end
endmodule


