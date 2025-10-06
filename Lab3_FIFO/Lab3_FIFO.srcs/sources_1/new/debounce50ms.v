`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2025 12:40:36 AM
// Design Name: 
// Module Name: debounce50ms
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


module debounce50ms(
    input clk,
    input button_in,
    output reg button_out
    );
    
    parameter DEBOUNCE_CLOCKS = 24'd5000000;
    reg[24:0] ticks;
    reg debounceMode;
    
    always @ (posedge(clk))
    begin
        if (button_in)
        begin
            ticks <= 24'b0;
            button_out = 1'b1;
            debounceMode = 1'b1;
        end
        else
        begin
            if (debounceMode)
            begin
                if (ticks != DEBOUNCE_CLOCKS)
                begin
                    ticks <= ticks + 1;
                end
                else
                begin
                    ticks <= 24'b0;
                    button_out = 1'b0;
                    debounceMode = 1'b0;
                end
            end
            else
            begin
                button_out = 1'b0;
            end
        end
    end
endmodule
