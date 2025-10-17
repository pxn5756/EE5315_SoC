// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Oct 17 00:21:29 2025
// Host        : Peter-PC_Rig running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/peter/SoC_workspace/i2c/i2c.gen/sources_1/bd/system/ip/system_i2c_0_2/system_i2c_0_2_sim_netlist.v
// Design      : system_i2c_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_i2c_0_2,i2c_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "i2c_v1_0,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module system_i2c_0_2
   (dbg_index,
    tx_status,
    axi_aclk,
    axi_aresetn,
    axi_awaddr,
    axi_awprot,
    axi_awvalid,
    axi_awready,
    axi_wdata,
    axi_wstrb,
    axi_wvalid,
    axi_wready,
    axi_bresp,
    axi_bvalid,
    axi_bready,
    axi_araddr,
    axi_arprot,
    axi_arvalid,
    axi_arready,
    axi_rdata,
    axi_rresp,
    axi_rvalid,
    axi_rready);
  output [7:0]dbg_index;
  output [2:0]tx_status;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_CLK, ASSOCIATED_BUSIF AXI, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWPROT" *) input [2:0]axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWVALID" *) input axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWREADY" *) output axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WDATA" *) input [31:0]axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WSTRB" *) input [3:0]axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WVALID" *) input axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WREADY" *) output axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BRESP" *) output [1:0]axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BVALID" *) output axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BREADY" *) input axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARADDR" *) input [4:0]axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARPROT" *) input [2:0]axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARVALID" *) input axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARREADY" *) output axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RDATA" *) output [31:0]axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RRESP" *) output [1:0]axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RVALID" *) output axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RREADY" *) input axi_rready;

  wire \<const0> ;
  wire axi_aclk;
  wire [4:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [4:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire [7:0]dbg_index;
  wire [2:0]tx_status;

  assign axi_bresp[1] = \<const0> ;
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \<const0> ;
  assign axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_i2c_0_2_i2c_v1_0 inst
       (.axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr[4:2]),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr[4:2]),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rvalid_reg(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wready(axi_wready),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .dbg_index(dbg_index[7:4]),
        .\rd_index_reg[0] (dbg_index[0]),
        .\rd_index_reg[1] (dbg_index[1]),
        .\rd_index_reg[2] (dbg_index[2]),
        .\rd_index_reg[3] (dbg_index[3]),
        .tx_status(tx_status));
endmodule

(* ORIG_REF_NAME = "FIFO" *) 
module system_i2c_0_2_FIFO
   (rd_data,
    Q,
    ADDRC,
    prev_signal,
    tx_status,
    \rd_index_reg[0]_0 ,
    \rd_index_reg[1]_0 ,
    D,
    axi_aclk,
    \axi_rdata[7]_i_2 ,
    wr_request,
    rd_request,
    SR,
    clear_tx_overflow,
    axi_aresetn,
    \rd_index_reg[0]_1 );
  output [7:0]rd_data;
  output [3:0]Q;
  output [3:0]ADDRC;
  output prev_signal;
  output [2:0]tx_status;
  output \rd_index_reg[0]_0 ;
  output \rd_index_reg[1]_0 ;
  output [0:0]D;
  input axi_aclk;
  input [7:0]\axi_rdata[7]_i_2 ;
  input wr_request;
  input rd_request;
  input [0:0]SR;
  input clear_tx_overflow;
  input axi_aresetn;
  input \rd_index_reg[0]_1 ;

  wire [3:0]ADDRC;
  wire [0:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire axi_aclk;
  wire axi_aresetn;
  wire [7:0]\axi_rdata[7]_i_2 ;
  wire clear_tx_overflow;
  wire ed_write_n_0;
  wire ed_write_n_1;
  wire ed_write_n_2;
  wire ed_write_n_3;
  wire overflow_i_2_n_0;
  wire prev_signal;
  wire [7:0]rd_data;
  wire \rd_index[0]_i_1_n_0 ;
  wire \rd_index[1]_i_1_n_0 ;
  wire \rd_index[2]_i_1_n_0 ;
  wire \rd_index[3]_i_2_n_0 ;
  wire \rd_index_reg[0]_0 ;
  wire \rd_index_reg[0]_1 ;
  wire \rd_index_reg[1]_0 ;
  wire rd_request;
  wire [2:0]tx_status;
  wire \wr_index[0]_i_1_n_0 ;
  wire \wr_index[1]_i_1_n_0 ;
  wire \wr_index[2]_i_1_n_0 ;
  wire wr_request;
  wire [1:0]NLW_fifo_buffer_reg_0_15_0_5_DOD_UNCONNECTED;
  wire NLW_fifo_buffer_reg_0_15_6_7_SPO_UNCONNECTED;
  wire NLW_fifo_buffer_reg_0_15_6_7__0_SPO_UNCONNECTED;

  system_i2c_0_2_edgeDetect ed_read
       (.axi_aclk(axi_aclk),
        .prev_signal(prev_signal),
        .rd_request(rd_request));
  system_i2c_0_2_edgeDetect_0 ed_write
       (.D(D),
        .E(ed_write_n_3),
        .Q(Q[0]),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .clear_tx_overflow(clear_tx_overflow),
        .overflow_reg(overflow_i_2_n_0),
        .\rd_index_reg[0] (ed_write_n_1),
        .\rd_index_reg[0]_0 (ADDRC[0]),
        .\rd_index_reg[0]_1 (\rd_index_reg[0]_1 ),
        .\rd_index_reg[0]_2 (\rd_index_reg[1]_0 ),
        .tx_status(tx_status[0]),
        .\wr_index_reg[0] (\rd_index_reg[0]_0 ),
        .\wr_index_reg[0]_0 (ADDRC[3]),
        .wr_request(wr_request),
        .\write_status_reg[3] (ed_write_n_0),
        .\write_status_reg[3]_0 (ed_write_n_2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "system_i2c_0_2/inst/tx_fifo/fifo_buffer_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M fifo_buffer_reg_0_15_0_5
       (.ADDRA({1'b0,ADDRC}),
        .ADDRB({1'b0,ADDRC}),
        .ADDRC({1'b0,ADDRC}),
        .ADDRD({1'b0,Q}),
        .DIA(\axi_rdata[7]_i_2 [1:0]),
        .DIB(\axi_rdata[7]_i_2 [3:2]),
        .DIC(\axi_rdata[7]_i_2 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd_data[1:0]),
        .DOB(rd_data[3:2]),
        .DOC(rd_data[5:4]),
        .DOD(NLW_fifo_buffer_reg_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(axi_aclk),
        .WE(ed_write_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "system_i2c_0_2/inst/tx_fifo/fifo_buffer_reg_0_15_6_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1D fifo_buffer_reg_0_15_6_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\axi_rdata[7]_i_2 [6]),
        .DPO(rd_data[6]),
        .DPRA0(ADDRC[0]),
        .DPRA1(ADDRC[1]),
        .DPRA2(ADDRC[2]),
        .DPRA3(ADDRC[3]),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_buffer_reg_0_15_6_7_SPO_UNCONNECTED),
        .WCLK(axi_aclk),
        .WE(ed_write_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "system_i2c_0_2/inst/tx_fifo/fifo_buffer_reg_0_15_6_7" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D fifo_buffer_reg_0_15_6_7__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(\axi_rdata[7]_i_2 [7]),
        .DPO(rd_data[7]),
        .DPRA0(ADDRC[0]),
        .DPRA1(ADDRC[1]),
        .DPRA2(ADDRC[2]),
        .DPRA3(ADDRC[3]),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_buffer_reg_0_15_6_7__0_SPO_UNCONNECTED),
        .WCLK(axi_aclk),
        .WE(ed_write_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h69999999)) 
    overflow_i_2
       (.I0(ADDRC[3]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(overflow_i_2_n_0));
  FDRE overflow_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(ed_write_n_2),
        .Q(tx_status[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_index[0]_i_1 
       (.I0(ADDRC[0]),
        .O(\rd_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_index[1]_i_1 
       (.I0(ADDRC[0]),
        .I1(ADDRC[1]),
        .O(\rd_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_index[2]_i_1 
       (.I0(ADDRC[1]),
        .I1(ADDRC[0]),
        .I2(ADDRC[2]),
        .O(\rd_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_index[3]_i_2 
       (.I0(ADDRC[2]),
        .I1(ADDRC[0]),
        .I2(ADDRC[1]),
        .I3(ADDRC[3]),
        .O(\rd_index[3]_i_2_n_0 ));
  FDRE \rd_index_reg[0] 
       (.C(axi_aclk),
        .CE(ed_write_n_1),
        .D(\rd_index[0]_i_1_n_0 ),
        .Q(ADDRC[0]),
        .R(SR));
  FDRE \rd_index_reg[1] 
       (.C(axi_aclk),
        .CE(ed_write_n_1),
        .D(\rd_index[1]_i_1_n_0 ),
        .Q(ADDRC[1]),
        .R(SR));
  FDRE \rd_index_reg[2] 
       (.C(axi_aclk),
        .CE(ed_write_n_1),
        .D(\rd_index[2]_i_1_n_0 ),
        .Q(ADDRC[2]),
        .R(SR));
  FDRE \rd_index_reg[3] 
       (.C(axi_aclk),
        .CE(ed_write_n_1),
        .D(\rd_index[3]_i_2_n_0 ),
        .Q(ADDRC[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h2AAA800080002AAA)) 
    \tx_status[1]_INST_0 
       (.I0(\rd_index_reg[0]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(ADDRC[3]),
        .O(tx_status[1]));
  LUT6 #(
    .INIT(64'h0842100010000842)) 
    \tx_status[1]_INST_0_i_1 
       (.I0(ADDRC[0]),
        .I1(ADDRC[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(ADDRC[2]),
        .O(\rd_index_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \tx_status[2]_INST_0 
       (.I0(\rd_index_reg[1]_0 ),
        .I1(Q[0]),
        .I2(ADDRC[0]),
        .O(tx_status[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \tx_status[2]_INST_0_i_1 
       (.I0(ADDRC[1]),
        .I1(Q[1]),
        .I2(ADDRC[3]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(ADDRC[2]),
        .O(\rd_index_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[0]_i_1 
       (.I0(Q[0]),
        .O(\wr_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_index[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\wr_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_index[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\wr_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_index[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(D));
  FDRE \wr_index_reg[0] 
       (.C(axi_aclk),
        .CE(ed_write_n_3),
        .D(\wr_index[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \wr_index_reg[1] 
       (.C(axi_aclk),
        .CE(ed_write_n_3),
        .D(\wr_index[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \wr_index_reg[2] 
       (.C(axi_aclk),
        .CE(ed_write_n_3),
        .D(\wr_index[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \wr_index_reg[3] 
       (.C(axi_aclk),
        .CE(ed_write_n_3),
        .D(D),
        .Q(Q[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "edgeDetect" *) 
module system_i2c_0_2_edgeDetect
   (prev_signal,
    rd_request,
    axi_aclk);
  output prev_signal;
  input rd_request;
  input axi_aclk;

  wire axi_aclk;
  wire prev_signal;
  wire rd_request;

  FDRE prev_signal_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rd_request),
        .Q(prev_signal),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "edgeDetect" *) 
module system_i2c_0_2_edgeDetect_0
   (\write_status_reg[3] ,
    \rd_index_reg[0] ,
    \write_status_reg[3]_0 ,
    E,
    wr_request,
    axi_aclk,
    clear_tx_overflow,
    overflow_reg,
    \wr_index_reg[0] ,
    axi_aresetn,
    \rd_index_reg[0]_0 ,
    Q,
    \rd_index_reg[0]_1 ,
    \rd_index_reg[0]_2 ,
    tx_status,
    D,
    \wr_index_reg[0]_0 );
  output \write_status_reg[3] ;
  output \rd_index_reg[0] ;
  output \write_status_reg[3]_0 ;
  output [0:0]E;
  input wr_request;
  input axi_aclk;
  input clear_tx_overflow;
  input overflow_reg;
  input \wr_index_reg[0] ;
  input axi_aresetn;
  input \rd_index_reg[0]_0 ;
  input [0:0]Q;
  input \rd_index_reg[0]_1 ;
  input \rd_index_reg[0]_2 ;
  input [0:0]tx_status;
  input [0:0]D;
  input \wr_index_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire axi_aclk;
  wire axi_aresetn;
  wire clear_tx_overflow;
  wire overflow_reg;
  wire prev_signal;
  wire \rd_index[3]_i_4_n_0 ;
  wire \rd_index_reg[0] ;
  wire \rd_index_reg[0]_0 ;
  wire \rd_index_reg[0]_1 ;
  wire \rd_index_reg[0]_2 ;
  wire [0:0]tx_status;
  wire \wr_index_reg[0] ;
  wire \wr_index_reg[0]_0 ;
  wire wr_request;
  wire \write_status_reg[3] ;
  wire \write_status_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h0004040400000000)) 
    fifo_buffer_reg_0_15_0_5_i_1
       (.I0(clear_tx_overflow),
        .I1(wr_request),
        .I2(prev_signal),
        .I3(overflow_reg),
        .I4(\wr_index_reg[0] ),
        .I5(axi_aresetn),
        .O(\write_status_reg[3] ));
  LUT6 #(
    .INIT(64'h4040404044404040)) 
    overflow_i_1
       (.I0(clear_tx_overflow),
        .I1(axi_aresetn),
        .I2(tx_status),
        .I3(\wr_index_reg[0] ),
        .I4(overflow_reg),
        .I5(\rd_index[3]_i_4_n_0 ),
        .O(\write_status_reg[3]_0 ));
  FDRE prev_signal_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wr_request),
        .Q(prev_signal),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h60F00000)) 
    \rd_index[3]_i_1 
       (.I0(\rd_index_reg[0]_0 ),
        .I1(Q),
        .I2(\rd_index_reg[0]_1 ),
        .I3(\rd_index_reg[0]_2 ),
        .I4(\rd_index[3]_i_4_n_0 ),
        .O(\rd_index_reg[0] ));
  LUT2 #(
    .INIT(4'hB)) 
    \rd_index[3]_i_4 
       (.I0(prev_signal),
        .I1(wr_request),
        .O(\rd_index[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000007D0000)) 
    \wr_index[3]_i_2 
       (.I0(\wr_index_reg[0] ),
        .I1(D),
        .I2(\wr_index_reg[0]_0 ),
        .I3(prev_signal),
        .I4(wr_request),
        .I5(clear_tx_overflow),
        .O(E));
endmodule

(* ORIG_REF_NAME = "i2c_v1_0" *) 
module system_i2c_0_2_i2c_v1_0
   (dbg_index,
    \rd_index_reg[0] ,
    \rd_index_reg[1] ,
    \rd_index_reg[2] ,
    \rd_index_reg[3] ,
    tx_status,
    axi_wready,
    axi_awready,
    axi_arready,
    axi_rdata,
    axi_rvalid_reg,
    axi_bvalid,
    axi_aclk,
    axi_aresetn,
    axi_araddr,
    axi_arvalid,
    axi_wdata,
    axi_awvalid,
    axi_wvalid,
    axi_awaddr,
    axi_wstrb,
    axi_bready,
    axi_rready);
  output [3:0]dbg_index;
  output \rd_index_reg[0] ;
  output \rd_index_reg[1] ;
  output \rd_index_reg[2] ;
  output \rd_index_reg[3] ;
  output [2:0]tx_status;
  output axi_wready;
  output axi_awready;
  output axi_arready;
  output [31:0]axi_rdata;
  output axi_rvalid_reg;
  output axi_bvalid;
  input axi_aclk;
  input axi_aresetn;
  input [2:0]axi_araddr;
  input axi_arvalid;
  input [31:0]axi_wdata;
  input axi_awvalid;
  input axi_wvalid;
  input [2:0]axi_awaddr;
  input [3:0]axi_wstrb;
  input axi_bready;
  input axi_rready;

  wire axi_aclk;
  wire [2:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [2:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid_reg;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire clear_tx_overflow;
  wire [3:0]dbg_index;
  wire \ed_read/prev_signal ;
  wire i2c_v1_0_AXI_inst_n_1;
  wire i2c_v1_0_AXI_inst_n_9;
  wire [7:0]rd_data;
  wire \rd_index_reg[0] ;
  wire \rd_index_reg[1] ;
  wire \rd_index_reg[2] ;
  wire \rd_index_reg[3] ;
  wire rd_request;
  wire [7:0]tx_data;
  wire tx_fifo_n_20;
  wire tx_fifo_n_21;
  wire tx_fifo_n_22;
  wire [2:0]tx_status;
  wire wr_request;

  system_i2c_0_2_i2c_v1_0_AXI i2c_v1_0_AXI_inst
       (.ADDRC({\rd_index_reg[3] ,\rd_index_reg[2] ,\rd_index_reg[1] ,\rd_index_reg[0] }),
        .D(tx_fifo_n_22),
        .Q(dbg_index),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .axi_aresetn(axi_aresetn),
        .axi_aresetn_0(i2c_v1_0_AXI_inst_n_1),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .\axi_rdata_reg[4]_0 (tx_fifo_n_20),
        .\axi_rdata_reg[5]_0 (tx_fifo_n_21),
        .axi_rready(axi_rready),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wdata(axi_wdata),
        .axi_wready(axi_wready),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .clear_tx_overflow(clear_tx_overflow),
        .prev_signal(\ed_read/prev_signal ),
        .prev_signal_reg(i2c_v1_0_AXI_inst_n_9),
        .rd_data(rd_data),
        .rd_request(rd_request),
        .\tx_data_reg[7]_0 (tx_data),
        .tx_status(tx_status[0]),
        .wr_request(wr_request));
  system_i2c_0_2_FIFO tx_fifo
       (.ADDRC({\rd_index_reg[3] ,\rd_index_reg[2] ,\rd_index_reg[1] ,\rd_index_reg[0] }),
        .D(tx_fifo_n_22),
        .Q(dbg_index),
        .SR(i2c_v1_0_AXI_inst_n_1),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .\axi_rdata[7]_i_2 (tx_data),
        .clear_tx_overflow(clear_tx_overflow),
        .prev_signal(\ed_read/prev_signal ),
        .rd_data(rd_data),
        .\rd_index_reg[0]_0 (tx_fifo_n_20),
        .\rd_index_reg[0]_1 (i2c_v1_0_AXI_inst_n_9),
        .\rd_index_reg[1]_0 (tx_fifo_n_21),
        .rd_request(rd_request),
        .tx_status(tx_status),
        .wr_request(wr_request));
endmodule

(* ORIG_REF_NAME = "i2c_v1_0_AXI" *) 
module system_i2c_0_2_i2c_v1_0_AXI
   (axi_wready,
    axi_aresetn_0,
    axi_awready,
    axi_arready,
    axi_bvalid,
    clear_tx_overflow,
    wr_request,
    axi_rvalid_reg_0,
    rd_request,
    prev_signal_reg,
    \tx_data_reg[7]_0 ,
    axi_rdata,
    axi_aclk,
    axi_aresetn,
    axi_awvalid,
    axi_wvalid,
    axi_awaddr,
    axi_arvalid,
    axi_wstrb,
    ADDRC,
    D,
    \axi_rdata_reg[4]_0 ,
    Q,
    \axi_rdata_reg[5]_0 ,
    tx_status,
    rd_data,
    prev_signal,
    axi_bready,
    axi_wdata,
    axi_rready,
    axi_araddr);
  output axi_wready;
  output axi_aresetn_0;
  output axi_awready;
  output axi_arready;
  output axi_bvalid;
  output clear_tx_overflow;
  output wr_request;
  output axi_rvalid_reg_0;
  output rd_request;
  output prev_signal_reg;
  output [7:0]\tx_data_reg[7]_0 ;
  output [31:0]axi_rdata;
  input axi_aclk;
  input axi_aresetn;
  input axi_awvalid;
  input axi_wvalid;
  input [2:0]axi_awaddr;
  input axi_arvalid;
  input [3:0]axi_wstrb;
  input [3:0]ADDRC;
  input [0:0]D;
  input \axi_rdata_reg[4]_0 ;
  input [3:0]Q;
  input \axi_rdata_reg[5]_0 ;
  input [0:0]tx_status;
  input [7:0]rd_data;
  input prev_signal;
  input axi_bready;
  input [31:0]axi_wdata;
  input axi_rready;
  input [2:0]axi_araddr;

  wire [3:0]ADDRC;
  wire [0:0]D;
  wire [3:0]Q;
  wire [31:0]address;
  wire \address[15]_i_1_n_0 ;
  wire \address[23]_i_1_n_0 ;
  wire \address[31]_i_1_n_0 ;
  wire \address[7]_i_1_n_0 ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_aclk;
  wire [2:0]axi_araddr;
  wire axi_aresetn;
  wire axi_aresetn_0;
  wire axi_arready;
  wire axi_arready0;
  wire axi_arvalid;
  wire [2:0]axi_awaddr;
  wire axi_awready;
  wire axi_awready0;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]axi_rdata;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire [31:0]axi_rdata_0;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[5]_0 ;
  wire axi_rready;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire axi_wready0;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire clear_tx_overflow;
  wire [31:0]control;
  wire \control[15]_i_1_n_0 ;
  wire \control[23]_i_1_n_0 ;
  wire \control[31]_i_1_n_0 ;
  wire \control[7]_i_1_n_0 ;
  wire [2:0]p_0_in;
  wire [7:7]p_1_in;
  wire prev_signal;
  wire prev_signal_reg;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_1_n_0 ;
  wire \raddr[4]_i_1_n_0 ;
  wire [7:0]rd_data;
  wire rd_request;
  wire [31:0]regnum;
  wire \regnum[15]_i_1_n_0 ;
  wire \regnum[23]_i_1_n_0 ;
  wire \regnum[31]_i_1_n_0 ;
  wire \regnum[7]_i_1_n_0 ;
  wire rx_request_i_1_n_0;
  wire rx_request_i_2_n_0;
  wire [7:0]\tx_data_reg[7]_0 ;
  wire tx_request_i_1_n_0;
  wire [0:0]tx_status;
  wire wr;
  wire wr_request;
  wire \write_status[3]_i_1_n_0 ;
  wire \write_status[3]_i_2_n_0 ;

  LUT5 #(
    .INIT(32'h00100000)) 
    \address[15]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(wr),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[1]),
        .O(\address[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \address[23]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(wr),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[2]),
        .O(\address[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \address[31]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(wr),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[3]),
        .O(\address[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \address[31]_i_2 
       (.I0(axi_wready),
        .I1(axi_awready),
        .I2(axi_wvalid),
        .I3(axi_awvalid),
        .O(wr));
  LUT5 #(
    .INIT(32'h00100000)) 
    \address[7]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(wr),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[0]),
        .O(\address[7]_i_1_n_0 ));
  FDRE \address_reg[0] 
       (.C(axi_aclk),
        .CE(\address[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(address[0]),
        .R(axi_aresetn_0));
  FDRE \address_reg[10] 
       (.C(axi_aclk),
        .CE(\address[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(address[10]),
        .R(axi_aresetn_0));
  FDRE \address_reg[11] 
       (.C(axi_aclk),
        .CE(\address[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(address[11]),
        .R(axi_aresetn_0));
  FDRE \address_reg[12] 
       (.C(axi_aclk),
        .CE(\address[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(address[12]),
        .R(axi_aresetn_0));
  FDRE \address_reg[13] 
       (.C(axi_aclk),
        .CE(\address[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(address[13]),
        .R(axi_aresetn_0));
  FDRE \address_reg[14] 
       (.C(axi_aclk),
        .CE(\address[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(address[14]),
        .R(axi_aresetn_0));
  FDRE \address_reg[15] 
       (.C(axi_aclk),
        .CE(\address[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(address[15]),
        .R(axi_aresetn_0));
  FDRE \address_reg[16] 
       (.C(axi_aclk),
        .CE(\address[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(address[16]),
        .R(axi_aresetn_0));
  FDRE \address_reg[17] 
       (.C(axi_aclk),
        .CE(\address[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(address[17]),
        .R(axi_aresetn_0));
  FDRE \address_reg[18] 
       (.C(axi_aclk),
        .CE(\address[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(address[18]),
        .R(axi_aresetn_0));
  FDRE \address_reg[19] 
       (.C(axi_aclk),
        .CE(\address[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(address[19]),
        .R(axi_aresetn_0));
  FDRE \address_reg[1] 
       (.C(axi_aclk),
        .CE(\address[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(address[1]),
        .R(axi_aresetn_0));
  FDRE \address_reg[20] 
       (.C(axi_aclk),
        .CE(\address[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(address[20]),
        .R(axi_aresetn_0));
  FDRE \address_reg[21] 
       (.C(axi_aclk),
        .CE(\address[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(address[21]),
        .R(axi_aresetn_0));
  FDRE \address_reg[22] 
       (.C(axi_aclk),
        .CE(\address[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(address[22]),
        .R(axi_aresetn_0));
  FDRE \address_reg[23] 
       (.C(axi_aclk),
        .CE(\address[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(address[23]),
        .R(axi_aresetn_0));
  FDRE \address_reg[24] 
       (.C(axi_aclk),
        .CE(\address[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(address[24]),
        .R(axi_aresetn_0));
  FDRE \address_reg[25] 
       (.C(axi_aclk),
        .CE(\address[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(address[25]),
        .R(axi_aresetn_0));
  FDRE \address_reg[26] 
       (.C(axi_aclk),
        .CE(\address[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(address[26]),
        .R(axi_aresetn_0));
  FDRE \address_reg[27] 
       (.C(axi_aclk),
        .CE(\address[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(address[27]),
        .R(axi_aresetn_0));
  FDRE \address_reg[28] 
       (.C(axi_aclk),
        .CE(\address[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(address[28]),
        .R(axi_aresetn_0));
  FDRE \address_reg[29] 
       (.C(axi_aclk),
        .CE(\address[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(address[29]),
        .R(axi_aresetn_0));
  FDRE \address_reg[2] 
       (.C(axi_aclk),
        .CE(\address[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(address[2]),
        .R(axi_aresetn_0));
  FDRE \address_reg[30] 
       (.C(axi_aclk),
        .CE(\address[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(address[30]),
        .R(axi_aresetn_0));
  FDRE \address_reg[31] 
       (.C(axi_aclk),
        .CE(\address[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(address[31]),
        .R(axi_aresetn_0));
  FDRE \address_reg[3] 
       (.C(axi_aclk),
        .CE(\address[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(address[3]),
        .R(axi_aresetn_0));
  FDRE \address_reg[4] 
       (.C(axi_aclk),
        .CE(\address[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(address[4]),
        .R(axi_aresetn_0));
  FDRE \address_reg[5] 
       (.C(axi_aclk),
        .CE(\address[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(address[5]),
        .R(axi_aresetn_0));
  FDRE \address_reg[6] 
       (.C(axi_aclk),
        .CE(\address[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(address[6]),
        .R(axi_aresetn_0));
  FDRE \address_reg[7] 
       (.C(axi_aclk),
        .CE(\address[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(address[7]),
        .R(axi_aresetn_0));
  FDRE \address_reg[8] 
       (.C(axi_aclk),
        .CE(\address[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(address[8]),
        .R(axi_aresetn_0));
  FDRE \address_reg[9] 
       (.C(axi_aclk),
        .CE(\address[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(address[9]),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(axi_bvalid),
        .I1(axi_bready),
        .I2(axi_awready),
        .I3(axi_wvalid),
        .I4(axi_awvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axi_arvalid),
        .I1(axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready),
        .R(axi_aresetn_0));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_1
       (.I0(axi_awready),
        .I1(axi_wvalid),
        .I2(axi_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(axi_bready),
        .I1(axi_awvalid),
        .I2(axi_wvalid),
        .I3(axi_wready),
        .I4(axi_awready),
        .I5(axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECC0200)) 
    \axi_rdata[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(regnum[0]),
        .I4(control[0]),
        .I5(\axi_rdata[0]_i_2_n_0 ),
        .O(axi_rdata_0[0]));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \axi_rdata[0]_i_2 
       (.I0(rd_data[0]),
        .I1(address[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F00800)) 
    \axi_rdata[10]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(ADDRC[2]),
        .I4(control[10]),
        .I5(\axi_rdata[10]_i_2_n_0 ),
        .O(axi_rdata_0[10]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[10]_i_2 
       (.I0(regnum[10]),
        .I1(address[10]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F00800)) 
    \axi_rdata[11]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(ADDRC[3]),
        .I4(control[11]),
        .I5(\axi_rdata[11]_i_2_n_0 ),
        .O(axi_rdata_0[11]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[11]_i_2 
       (.I0(regnum[11]),
        .I1(address[11]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F00800)) 
    \axi_rdata[12]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(Q[0]),
        .I4(control[12]),
        .I5(\axi_rdata[12]_i_2_n_0 ),
        .O(axi_rdata_0[12]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[12]_i_2 
       (.I0(regnum[12]),
        .I1(address[12]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F00800)) 
    \axi_rdata[13]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(Q[1]),
        .I4(control[13]),
        .I5(\axi_rdata[13]_i_2_n_0 ),
        .O(axi_rdata_0[13]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[13]_i_2 
       (.I0(regnum[13]),
        .I1(address[13]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F00800)) 
    \axi_rdata[14]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(Q[2]),
        .I4(control[14]),
        .I5(\axi_rdata[14]_i_2_n_0 ),
        .O(axi_rdata_0[14]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[14]_i_2 
       (.I0(regnum[14]),
        .I1(address[14]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F00800)) 
    \axi_rdata[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(Q[3]),
        .I4(control[15]),
        .I5(\axi_rdata[15]_i_2_n_0 ),
        .O(axi_rdata_0[15]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[15]_i_2 
       (.I0(regnum[15]),
        .I1(address[15]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[16]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[16]),
        .I3(regnum[16]),
        .I4(p_0_in[2]),
        .I5(control[16]),
        .O(axi_rdata_0[16]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[17]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[17]),
        .I3(regnum[17]),
        .I4(p_0_in[2]),
        .I5(control[17]),
        .O(axi_rdata_0[17]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[18]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[18]),
        .I3(regnum[18]),
        .I4(p_0_in[2]),
        .I5(control[18]),
        .O(axi_rdata_0[18]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[19]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[19]),
        .I3(regnum[19]),
        .I4(p_0_in[2]),
        .I5(control[19]),
        .O(axi_rdata_0[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECC0200)) 
    \axi_rdata[1]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(regnum[1]),
        .I4(control[1]),
        .I5(\axi_rdata[1]_i_2_n_0 ),
        .O(axi_rdata_0[1]));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \axi_rdata[1]_i_2 
       (.I0(rd_data[1]),
        .I1(address[1]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[20]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[20]),
        .I3(regnum[20]),
        .I4(p_0_in[2]),
        .I5(control[20]),
        .O(axi_rdata_0[20]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[21]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[21]),
        .I3(regnum[21]),
        .I4(p_0_in[2]),
        .I5(control[21]),
        .O(axi_rdata_0[21]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[22]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[22]),
        .I3(regnum[22]),
        .I4(p_0_in[2]),
        .I5(control[22]),
        .O(axi_rdata_0[22]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[23]),
        .I3(regnum[23]),
        .I4(p_0_in[2]),
        .I5(control[23]),
        .O(axi_rdata_0[23]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[24]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[24]),
        .I3(regnum[24]),
        .I4(p_0_in[2]),
        .I5(control[24]),
        .O(axi_rdata_0[24]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[25]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[25]),
        .I3(regnum[25]),
        .I4(p_0_in[2]),
        .I5(control[25]),
        .O(axi_rdata_0[25]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[26]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[26]),
        .I3(regnum[26]),
        .I4(p_0_in[2]),
        .I5(control[26]),
        .O(axi_rdata_0[26]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[27]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[27]),
        .I3(regnum[27]),
        .I4(p_0_in[2]),
        .I5(control[27]),
        .O(axi_rdata_0[27]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[28]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[28]),
        .I3(regnum[28]),
        .I4(p_0_in[2]),
        .I5(control[28]),
        .O(axi_rdata_0[28]));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[29]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[29]),
        .I3(regnum[29]),
        .I4(p_0_in[2]),
        .I5(control[29]),
        .O(axi_rdata_0[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECC0200)) 
    \axi_rdata[2]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(regnum[2]),
        .I4(control[2]),
        .I5(\axi_rdata[2]_i_2_n_0 ),
        .O(axi_rdata_0[2]));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \axi_rdata[2]_i_2 
       (.I0(rd_data[2]),
        .I1(address[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[30]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[30]),
        .I3(regnum[30]),
        .I4(p_0_in[2]),
        .I5(control[30]),
        .O(axi_rdata_0[30]));
  LUT6 #(
    .INIT(64'h001F000000000000)) 
    \axi_rdata[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(axi_rvalid_reg_0),
        .I4(axi_arvalid),
        .I5(axi_arready),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF321000003210)) 
    \axi_rdata[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[31]),
        .I3(regnum[31]),
        .I4(p_0_in[2]),
        .I5(control[31]),
        .O(axi_rdata_0[31]));
  LUT6 #(
    .INIT(64'hAEAEAEAAAAAEAAAA)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(regnum[3]),
        .I5(tx_status),
        .O(axi_rdata_0[3]));
  LUT6 #(
    .INIT(64'hFFFF541000005410)) 
    \axi_rdata[3]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(address[3]),
        .I3(rd_data[3]),
        .I4(p_0_in[2]),
        .I5(control[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8200)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(ADDRC[3]),
        .I2(D),
        .I3(\axi_rdata_reg[4]_0 ),
        .I4(\axi_rdata[4]_i_2_n_0 ),
        .I5(\axi_rdata[4]_i_3_n_0 ),
        .O(axi_rdata_0[4]));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \axi_rdata[4]_i_2 
       (.I0(rd_data[4]),
        .I1(address[4]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA0CAA00)) 
    \axi_rdata[4]_i_3 
       (.I0(control[4]),
        .I1(regnum[4]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8200)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(ADDRC[0]),
        .I2(Q[0]),
        .I3(\axi_rdata_reg[5]_0 ),
        .I4(\axi_rdata[5]_i_3_n_0 ),
        .I5(\axi_rdata[5]_i_4_n_0 ),
        .O(axi_rdata_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[5]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000AC)) 
    \axi_rdata[5]_i_3 
       (.I0(rd_data[5]),
        .I1(address[5]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA0CAA00)) 
    \axi_rdata[5]_i_4 
       (.I0(control[5]),
        .I1(regnum[5]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECC0200)) 
    \axi_rdata[6]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(regnum[6]),
        .I4(control[6]),
        .I5(\axi_rdata[6]_i_2_n_0 ),
        .O(axi_rdata_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000AC)) 
    \axi_rdata[6]_i_2 
       (.I0(rd_data[6]),
        .I1(address[6]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECC0200)) 
    \axi_rdata[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(regnum[7]),
        .I4(control[7]),
        .I5(\axi_rdata[7]_i_2_n_0 ),
        .O(axi_rdata_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000000AC)) 
    \axi_rdata[7]_i_2 
       (.I0(rd_data[7]),
        .I1(address[7]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F00800)) 
    \axi_rdata[8]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(ADDRC[0]),
        .I4(control[8]),
        .I5(\axi_rdata[8]_i_2_n_0 ),
        .O(axi_rdata_0[8]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[8]_i_2 
       (.I0(regnum[8]),
        .I1(address[8]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8F00800)) 
    \axi_rdata[9]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(ADDRC[1]),
        .I4(control[9]),
        .I5(\axi_rdata[9]_i_2_n_0 ),
        .O(axi_rdata_0[9]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \axi_rdata[9]_i_2 
       (.I0(regnum[9]),
        .I1(address[9]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[0]),
        .Q(axi_rdata[0]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[10]),
        .Q(axi_rdata[10]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[11]),
        .Q(axi_rdata[11]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[12]),
        .Q(axi_rdata[12]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[13]),
        .Q(axi_rdata[13]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[14]),
        .Q(axi_rdata[14]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[15]),
        .Q(axi_rdata[15]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[16]),
        .Q(axi_rdata[16]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[17]),
        .Q(axi_rdata[17]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[18]),
        .Q(axi_rdata[18]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[19]),
        .Q(axi_rdata[19]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[1]),
        .Q(axi_rdata[1]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[20]),
        .Q(axi_rdata[20]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[21]),
        .Q(axi_rdata[21]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[22]),
        .Q(axi_rdata[22]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[23]),
        .Q(axi_rdata[23]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[24]),
        .Q(axi_rdata[24]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[25]),
        .Q(axi_rdata[25]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[26]),
        .Q(axi_rdata[26]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[27]),
        .Q(axi_rdata[27]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[28]),
        .Q(axi_rdata[28]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[29]),
        .Q(axi_rdata[29]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[2]),
        .Q(axi_rdata[2]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[30]),
        .Q(axi_rdata[30]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[31]),
        .Q(axi_rdata[31]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[3]),
        .Q(axi_rdata[3]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[4]),
        .Q(axi_rdata[4]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[5]),
        .Q(axi_rdata[5]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[6]),
        .Q(axi_rdata[6]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[7]),
        .Q(axi_rdata[7]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[8]),
        .Q(axi_rdata[8]),
        .R(axi_aresetn_0));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata_0[9]),
        .Q(axi_rdata[9]),
        .R(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h55C0)) 
    axi_rvalid_i_1
       (.I0(axi_rready),
        .I1(axi_arready),
        .I2(axi_arvalid),
        .I3(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(axi_awvalid),
        .I2(axi_wvalid),
        .I3(axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready),
        .R(axi_aresetn_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \control[15]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(wr),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[1]),
        .O(\control[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \control[23]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(wr),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[2]),
        .O(\control[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \control[31]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(wr),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[3]),
        .O(\control[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \control[7]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[1]),
        .I2(wr),
        .I3(axi_awaddr[0]),
        .I4(axi_wstrb[0]),
        .O(\control[7]_i_1_n_0 ));
  FDRE \control_reg[0] 
       (.C(axi_aclk),
        .CE(\control[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(control[0]),
        .R(axi_aresetn_0));
  FDRE \control_reg[10] 
       (.C(axi_aclk),
        .CE(\control[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(control[10]),
        .R(axi_aresetn_0));
  FDRE \control_reg[11] 
       (.C(axi_aclk),
        .CE(\control[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(control[11]),
        .R(axi_aresetn_0));
  FDRE \control_reg[12] 
       (.C(axi_aclk),
        .CE(\control[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(control[12]),
        .R(axi_aresetn_0));
  FDRE \control_reg[13] 
       (.C(axi_aclk),
        .CE(\control[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(control[13]),
        .R(axi_aresetn_0));
  FDRE \control_reg[14] 
       (.C(axi_aclk),
        .CE(\control[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(control[14]),
        .R(axi_aresetn_0));
  FDRE \control_reg[15] 
       (.C(axi_aclk),
        .CE(\control[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(control[15]),
        .R(axi_aresetn_0));
  FDRE \control_reg[16] 
       (.C(axi_aclk),
        .CE(\control[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(control[16]),
        .R(axi_aresetn_0));
  FDRE \control_reg[17] 
       (.C(axi_aclk),
        .CE(\control[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(control[17]),
        .R(axi_aresetn_0));
  FDRE \control_reg[18] 
       (.C(axi_aclk),
        .CE(\control[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(control[18]),
        .R(axi_aresetn_0));
  FDRE \control_reg[19] 
       (.C(axi_aclk),
        .CE(\control[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(control[19]),
        .R(axi_aresetn_0));
  FDRE \control_reg[1] 
       (.C(axi_aclk),
        .CE(\control[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(control[1]),
        .R(axi_aresetn_0));
  FDRE \control_reg[20] 
       (.C(axi_aclk),
        .CE(\control[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(control[20]),
        .R(axi_aresetn_0));
  FDRE \control_reg[21] 
       (.C(axi_aclk),
        .CE(\control[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(control[21]),
        .R(axi_aresetn_0));
  FDRE \control_reg[22] 
       (.C(axi_aclk),
        .CE(\control[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(control[22]),
        .R(axi_aresetn_0));
  FDRE \control_reg[23] 
       (.C(axi_aclk),
        .CE(\control[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(control[23]),
        .R(axi_aresetn_0));
  FDRE \control_reg[24] 
       (.C(axi_aclk),
        .CE(\control[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(control[24]),
        .R(axi_aresetn_0));
  FDRE \control_reg[25] 
       (.C(axi_aclk),
        .CE(\control[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(control[25]),
        .R(axi_aresetn_0));
  FDRE \control_reg[26] 
       (.C(axi_aclk),
        .CE(\control[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(control[26]),
        .R(axi_aresetn_0));
  FDRE \control_reg[27] 
       (.C(axi_aclk),
        .CE(\control[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(control[27]),
        .R(axi_aresetn_0));
  FDRE \control_reg[28] 
       (.C(axi_aclk),
        .CE(\control[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(control[28]),
        .R(axi_aresetn_0));
  FDRE \control_reg[29] 
       (.C(axi_aclk),
        .CE(\control[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(control[29]),
        .R(axi_aresetn_0));
  FDRE \control_reg[2] 
       (.C(axi_aclk),
        .CE(\control[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(control[2]),
        .R(axi_aresetn_0));
  FDRE \control_reg[30] 
       (.C(axi_aclk),
        .CE(\control[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(control[30]),
        .R(axi_aresetn_0));
  FDRE \control_reg[31] 
       (.C(axi_aclk),
        .CE(\control[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(control[31]),
        .R(axi_aresetn_0));
  FDRE \control_reg[3] 
       (.C(axi_aclk),
        .CE(\control[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(control[3]),
        .R(axi_aresetn_0));
  FDRE \control_reg[4] 
       (.C(axi_aclk),
        .CE(\control[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(control[4]),
        .R(axi_aresetn_0));
  FDRE \control_reg[5] 
       (.C(axi_aclk),
        .CE(\control[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(control[5]),
        .R(axi_aresetn_0));
  FDRE \control_reg[6] 
       (.C(axi_aclk),
        .CE(\control[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(control[6]),
        .R(axi_aresetn_0));
  FDRE \control_reg[7] 
       (.C(axi_aclk),
        .CE(\control[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(control[7]),
        .R(axi_aresetn_0));
  FDRE \control_reg[8] 
       (.C(axi_aclk),
        .CE(\control[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(control[8]),
        .R(axi_aresetn_0));
  FDRE \control_reg[9] 
       (.C(axi_aclk),
        .CE(\control[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(control[9]),
        .R(axi_aresetn_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[2]_i_1 
       (.I0(axi_araddr[0]),
        .I1(axi_arvalid),
        .I2(axi_arready),
        .I3(p_0_in[0]),
        .O(\raddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[3]_i_1 
       (.I0(axi_araddr[1]),
        .I1(axi_arvalid),
        .I2(axi_arready),
        .I3(p_0_in[1]),
        .O(\raddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \raddr[4]_i_1 
       (.I0(axi_araddr[2]),
        .I1(axi_arvalid),
        .I2(axi_arready),
        .I3(p_0_in[2]),
        .O(\raddr[4]_i_1_n_0 ));
  FDRE \raddr_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_aresetn_0));
  FDRE \raddr_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_aresetn_0));
  FDRE \raddr_reg[4] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\raddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(axi_aresetn_0));
  LUT3 #(
    .INIT(8'h04)) 
    \rd_index[3]_i_3 
       (.I0(prev_signal),
        .I1(rd_request),
        .I2(clear_tx_overflow),
        .O(prev_signal_reg));
  LUT5 #(
    .INIT(32'h00200000)) 
    \regnum[15]_i_1 
       (.I0(wr),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_wstrb[1]),
        .O(\regnum[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \regnum[23]_i_1 
       (.I0(wr),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_wstrb[2]),
        .O(\regnum[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \regnum[31]_i_1 
       (.I0(wr),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_wstrb[3]),
        .O(\regnum[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \regnum[7]_i_1 
       (.I0(wr),
        .I1(axi_awaddr[1]),
        .I2(axi_awaddr[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_wstrb[0]),
        .O(\regnum[7]_i_1_n_0 ));
  FDRE \regnum_reg[0] 
       (.C(axi_aclk),
        .CE(\regnum[7]_i_1_n_0 ),
        .D(axi_wdata[0]),
        .Q(regnum[0]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[10] 
       (.C(axi_aclk),
        .CE(\regnum[15]_i_1_n_0 ),
        .D(axi_wdata[10]),
        .Q(regnum[10]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[11] 
       (.C(axi_aclk),
        .CE(\regnum[15]_i_1_n_0 ),
        .D(axi_wdata[11]),
        .Q(regnum[11]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[12] 
       (.C(axi_aclk),
        .CE(\regnum[15]_i_1_n_0 ),
        .D(axi_wdata[12]),
        .Q(regnum[12]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[13] 
       (.C(axi_aclk),
        .CE(\regnum[15]_i_1_n_0 ),
        .D(axi_wdata[13]),
        .Q(regnum[13]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[14] 
       (.C(axi_aclk),
        .CE(\regnum[15]_i_1_n_0 ),
        .D(axi_wdata[14]),
        .Q(regnum[14]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[15] 
       (.C(axi_aclk),
        .CE(\regnum[15]_i_1_n_0 ),
        .D(axi_wdata[15]),
        .Q(regnum[15]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[16] 
       (.C(axi_aclk),
        .CE(\regnum[23]_i_1_n_0 ),
        .D(axi_wdata[16]),
        .Q(regnum[16]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[17] 
       (.C(axi_aclk),
        .CE(\regnum[23]_i_1_n_0 ),
        .D(axi_wdata[17]),
        .Q(regnum[17]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[18] 
       (.C(axi_aclk),
        .CE(\regnum[23]_i_1_n_0 ),
        .D(axi_wdata[18]),
        .Q(regnum[18]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[19] 
       (.C(axi_aclk),
        .CE(\regnum[23]_i_1_n_0 ),
        .D(axi_wdata[19]),
        .Q(regnum[19]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[1] 
       (.C(axi_aclk),
        .CE(\regnum[7]_i_1_n_0 ),
        .D(axi_wdata[1]),
        .Q(regnum[1]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[20] 
       (.C(axi_aclk),
        .CE(\regnum[23]_i_1_n_0 ),
        .D(axi_wdata[20]),
        .Q(regnum[20]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[21] 
       (.C(axi_aclk),
        .CE(\regnum[23]_i_1_n_0 ),
        .D(axi_wdata[21]),
        .Q(regnum[21]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[22] 
       (.C(axi_aclk),
        .CE(\regnum[23]_i_1_n_0 ),
        .D(axi_wdata[22]),
        .Q(regnum[22]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[23] 
       (.C(axi_aclk),
        .CE(\regnum[23]_i_1_n_0 ),
        .D(axi_wdata[23]),
        .Q(regnum[23]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[24] 
       (.C(axi_aclk),
        .CE(\regnum[31]_i_1_n_0 ),
        .D(axi_wdata[24]),
        .Q(regnum[24]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[25] 
       (.C(axi_aclk),
        .CE(\regnum[31]_i_1_n_0 ),
        .D(axi_wdata[25]),
        .Q(regnum[25]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[26] 
       (.C(axi_aclk),
        .CE(\regnum[31]_i_1_n_0 ),
        .D(axi_wdata[26]),
        .Q(regnum[26]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[27] 
       (.C(axi_aclk),
        .CE(\regnum[31]_i_1_n_0 ),
        .D(axi_wdata[27]),
        .Q(regnum[27]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[28] 
       (.C(axi_aclk),
        .CE(\regnum[31]_i_1_n_0 ),
        .D(axi_wdata[28]),
        .Q(regnum[28]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[29] 
       (.C(axi_aclk),
        .CE(\regnum[31]_i_1_n_0 ),
        .D(axi_wdata[29]),
        .Q(regnum[29]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[2] 
       (.C(axi_aclk),
        .CE(\regnum[7]_i_1_n_0 ),
        .D(axi_wdata[2]),
        .Q(regnum[2]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[30] 
       (.C(axi_aclk),
        .CE(\regnum[31]_i_1_n_0 ),
        .D(axi_wdata[30]),
        .Q(regnum[30]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[31] 
       (.C(axi_aclk),
        .CE(\regnum[31]_i_1_n_0 ),
        .D(axi_wdata[31]),
        .Q(regnum[31]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[3] 
       (.C(axi_aclk),
        .CE(\regnum[7]_i_1_n_0 ),
        .D(axi_wdata[3]),
        .Q(regnum[3]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[4] 
       (.C(axi_aclk),
        .CE(\regnum[7]_i_1_n_0 ),
        .D(axi_wdata[4]),
        .Q(regnum[4]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[5] 
       (.C(axi_aclk),
        .CE(\regnum[7]_i_1_n_0 ),
        .D(axi_wdata[5]),
        .Q(regnum[5]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[6] 
       (.C(axi_aclk),
        .CE(\regnum[7]_i_1_n_0 ),
        .D(axi_wdata[6]),
        .Q(regnum[6]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[7] 
       (.C(axi_aclk),
        .CE(\regnum[7]_i_1_n_0 ),
        .D(axi_wdata[7]),
        .Q(regnum[7]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[8] 
       (.C(axi_aclk),
        .CE(\regnum[15]_i_1_n_0 ),
        .D(axi_wdata[8]),
        .Q(regnum[8]),
        .R(axi_aresetn_0));
  FDRE \regnum_reg[9] 
       (.C(axi_aclk),
        .CE(\regnum[15]_i_1_n_0 ),
        .D(axi_wdata[9]),
        .Q(regnum[9]),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'h00000000A8000000)) 
    rx_request_i_1
       (.I0(axi_aresetn),
        .I1(rx_request_i_2_n_0),
        .I2(rd_request),
        .I3(axi_arready),
        .I4(axi_arvalid),
        .I5(axi_rvalid_reg_0),
        .O(rx_request_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    rx_request_i_2
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .O(rx_request_i_2_n_0));
  FDRE rx_request_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rx_request_i_1_n_0),
        .Q(rd_request),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \tx_data[7]_i_1 
       (.I0(axi_awaddr[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_wstrb[0]),
        .I3(axi_awaddr[0]),
        .I4(wr),
        .O(p_1_in));
  FDRE \tx_data_reg[0] 
       (.C(axi_aclk),
        .CE(p_1_in),
        .D(axi_wdata[0]),
        .Q(\tx_data_reg[7]_0 [0]),
        .R(axi_aresetn_0));
  FDRE \tx_data_reg[1] 
       (.C(axi_aclk),
        .CE(p_1_in),
        .D(axi_wdata[1]),
        .Q(\tx_data_reg[7]_0 [1]),
        .R(axi_aresetn_0));
  FDRE \tx_data_reg[2] 
       (.C(axi_aclk),
        .CE(p_1_in),
        .D(axi_wdata[2]),
        .Q(\tx_data_reg[7]_0 [2]),
        .R(axi_aresetn_0));
  FDRE \tx_data_reg[3] 
       (.C(axi_aclk),
        .CE(p_1_in),
        .D(axi_wdata[3]),
        .Q(\tx_data_reg[7]_0 [3]),
        .R(axi_aresetn_0));
  FDRE \tx_data_reg[4] 
       (.C(axi_aclk),
        .CE(p_1_in),
        .D(axi_wdata[4]),
        .Q(\tx_data_reg[7]_0 [4]),
        .R(axi_aresetn_0));
  FDRE \tx_data_reg[5] 
       (.C(axi_aclk),
        .CE(p_1_in),
        .D(axi_wdata[5]),
        .Q(\tx_data_reg[7]_0 [5]),
        .R(axi_aresetn_0));
  FDRE \tx_data_reg[6] 
       (.C(axi_aclk),
        .CE(p_1_in),
        .D(axi_wdata[6]),
        .Q(\tx_data_reg[7]_0 [6]),
        .R(axi_aresetn_0));
  FDRE \tx_data_reg[7] 
       (.C(axi_aclk),
        .CE(p_1_in),
        .D(axi_wdata[7]),
        .Q(\tx_data_reg[7]_0 [7]),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAAAA002000000000)) 
    tx_request_i_1
       (.I0(axi_aresetn),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[1]),
        .I3(axi_awaddr[0]),
        .I4(wr_request),
        .I5(wr),
        .O(tx_request_i_1_n_0));
  FDRE tx_request_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(tx_request_i_1_n_0),
        .Q(wr_request),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_index[3]_i_1 
       (.I0(axi_aresetn),
        .O(axi_aresetn_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_status[3]_i_1 
       (.I0(axi_aresetn),
        .I1(\write_status[3]_i_2_n_0 ),
        .I2(axi_awvalid),
        .I3(axi_wvalid),
        .I4(axi_awready),
        .I5(axi_wready),
        .O(\write_status[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \write_status[3]_i_2 
       (.I0(axi_wdata[3]),
        .I1(axi_awaddr[1]),
        .I2(axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[0]),
        .I5(clear_tx_overflow),
        .O(\write_status[3]_i_2_n_0 ));
  FDRE \write_status_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\write_status[3]_i_1_n_0 ),
        .Q(clear_tx_overflow),
        .R(1'b0));
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
