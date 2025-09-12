`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 03:38:18 PM
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


module hex_to_ss(
    input [3:0] hexnum,
    output reg [7:0] SS_out
    );
    
    always @(hexnum)
    begin
        case(hexnum)
            4'h0: SS_out = 8'b11000000;
            4'h1: SS_out = 8'b11111001;
            4'h2: SS_out = 8'b10100100;
            4'h3: SS_out = 8'b10110000;
            4'h4: SS_out = 8'b10011001;
            4'h5: SS_out = 8'b10010010;
            4'h6: SS_out = 8'b10000010;
            4'h7: SS_out = 8'b11111000;
            4'h8: SS_out = 8'b10000000;
            4'h9: SS_out = 8'b10010000;
            4'hA: SS_out = 8'b10001000;
            4'hB: SS_out = 8'b10000011;
            4'hC: SS_out = 8'b11000110;
            4'hD: SS_out = 8'b10100001;
            4'hE: SS_out = 8'b10000110;
            4'hF: SS_out = 8'b10001110;
            default: SS_out = 8'b11111111;
        endcase
    end
endmodule
