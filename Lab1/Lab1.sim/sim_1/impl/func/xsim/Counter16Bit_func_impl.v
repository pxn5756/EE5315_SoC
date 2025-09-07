// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Sep  6 00:22:12 2025
// Host        : Peter-PC_Rig running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/peter/SoC_workspace/Lab1/Lab1.sim/sim_1/impl/func/xsim/Counter16Bit_func_impl.v
// Design      : Counter16Bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "5c69e91c" *) (* count250ms = "26'b01011111010111100001000000" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Counter16Bit
   (CLK100,
    LED,
    RGB0,
    RGB1,
    SS_ANODE,
    SS_CATHODE,
    SW,
    PB,
    GPIO,
    SERVO,
    PDM_SPEAKER,
    PDM_MIC_DATA,
    PDM_MIC_CLK,
    ESP32_UART1_TXD,
    ESP32_UART1_RXD,
    IMU_SCLK,
    IMU_SDI,
    IMU_SDO_AG,
    IMU_SDO_M,
    IMU_CS_AG,
    IMU_CS_M,
    IMU_DRDY_M,
    IMU_INT1_AG,
    IMU_INT_M,
    IMU_DEN_AG);
  input CLK100;
  output [9:0]LED;
  output [2:0]RGB0;
  output [2:0]RGB1;
  output [3:0]SS_ANODE;
  output [7:0]SS_CATHODE;
  input [11:0]SW;
  input [3:0]PB;
  inout [23:0]GPIO;
  output [3:0]SERVO;
  output PDM_SPEAKER;
  input PDM_MIC_DATA;
  output PDM_MIC_CLK;
  output ESP32_UART1_TXD;
  input ESP32_UART1_RXD;
  output IMU_SCLK;
  output IMU_SDI;
  input IMU_SDO_AG;
  input IMU_SDO_M;
  output IMU_CS_AG;
  output IMU_CS_M;
  input IMU_DRDY_M;
  input IMU_INT1_AG;
  input IMU_INT_M;
  output IMU_DEN_AG;

  wire CLK100;
  wire CLK100_IBUF;
  wire CLK100_IBUF_BUFG;
  wire ESP32_UART1_TXD;
  wire IMU_CS_AG;
  wire IMU_CS_M;
  wire IMU_DEN_AG;
  wire IMU_SCLK;
  wire IMU_SDI;
  wire [9:0]LED;
  wire PDM_MIC_CLK;
  wire PDM_SPEAKER;
  wire [2:0]RGB0;
  wire [2:0]RGB1;
  wire [3:0]SERVO;
  wire [3:0]SS_ANODE;
  wire [1:0]SS_ANODE_OBUF;
  wire [7:0]SS_CATHODE;
  wire [6:0]SS_CATHODE_OBUF;
  wire \counter[0]_i_2_n_0 ;
  wire [15:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire sel;
  wire \ticks[0]_i_3_n_0 ;
  wire \ticks[0]_i_4_n_0 ;
  wire \ticks[0]_i_5_n_0 ;
  wire \ticks[0]_i_6_n_0 ;
  wire [24:6]ticks_reg;
  wire \ticks_reg[0]_i_2_n_0 ;
  wire \ticks_reg[0]_i_2_n_4 ;
  wire \ticks_reg[0]_i_2_n_5 ;
  wire \ticks_reg[0]_i_2_n_6 ;
  wire \ticks_reg[0]_i_2_n_7 ;
  wire \ticks_reg[12]_i_1__0_n_0 ;
  wire \ticks_reg[12]_i_1__0_n_4 ;
  wire \ticks_reg[12]_i_1__0_n_5 ;
  wire \ticks_reg[12]_i_1__0_n_6 ;
  wire \ticks_reg[12]_i_1__0_n_7 ;
  wire \ticks_reg[16]_i_1__0_n_0 ;
  wire \ticks_reg[16]_i_1__0_n_4 ;
  wire \ticks_reg[16]_i_1__0_n_5 ;
  wire \ticks_reg[16]_i_1__0_n_6 ;
  wire \ticks_reg[16]_i_1__0_n_7 ;
  wire \ticks_reg[20]_i_1_n_0 ;
  wire \ticks_reg[20]_i_1_n_4 ;
  wire \ticks_reg[20]_i_1_n_5 ;
  wire \ticks_reg[20]_i_1_n_6 ;
  wire \ticks_reg[20]_i_1_n_7 ;
  wire \ticks_reg[24]_i_1_n_7 ;
  wire \ticks_reg[4]_i_1__0_n_0 ;
  wire \ticks_reg[4]_i_1__0_n_4 ;
  wire \ticks_reg[4]_i_1__0_n_5 ;
  wire \ticks_reg[4]_i_1__0_n_6 ;
  wire \ticks_reg[4]_i_1__0_n_7 ;
  wire \ticks_reg[8]_i_1__0_n_0 ;
  wire \ticks_reg[8]_i_1__0_n_4 ;
  wire \ticks_reg[8]_i_1__0_n_5 ;
  wire \ticks_reg[8]_i_1__0_n_6 ;
  wire \ticks_reg[8]_i_1__0_n_7 ;
  wire \ticks_reg_n_0_[0] ;
  wire \ticks_reg_n_0_[1] ;
  wire \ticks_reg_n_0_[2] ;
  wire \ticks_reg_n_0_[3] ;
  wire \ticks_reg_n_0_[4] ;
  wire \ticks_reg_n_0_[5] ;
  wire [2:0]\NLW_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ticks_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_ticks_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[8]_i_1__0_CO_UNCONNECTED ;

  BUFG CLK100_IBUF_BUFG_inst
       (.I(CLK100_IBUF),
        .O(CLK100_IBUF_BUFG));
  IBUF CLK100_IBUF_inst
       (.I(CLK100),
        .O(CLK100_IBUF));
  OBUF ESP32_UART1_TXD_OBUF_inst
       (.I(1'b0),
        .O(ESP32_UART1_TXD));
  OBUF IMU_CS_AG_OBUF_inst
       (.I(1'b1),
        .O(IMU_CS_AG));
  OBUF IMU_CS_M_OBUF_inst
       (.I(1'b1),
        .O(IMU_CS_M));
  OBUF IMU_DEN_AG_OBUF_inst
       (.I(1'b0),
        .O(IMU_DEN_AG));
  OBUF IMU_SCLK_OBUF_inst
       (.I(1'b0),
        .O(IMU_SCLK));
  OBUF IMU_SDI_OBUF_inst
       (.I(1'b0),
        .O(IMU_SDI));
  OBUF \LED_OBUF[0]_inst 
       (.I(1'b0),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(1'b0),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(1'b0),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(1'b0),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(1'b0),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(1'b0),
        .O(LED[7]));
  OBUF \LED_OBUF[8]_inst 
       (.I(1'b0),
        .O(LED[8]));
  OBUF \LED_OBUF[9]_inst 
       (.I(1'b0),
        .O(LED[9]));
  OBUF PDM_MIC_CLK_OBUF_inst
       (.I(1'b0),
        .O(PDM_MIC_CLK));
  OBUF PDM_SPEAKER_OBUF_inst
       (.I(1'b0),
        .O(PDM_SPEAKER));
  OBUF \RGB0_OBUF[0]_inst 
       (.I(1'b0),
        .O(RGB0[0]));
  OBUF \RGB0_OBUF[1]_inst 
       (.I(1'b0),
        .O(RGB0[1]));
  OBUF \RGB0_OBUF[2]_inst 
       (.I(1'b0),
        .O(RGB0[2]));
  OBUF \RGB1_OBUF[0]_inst 
       (.I(1'b0),
        .O(RGB1[0]));
  OBUF \RGB1_OBUF[1]_inst 
       (.I(1'b0),
        .O(RGB1[1]));
  OBUF \RGB1_OBUF[2]_inst 
       (.I(1'b0),
        .O(RGB1[2]));
  OBUF \SERVO_OBUF[0]_inst 
       (.I(1'b0),
        .O(SERVO[0]));
  OBUF \SERVO_OBUF[1]_inst 
       (.I(1'b0),
        .O(SERVO[1]));
  OBUF \SERVO_OBUF[2]_inst 
       (.I(1'b0),
        .O(SERVO[2]));
  OBUF \SERVO_OBUF[3]_inst 
       (.I(1'b0),
        .O(SERVO[3]));
  OBUF \SS_ANODE_OBUF[0]_inst 
       (.I(SS_ANODE_OBUF[0]),
        .O(SS_ANODE[0]));
  OBUF \SS_ANODE_OBUF[1]_inst 
       (.I(SS_ANODE_OBUF[1]),
        .O(SS_ANODE[1]));
  OBUF \SS_ANODE_OBUF[2]_inst 
       (.I(1'b0),
        .O(SS_ANODE[2]));
  OBUF \SS_ANODE_OBUF[3]_inst 
       (.I(1'b0),
        .O(SS_ANODE[3]));
  OBUF \SS_CATHODE_OBUF[0]_inst 
       (.I(SS_CATHODE_OBUF[0]),
        .O(SS_CATHODE[0]));
  OBUF \SS_CATHODE_OBUF[1]_inst 
       (.I(SS_CATHODE_OBUF[1]),
        .O(SS_CATHODE[1]));
  OBUF \SS_CATHODE_OBUF[2]_inst 
       (.I(SS_CATHODE_OBUF[2]),
        .O(SS_CATHODE[2]));
  OBUF \SS_CATHODE_OBUF[3]_inst 
       (.I(SS_CATHODE_OBUF[3]),
        .O(SS_CATHODE[3]));
  OBUF \SS_CATHODE_OBUF[4]_inst 
       (.I(SS_CATHODE_OBUF[4]),
        .O(SS_CATHODE[4]));
  OBUF \SS_CATHODE_OBUF[5]_inst 
       (.I(SS_CATHODE_OBUF[5]),
        .O(SS_CATHODE[5]));
  OBUF \SS_CATHODE_OBUF[6]_inst 
       (.I(SS_CATHODE_OBUF[6]),
        .O(SS_CATHODE[6]));
  OBUF \SS_CATHODE_OBUF[7]_inst 
       (.I(1'b0),
        .O(SS_CATHODE[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\NLW_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({counter_reg[3:1],\counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO(\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK100_IBUF_BUFG),
        .CE(sel),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(1'b0));
  seven_seg seven_seg_inst
       (.CLK100_IBUF_BUFG(CLK100_IBUF_BUFG),
        .Q(SS_ANODE_OBUF),
        .\SS_CATHODE_reg[6]_0 (SS_CATHODE_OBUF),
        .counter_reg(counter_reg));
  LUT6 #(
    .INIT(64'hA8AAA8A888888888)) 
    \ticks[0]_i_1 
       (.I0(ticks_reg[24]),
        .I1(ticks_reg[23]),
        .I2(ticks_reg[17]),
        .I3(\ticks[0]_i_3_n_0 ),
        .I4(ticks_reg[16]),
        .I5(\ticks[0]_i_4_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \ticks[0]_i_3 
       (.I0(ticks_reg[12]),
        .I1(ticks_reg[11]),
        .I2(ticks_reg[14]),
        .I3(ticks_reg[13]),
        .I4(\ticks[0]_i_6_n_0 ),
        .I5(ticks_reg[15]),
        .O(\ticks[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \ticks[0]_i_4 
       (.I0(ticks_reg[18]),
        .I1(ticks_reg[21]),
        .I2(ticks_reg[22]),
        .I3(ticks_reg[19]),
        .I4(ticks_reg[20]),
        .O(\ticks[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ticks[0]_i_5 
       (.I0(\ticks_reg_n_0_[0] ),
        .O(\ticks[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ticks[0]_i_6 
       (.I0(ticks_reg[9]),
        .I1(ticks_reg[10]),
        .I2(ticks_reg[7]),
        .I3(ticks_reg[8]),
        .I4(ticks_reg[6]),
        .O(\ticks[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[0] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_2_n_7 ),
        .Q(\ticks_reg_n_0_[0] ),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\ticks_reg[0]_i_2_n_0 ,\NLW_ticks_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ticks_reg[0]_i_2_n_4 ,\ticks_reg[0]_i_2_n_5 ,\ticks_reg[0]_i_2_n_6 ,\ticks_reg[0]_i_2_n_7 }),
        .S({\ticks_reg_n_0_[3] ,\ticks_reg_n_0_[2] ,\ticks_reg_n_0_[1] ,\ticks[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[10] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1__0_n_5 ),
        .Q(ticks_reg[10]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[11] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1__0_n_4 ),
        .Q(ticks_reg[11]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[12] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1__0_n_7 ),
        .Q(ticks_reg[12]),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[12]_i_1__0 
       (.CI(\ticks_reg[8]_i_1__0_n_0 ),
        .CO({\ticks_reg[12]_i_1__0_n_0 ,\NLW_ticks_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[12]_i_1__0_n_4 ,\ticks_reg[12]_i_1__0_n_5 ,\ticks_reg[12]_i_1__0_n_6 ,\ticks_reg[12]_i_1__0_n_7 }),
        .S(ticks_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[13] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1__0_n_6 ),
        .Q(ticks_reg[13]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[14] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1__0_n_5 ),
        .Q(ticks_reg[14]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[15] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1__0_n_4 ),
        .Q(ticks_reg[15]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[16] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1__0_n_7 ),
        .Q(ticks_reg[16]),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[16]_i_1__0 
       (.CI(\ticks_reg[12]_i_1__0_n_0 ),
        .CO({\ticks_reg[16]_i_1__0_n_0 ,\NLW_ticks_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[16]_i_1__0_n_4 ,\ticks_reg[16]_i_1__0_n_5 ,\ticks_reg[16]_i_1__0_n_6 ,\ticks_reg[16]_i_1__0_n_7 }),
        .S(ticks_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[17] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1__0_n_6 ),
        .Q(ticks_reg[17]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[18] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1__0_n_5 ),
        .Q(ticks_reg[18]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[19] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1__0_n_4 ),
        .Q(ticks_reg[19]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[1] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_2_n_6 ),
        .Q(\ticks_reg_n_0_[1] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[20] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[20]_i_1_n_7 ),
        .Q(ticks_reg[20]),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[20]_i_1 
       (.CI(\ticks_reg[16]_i_1__0_n_0 ),
        .CO({\ticks_reg[20]_i_1_n_0 ,\NLW_ticks_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[20]_i_1_n_4 ,\ticks_reg[20]_i_1_n_5 ,\ticks_reg[20]_i_1_n_6 ,\ticks_reg[20]_i_1_n_7 }),
        .S(ticks_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[21] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[20]_i_1_n_6 ),
        .Q(ticks_reg[21]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[22] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[20]_i_1_n_5 ),
        .Q(ticks_reg[22]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[23] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[20]_i_1_n_4 ),
        .Q(ticks_reg[23]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[24] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[24]_i_1_n_7 ),
        .Q(ticks_reg[24]),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[24]_i_1 
       (.CI(\ticks_reg[20]_i_1_n_0 ),
        .CO(\NLW_ticks_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ticks_reg[24]_i_1_O_UNCONNECTED [3:1],\ticks_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,ticks_reg[24]}));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[2] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_2_n_5 ),
        .Q(\ticks_reg_n_0_[2] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[3] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_2_n_4 ),
        .Q(\ticks_reg_n_0_[3] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[4] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1__0_n_7 ),
        .Q(\ticks_reg_n_0_[4] ),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[4]_i_1__0 
       (.CI(\ticks_reg[0]_i_2_n_0 ),
        .CO({\ticks_reg[4]_i_1__0_n_0 ,\NLW_ticks_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[4]_i_1__0_n_4 ,\ticks_reg[4]_i_1__0_n_5 ,\ticks_reg[4]_i_1__0_n_6 ,\ticks_reg[4]_i_1__0_n_7 }),
        .S({ticks_reg[7:6],\ticks_reg_n_0_[5] ,\ticks_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[5] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1__0_n_6 ),
        .Q(\ticks_reg_n_0_[5] ),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[6] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1__0_n_5 ),
        .Q(ticks_reg[6]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[7] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1__0_n_4 ),
        .Q(ticks_reg[7]),
        .R(sel));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[8] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1__0_n_7 ),
        .Q(ticks_reg[8]),
        .R(sel));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[8]_i_1__0 
       (.CI(\ticks_reg[4]_i_1__0_n_0 ),
        .CO({\ticks_reg[8]_i_1__0_n_0 ,\NLW_ticks_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[8]_i_1__0_n_4 ,\ticks_reg[8]_i_1__0_n_5 ,\ticks_reg[8]_i_1__0_n_6 ,\ticks_reg[8]_i_1__0_n_7 }),
        .S(ticks_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[9] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1__0_n_6 ),
        .Q(ticks_reg[9]),
        .R(sel));
endmodule

module seven_seg
   (Q,
    \SS_CATHODE_reg[6]_0 ,
    CLK100_IBUF_BUFG,
    counter_reg);
  output [1:0]Q;
  output [6:0]\SS_CATHODE_reg[6]_0 ;
  input CLK100_IBUF_BUFG;
  input [15:0]counter_reg;

  wire CLK100_IBUF_BUFG;
  wire [1:0]Q;
  wire \SS_ANODE[1]_i_1_n_0 ;
  wire \SS_ANODE[1]_i_2_n_0 ;
  wire \SS_CATHODE[0]_i_1_n_0 ;
  wire \SS_CATHODE[0]_i_2_n_0 ;
  wire \SS_CATHODE[0]_i_3_n_0 ;
  wire \SS_CATHODE[0]_i_4_n_0 ;
  wire \SS_CATHODE[0]_i_5_n_0 ;
  wire \SS_CATHODE[1]_i_1_n_0 ;
  wire \SS_CATHODE[1]_i_2_n_0 ;
  wire \SS_CATHODE[1]_i_3_n_0 ;
  wire \SS_CATHODE[1]_i_4_n_0 ;
  wire \SS_CATHODE[1]_i_5_n_0 ;
  wire \SS_CATHODE[2]_i_1_n_0 ;
  wire \SS_CATHODE[2]_i_2_n_0 ;
  wire \SS_CATHODE[2]_i_3_n_0 ;
  wire \SS_CATHODE[2]_i_4_n_0 ;
  wire \SS_CATHODE[2]_i_5_n_0 ;
  wire \SS_CATHODE[3]_i_1_n_0 ;
  wire \SS_CATHODE[3]_i_2_n_0 ;
  wire \SS_CATHODE[3]_i_3_n_0 ;
  wire \SS_CATHODE[3]_i_4_n_0 ;
  wire \SS_CATHODE[3]_i_5_n_0 ;
  wire \SS_CATHODE[4]_i_1_n_0 ;
  wire \SS_CATHODE[4]_i_2_n_0 ;
  wire \SS_CATHODE[4]_i_3_n_0 ;
  wire \SS_CATHODE[4]_i_4_n_0 ;
  wire \SS_CATHODE[4]_i_5_n_0 ;
  wire \SS_CATHODE[5]_i_1_n_0 ;
  wire \SS_CATHODE[5]_i_2_n_0 ;
  wire \SS_CATHODE[5]_i_3_n_0 ;
  wire \SS_CATHODE[5]_i_4_n_0 ;
  wire \SS_CATHODE[5]_i_5_n_0 ;
  wire \SS_CATHODE[6]_i_1_n_0 ;
  wire \SS_CATHODE[6]_i_2_n_0 ;
  wire \SS_CATHODE[6]_i_3_n_0 ;
  wire \SS_CATHODE[6]_i_4_n_0 ;
  wire \SS_CATHODE[6]_i_5_n_0 ;
  wire [6:0]\SS_CATHODE_reg[6]_0 ;
  wire [15:0]counter_reg;
  wire [1:0]display_idx;
  wire \display_idx[0]_i_1_n_0 ;
  wire \display_idx[1]_i_1_n_0 ;
  wire \display_idx[1]_i_2_n_0 ;
  wire \display_idx[1]_i_3_n_0 ;
  wire \display_idx[1]_i_4_n_0 ;
  wire \display_idx[1]_i_5_n_0 ;
  wire \ticks[0]_i_2_n_0 ;
  wire [18:2]ticks_reg;
  wire \ticks_reg[0]_i_1_n_0 ;
  wire \ticks_reg[0]_i_1_n_4 ;
  wire \ticks_reg[0]_i_1_n_5 ;
  wire \ticks_reg[0]_i_1_n_6 ;
  wire \ticks_reg[0]_i_1_n_7 ;
  wire \ticks_reg[12]_i_1_n_0 ;
  wire \ticks_reg[12]_i_1_n_4 ;
  wire \ticks_reg[12]_i_1_n_5 ;
  wire \ticks_reg[12]_i_1_n_6 ;
  wire \ticks_reg[12]_i_1_n_7 ;
  wire \ticks_reg[16]_i_1_n_5 ;
  wire \ticks_reg[16]_i_1_n_6 ;
  wire \ticks_reg[16]_i_1_n_7 ;
  wire \ticks_reg[4]_i_1_n_0 ;
  wire \ticks_reg[4]_i_1_n_4 ;
  wire \ticks_reg[4]_i_1_n_5 ;
  wire \ticks_reg[4]_i_1_n_6 ;
  wire \ticks_reg[4]_i_1_n_7 ;
  wire \ticks_reg[8]_i_1_n_0 ;
  wire \ticks_reg[8]_i_1_n_4 ;
  wire \ticks_reg[8]_i_1_n_5 ;
  wire \ticks_reg[8]_i_1_n_6 ;
  wire \ticks_reg[8]_i_1_n_7 ;
  wire \ticks_reg_n_0_[0] ;
  wire \ticks_reg_n_0_[1] ;
  wire [2:0]\NLW_ticks_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ticks_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ticks_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_ticks_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hA8AAA8A8A8A8A8A8)) 
    \SS_ANODE[1]_i_1 
       (.I0(ticks_reg[18]),
        .I1(ticks_reg[16]),
        .I2(ticks_reg[17]),
        .I3(\SS_ANODE[1]_i_2_n_0 ),
        .I4(ticks_reg[15]),
        .I5(ticks_reg[14]),
        .O(\SS_ANODE[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000555D)) 
    \SS_ANODE[1]_i_2 
       (.I0(ticks_reg[10]),
        .I1(\display_idx[1]_i_4_n_0 ),
        .I2(ticks_reg[9]),
        .I3(ticks_reg[8]),
        .I4(\display_idx[1]_i_3_n_0 ),
        .O(\SS_ANODE[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SS_ANODE_reg[0] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(display_idx[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SS_ANODE_reg[1] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(display_idx[1]),
        .Q(Q[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SS_CATHODE[0]_i_1 
       (.I0(\SS_CATHODE[0]_i_2_n_0 ),
        .I1(\SS_CATHODE[0]_i_3_n_0 ),
        .I2(\SS_CATHODE[0]_i_4_n_0 ),
        .I3(\SS_CATHODE[0]_i_5_n_0 ),
        .O(\SS_CATHODE[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000D7ED00000000)) 
    \SS_CATHODE[0]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D7ED)) 
    \SS_CATHODE[0]_i_3 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD7ED000000000000)) 
    \SS_CATHODE[0]_i_4 
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[14]),
        .I3(counter_reg[15]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000D7ED00000000)) 
    \SS_CATHODE[0]_i_5 
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .I2(counter_reg[10]),
        .I3(counter_reg[11]),
        .I4(display_idx[0]),
        .I5(display_idx[1]),
        .O(\SS_CATHODE[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SS_CATHODE[1]_i_1 
       (.I0(\SS_CATHODE[1]_i_2_n_0 ),
        .I1(\SS_CATHODE[1]_i_3_n_0 ),
        .I2(\SS_CATHODE[1]_i_4_n_0 ),
        .I3(\SS_CATHODE[1]_i_5_n_0 ),
        .O(\SS_CATHODE[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00001DD700000000)) 
    \SS_CATHODE[1]_i_2 
       (.I0(counter_reg[6]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(counter_reg[7]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001DD7)) 
    \SS_CATHODE[1]_i_3 
       (.I0(counter_reg[2]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[3]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1DD7000000000000)) 
    \SS_CATHODE[1]_i_4 
       (.I0(counter_reg[14]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .I3(counter_reg[15]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00001DD700000000)) 
    \SS_CATHODE[1]_i_5 
       (.I0(counter_reg[10]),
        .I1(counter_reg[8]),
        .I2(counter_reg[9]),
        .I3(counter_reg[11]),
        .I4(display_idx[0]),
        .I5(display_idx[1]),
        .O(\SS_CATHODE[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SS_CATHODE[2]_i_1 
       (.I0(\SS_CATHODE[2]_i_2_n_0 ),
        .I1(\SS_CATHODE[2]_i_3_n_0 ),
        .I2(\SS_CATHODE[2]_i_4_n_0 ),
        .I3(\SS_CATHODE[2]_i_5_n_0 ),
        .O(\SS_CATHODE[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00002FFB00000000)) 
    \SS_CATHODE[2]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002FFB)) 
    \SS_CATHODE[2]_i_3 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2FFB000000000000)) 
    \SS_CATHODE[2]_i_4 
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[14]),
        .I3(counter_reg[15]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00002FFB00000000)) 
    \SS_CATHODE[2]_i_5 
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .I2(counter_reg[10]),
        .I3(counter_reg[11]),
        .I4(display_idx[0]),
        .I5(display_idx[1]),
        .O(\SS_CATHODE[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SS_CATHODE[3]_i_1 
       (.I0(\SS_CATHODE[3]_i_2_n_0 ),
        .I1(\SS_CATHODE[3]_i_3_n_0 ),
        .I2(\SS_CATHODE[3]_i_4_n_0 ),
        .I3(\SS_CATHODE[3]_i_5_n_0 ),
        .O(\SS_CATHODE[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007B6D00000000)) 
    \SS_CATHODE[3]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007B6D)) 
    \SS_CATHODE[3]_i_3 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7B6D000000000000)) 
    \SS_CATHODE[3]_i_4 
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[14]),
        .I3(counter_reg[15]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00007B6D00000000)) 
    \SS_CATHODE[3]_i_5 
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .I2(counter_reg[10]),
        .I3(counter_reg[11]),
        .I4(display_idx[0]),
        .I5(display_idx[1]),
        .O(\SS_CATHODE[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SS_CATHODE[4]_i_1 
       (.I0(\SS_CATHODE[4]_i_2_n_0 ),
        .I1(\SS_CATHODE[4]_i_3_n_0 ),
        .I2(\SS_CATHODE[4]_i_4_n_0 ),
        .I3(\SS_CATHODE[4]_i_5_n_0 ),
        .O(\SS_CATHODE[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FD5100000000)) 
    \SS_CATHODE[4]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[6]),
        .I2(counter_reg[5]),
        .I3(counter_reg[7]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FD51)) 
    \SS_CATHODE[4]_i_3 
       (.I0(counter_reg[0]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .I3(counter_reg[3]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFD51000000000000)) 
    \SS_CATHODE[4]_i_4 
       (.I0(counter_reg[12]),
        .I1(counter_reg[14]),
        .I2(counter_reg[13]),
        .I3(counter_reg[15]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FD5100000000)) 
    \SS_CATHODE[4]_i_5 
       (.I0(counter_reg[8]),
        .I1(counter_reg[10]),
        .I2(counter_reg[9]),
        .I3(counter_reg[11]),
        .I4(display_idx[0]),
        .I5(display_idx[1]),
        .O(\SS_CATHODE[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SS_CATHODE[5]_i_1 
       (.I0(\SS_CATHODE[5]_i_2_n_0 ),
        .I1(\SS_CATHODE[5]_i_3_n_0 ),
        .I2(\SS_CATHODE[5]_i_4_n_0 ),
        .I3(\SS_CATHODE[5]_i_5_n_0 ),
        .O(\SS_CATHODE[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000BF7100000000)) 
    \SS_CATHODE[5]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BF71)) 
    \SS_CATHODE[5]_i_3 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF71000000000000)) 
    \SS_CATHODE[5]_i_4 
       (.I0(counter_reg[13]),
        .I1(counter_reg[12]),
        .I2(counter_reg[14]),
        .I3(counter_reg[15]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000BF7100000000)) 
    \SS_CATHODE[5]_i_5 
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(counter_reg[10]),
        .I3(counter_reg[11]),
        .I4(display_idx[0]),
        .I5(display_idx[1]),
        .O(\SS_CATHODE[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \SS_CATHODE[6]_i_1 
       (.I0(\SS_CATHODE[6]_i_2_n_0 ),
        .I1(\SS_CATHODE[6]_i_3_n_0 ),
        .I2(\SS_CATHODE[6]_i_4_n_0 ),
        .I3(\SS_CATHODE[6]_i_5_n_0 ),
        .O(\SS_CATHODE[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FB6E00000000)) 
    \SS_CATHODE[6]_i_2 
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .I2(counter_reg[4]),
        .I3(counter_reg[7]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB6E)) 
    \SS_CATHODE[6]_i_3 
       (.I0(counter_reg[1]),
        .I1(counter_reg[2]),
        .I2(counter_reg[0]),
        .I3(counter_reg[3]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFB6E000000000000)) 
    \SS_CATHODE[6]_i_4 
       (.I0(counter_reg[13]),
        .I1(counter_reg[14]),
        .I2(counter_reg[12]),
        .I3(counter_reg[15]),
        .I4(display_idx[1]),
        .I5(display_idx[0]),
        .O(\SS_CATHODE[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FB6E00000000)) 
    \SS_CATHODE[6]_i_5 
       (.I0(counter_reg[9]),
        .I1(counter_reg[10]),
        .I2(counter_reg[8]),
        .I3(counter_reg[11]),
        .I4(display_idx[0]),
        .I5(display_idx[1]),
        .O(\SS_CATHODE[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SS_CATHODE_reg[0] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(\SS_CATHODE[0]_i_1_n_0 ),
        .Q(\SS_CATHODE_reg[6]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SS_CATHODE_reg[1] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(\SS_CATHODE[1]_i_1_n_0 ),
        .Q(\SS_CATHODE_reg[6]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SS_CATHODE_reg[2] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(\SS_CATHODE[2]_i_1_n_0 ),
        .Q(\SS_CATHODE_reg[6]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SS_CATHODE_reg[3] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(\SS_CATHODE[3]_i_1_n_0 ),
        .Q(\SS_CATHODE_reg[6]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SS_CATHODE_reg[4] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(\SS_CATHODE[4]_i_1_n_0 ),
        .Q(\SS_CATHODE_reg[6]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SS_CATHODE_reg[5] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(\SS_CATHODE[5]_i_1_n_0 ),
        .Q(\SS_CATHODE_reg[6]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SS_CATHODE_reg[6] 
       (.C(CLK100_IBUF_BUFG),
        .CE(\SS_ANODE[1]_i_1_n_0 ),
        .D(\SS_CATHODE[6]_i_1_n_0 ),
        .Q(\SS_CATHODE_reg[6]_0 [6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \display_idx[0]_i_1 
       (.I0(\display_idx[1]_i_2_n_0 ),
        .I1(ticks_reg[17]),
        .I2(ticks_reg[16]),
        .I3(ticks_reg[18]),
        .I4(display_idx[0]),
        .O(\display_idx[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777F777788808888)) 
    \display_idx[1]_i_1 
       (.I0(display_idx[0]),
        .I1(ticks_reg[18]),
        .I2(ticks_reg[16]),
        .I3(ticks_reg[17]),
        .I4(\display_idx[1]_i_2_n_0 ),
        .I5(display_idx[1]),
        .O(\display_idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01005555FFFFFFFF)) 
    \display_idx[1]_i_2 
       (.I0(\display_idx[1]_i_3_n_0 ),
        .I1(ticks_reg[8]),
        .I2(ticks_reg[9]),
        .I3(\display_idx[1]_i_4_n_0 ),
        .I4(ticks_reg[10]),
        .I5(\display_idx[1]_i_5_n_0 ),
        .O(\display_idx[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \display_idx[1]_i_3 
       (.I0(ticks_reg[11]),
        .I1(ticks_reg[13]),
        .I2(ticks_reg[12]),
        .O(\display_idx[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01555555FFFFFFFF)) 
    \display_idx[1]_i_4 
       (.I0(ticks_reg[6]),
        .I1(ticks_reg[2]),
        .I2(ticks_reg[3]),
        .I3(ticks_reg[5]),
        .I4(ticks_reg[4]),
        .I5(ticks_reg[7]),
        .O(\display_idx[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \display_idx[1]_i_5 
       (.I0(ticks_reg[14]),
        .I1(ticks_reg[15]),
        .O(\display_idx[1]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \display_idx_reg[0] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\display_idx[0]_i_1_n_0 ),
        .Q(display_idx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \display_idx_reg[1] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\display_idx[1]_i_1_n_0 ),
        .Q(display_idx[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ticks[0]_i_2 
       (.I0(\ticks_reg_n_0_[0] ),
        .O(\ticks[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[0] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_1_n_7 ),
        .Q(\ticks_reg_n_0_[0] ),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ticks_reg[0]_i_1_n_0 ,\NLW_ticks_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ticks_reg[0]_i_1_n_4 ,\ticks_reg[0]_i_1_n_5 ,\ticks_reg[0]_i_1_n_6 ,\ticks_reg[0]_i_1_n_7 }),
        .S({ticks_reg[3:2],\ticks_reg_n_0_[1] ,\ticks[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[10] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1_n_5 ),
        .Q(ticks_reg[10]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[11] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1_n_4 ),
        .Q(ticks_reg[11]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[12] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1_n_7 ),
        .Q(ticks_reg[12]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[12]_i_1 
       (.CI(\ticks_reg[8]_i_1_n_0 ),
        .CO({\ticks_reg[12]_i_1_n_0 ,\NLW_ticks_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[12]_i_1_n_4 ,\ticks_reg[12]_i_1_n_5 ,\ticks_reg[12]_i_1_n_6 ,\ticks_reg[12]_i_1_n_7 }),
        .S(ticks_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[13] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1_n_6 ),
        .Q(ticks_reg[13]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[14] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1_n_5 ),
        .Q(ticks_reg[14]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[15] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[12]_i_1_n_4 ),
        .Q(ticks_reg[15]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[16] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1_n_7 ),
        .Q(ticks_reg[16]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[16]_i_1 
       (.CI(\ticks_reg[12]_i_1_n_0 ),
        .CO(\NLW_ticks_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ticks_reg[16]_i_1_O_UNCONNECTED [3],\ticks_reg[16]_i_1_n_5 ,\ticks_reg[16]_i_1_n_6 ,\ticks_reg[16]_i_1_n_7 }),
        .S({1'b0,ticks_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[17] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1_n_6 ),
        .Q(ticks_reg[17]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[18] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[16]_i_1_n_5 ),
        .Q(ticks_reg[18]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[1] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_1_n_6 ),
        .Q(\ticks_reg_n_0_[1] ),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[2] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_1_n_5 ),
        .Q(ticks_reg[2]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[3] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[0]_i_1_n_4 ),
        .Q(ticks_reg[3]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[4] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1_n_7 ),
        .Q(ticks_reg[4]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[4]_i_1 
       (.CI(\ticks_reg[0]_i_1_n_0 ),
        .CO({\ticks_reg[4]_i_1_n_0 ,\NLW_ticks_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[4]_i_1_n_4 ,\ticks_reg[4]_i_1_n_5 ,\ticks_reg[4]_i_1_n_6 ,\ticks_reg[4]_i_1_n_7 }),
        .S(ticks_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[5] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1_n_6 ),
        .Q(ticks_reg[5]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[6] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1_n_5 ),
        .Q(ticks_reg[6]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[7] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[4]_i_1_n_4 ),
        .Q(ticks_reg[7]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[8] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1_n_7 ),
        .Q(ticks_reg[8]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \ticks_reg[8]_i_1 
       (.CI(\ticks_reg[4]_i_1_n_0 ),
        .CO({\ticks_reg[8]_i_1_n_0 ,\NLW_ticks_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ticks_reg[8]_i_1_n_4 ,\ticks_reg[8]_i_1_n_5 ,\ticks_reg[8]_i_1_n_6 ,\ticks_reg[8]_i_1_n_7 }),
        .S(ticks_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \ticks_reg[9] 
       (.C(CLK100_IBUF_BUFG),
        .CE(1'b1),
        .D(\ticks_reg[8]_i_1_n_6 ),
        .Q(ticks_reg[9]),
        .R(\SS_ANODE[1]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
