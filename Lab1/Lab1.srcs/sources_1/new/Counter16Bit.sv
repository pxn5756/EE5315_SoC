`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 03:39:14 PM
// Design Name: 
// Module Name: Counter16Bit
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

module Counter16Bit(

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
    assign LED[9:1] = 9'b000000000;
    assign RGB0 = 3'b000;
    assign RGB1 = 3'b000;
    // assign SS_ANODE = 4'b0000;
    // assign SS_CATHODE = 8'b11111111;
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

    reg reset;
    reg pre_reset;
    reg counter_mode;
    reg pre_counter_mode;
    reg [10:0] counter_delta;
    reg [10:0] pre_counter_delta;
    reg pre_max_set;
    reg max_set;
    reg pre_min_set;
    reg min_set;
    reg pre_match_set;
    reg match_set;
    wire match_led;

    assign LED[0] = match_led;

    // handle input metastability safely
    always_ff @ (posedge(clk))
    begin
        pre_reset <= PB[0];
        reset <= pre_reset;

        pre_counter_mode <= SW[11];
        counter_mode <= pre_counter_mode;

        pre_counter_delta <= SW[10:0];
        counter_delta <= pre_counter_delta;

        pre_min_set <= PB[1];
        min_set <= pre_min_set;
        pre_max_set <= PB[2];
        max_set <= pre_max_set;
        pre_match_set <= PB[3];
        match_set <= pre_match_set;
    end

    reg [15:0] counts;

    Counter250ms counter(
        .clk(clk),
        .reset(reset),
        .mode(counter_mode),
        .delta(counter_delta),
        .min_set(min_set),
        .max_set(max_set),
        .match_set(match_set),
        .match_led(match_led),
        .counter(counts)
    );

    reg [7:0] SS_Displays [0:3]; // 4 displays, 8-bit wide  
    hex_to_ss hex2ss0(
        .hexnum(counts[3:0]),
        .SS_out(SS_Displays[0])
    );
    hex_to_ss hex2ss1(
        .hexnum(counts[7:4]),
        .SS_out(SS_Displays[1])
    );
    hex_to_ss hex2ss2(
        .hexnum(counts[11:8]),
        .SS_out(SS_Displays[2])
    );
    hex_to_ss hex2ss3(
        .hexnum(counts[15:12]),
        .SS_out(SS_Displays[3])
    );

    seven_seg seven_seg_inst (
        .clk(clk),
        .SS_Displays(SS_Displays),
        .SS_ANODE(SS_ANODE),
        .SS_CATHODE(SS_CATHODE)
    );
endmodule

module Counter250ms(
    input clk,    // 100 MHz clock input
    input reset,
    input mode,
    input max_set,
    input min_set,
    input match_set,
    input [10:0] delta,
    output reg [15:0] counter,
    output reg match_led
    );
    
    parameter count250ms = 25'd25000000;
    reg [24:0] ticks;
    reg [15:0] MAXIMUM;
    reg [15:0] MINIMUM;
    reg [15:0] MATCH;
    reg [16:0] next_count;
    reg [15:0] overflow_count;
    reg [15:0] underflow_count;
    reg underflow_occurred;

    always_comb begin
        if (mode)
            next_count = counter + delta;
        else
            next_count = counter - delta;

        
        overflow_count = next_count - MAXIMUM - 1;

        // Handle underflow when counter wraps below 0
        if (counter < delta)
        begin
            underflow_count = 16'hFFFF - next_count;
            underflow_occurred = 1'b1;
        end
        else
            underflow_count = MINIMUM - next_count - 1;
    end

    always_ff @(posedge clk)
    begin
        if (reset)
        begin
            counter <= 0;
            ticks <= 0;
            MAXIMUM <= 16'hFFFF;
            MINIMUM <= 16'h0000;
            MATCH <= 16'h0000;
            match_led <= 1'b0;
        end
        else
        begin
            if (max_set)
            begin
                if (counter > MINIMUM)
                    MAXIMUM <= counter;
            end
                
            if (min_set)
            begin
                if (counter < MAXIMUM)
                    MINIMUM <= counter;
            end

            if (match_set)
                MATCH <= counter;

            if (ticks < count250ms)
                ticks <= ticks + 1;
            else
            begin
                ticks <= 0;
                if (counter == MATCH)
                    match_led <= match_led ^ 1'b1;

                if (mode)
                begin
                    if (next_count > MAXIMUM)
                        counter <= MINIMUM + overflow_count;
                    else
                    begin
                        counter <= next_count;
                    end     
                end                  
                else
                begin
                    if ((next_count < MINIMUM) || underflow_occurred)
                        counter <= MAXIMUM - underflow_count;
                    else
                    begin
                        counter <= next_count;
                    end     
                end
            end
        end
    end
endmodule



