-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Oct 17 00:21:29 2025
-- Host        : Peter-PC_Rig running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/peter/SoC_workspace/i2c/i2c.gen/sources_1/bd/system/ip/system_i2c_0_2/system_i2c_0_2_sim_netlist.vhdl
-- Design      : system_i2c_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2c_0_2_edgeDetect is
  port (
    prev_signal : out STD_LOGIC;
    rd_request : in STD_LOGIC;
    axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_i2c_0_2_edgeDetect : entity is "edgeDetect";
end system_i2c_0_2_edgeDetect;

architecture STRUCTURE of system_i2c_0_2_edgeDetect is
begin
prev_signal_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => rd_request,
      Q => prev_signal,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2c_0_2_edgeDetect_0 is
  port (
    \write_status_reg[3]\ : out STD_LOGIC;
    \rd_index_reg[0]\ : out STD_LOGIC;
    \write_status_reg[3]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_request : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    clear_tx_overflow : in STD_LOGIC;
    overflow_reg : in STD_LOGIC;
    \wr_index_reg[0]\ : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    \rd_index_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rd_index_reg[0]_1\ : in STD_LOGIC;
    \rd_index_reg[0]_2\ : in STD_LOGIC;
    tx_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_index_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_i2c_0_2_edgeDetect_0 : entity is "edgeDetect";
end system_i2c_0_2_edgeDetect_0;

architecture STRUCTURE of system_i2c_0_2_edgeDetect_0 is
  signal prev_signal : STD_LOGIC;
  signal \rd_index[3]_i_4_n_0\ : STD_LOGIC;
begin
fifo_buffer_reg_0_15_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040400000000"
    )
        port map (
      I0 => clear_tx_overflow,
      I1 => wr_request,
      I2 => prev_signal,
      I3 => overflow_reg,
      I4 => \wr_index_reg[0]\,
      I5 => axi_aresetn,
      O => \write_status_reg[3]\
    );
overflow_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404044404040"
    )
        port map (
      I0 => clear_tx_overflow,
      I1 => axi_aresetn,
      I2 => tx_status(0),
      I3 => \wr_index_reg[0]\,
      I4 => overflow_reg,
      I5 => \rd_index[3]_i_4_n_0\,
      O => \write_status_reg[3]_0\
    );
prev_signal_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wr_request,
      Q => prev_signal,
      R => '0'
    );
\rd_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60F00000"
    )
        port map (
      I0 => \rd_index_reg[0]_0\,
      I1 => Q(0),
      I2 => \rd_index_reg[0]_1\,
      I3 => \rd_index_reg[0]_2\,
      I4 => \rd_index[3]_i_4_n_0\,
      O => \rd_index_reg[0]\
    );
\rd_index[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => prev_signal,
      I1 => wr_request,
      O => \rd_index[3]_i_4_n_0\
    );
\wr_index[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007D0000"
    )
        port map (
      I0 => \wr_index_reg[0]\,
      I1 => D(0),
      I2 => \wr_index_reg[0]_0\,
      I3 => prev_signal,
      I4 => wr_request,
      I5 => clear_tx_overflow,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2c_0_2_i2c_v1_0_AXI is
  port (
    axi_wready : out STD_LOGIC;
    axi_aresetn_0 : out STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    clear_tx_overflow : out STD_LOGIC;
    wr_request : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    rd_request : out STD_LOGIC;
    prev_signal_reg : out STD_LOGIC;
    \tx_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRC : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[5]_0\ : in STD_LOGIC;
    tx_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    prev_signal : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rready : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_i2c_0_2_i2c_v1_0_AXI : entity is "i2c_v1_0_AXI";
end system_i2c_0_2_i2c_v1_0_AXI;

architecture STRUCTURE of system_i2c_0_2_i2c_v1_0_AXI is
  signal address : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \address[15]_i_1_n_0\ : STD_LOGIC;
  signal \address[23]_i_1_n_0\ : STD_LOGIC;
  signal \address[31]_i_1_n_0\ : STD_LOGIC;
  signal \address[7]_i_1_n_0\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \^axi_aresetn_0\ : STD_LOGIC;
  signal \^axi_arready\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_awready\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_bvalid\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rdata_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal \^axi_wready\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^clear_tx_overflow\ : STD_LOGIC;
  signal control : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \control[15]_i_1_n_0\ : STD_LOGIC;
  signal \control[23]_i_1_n_0\ : STD_LOGIC;
  signal \control[31]_i_1_n_0\ : STD_LOGIC;
  signal \control[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \raddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \raddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \^rd_request\ : STD_LOGIC;
  signal regnum : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \regnum[15]_i_1_n_0\ : STD_LOGIC;
  signal \regnum[23]_i_1_n_0\ : STD_LOGIC;
  signal \regnum[31]_i_1_n_0\ : STD_LOGIC;
  signal \regnum[7]_i_1_n_0\ : STD_LOGIC;
  signal rx_request_i_1_n_0 : STD_LOGIC;
  signal rx_request_i_2_n_0 : STD_LOGIC;
  signal tx_request_i_1_n_0 : STD_LOGIC;
  signal wr : STD_LOGIC;
  signal \^wr_request\ : STD_LOGIC;
  signal \write_status[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_status[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address[31]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rx_request_i_2 : label is "soft_lutpair1";
begin
  axi_aresetn_0 <= \^axi_aresetn_0\;
  axi_arready <= \^axi_arready\;
  axi_awready <= \^axi_awready\;
  axi_bvalid <= \^axi_bvalid\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready <= \^axi_wready\;
  clear_tx_overflow <= \^clear_tx_overflow\;
  rd_request <= \^rd_request\;
  wr_request <= \^wr_request\;
\address[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => wr,
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(1),
      O => \address[15]_i_1_n_0\
    );
\address[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => wr,
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(2),
      O => \address[23]_i_1_n_0\
    );
\address[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => wr,
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(3),
      O => \address[31]_i_1_n_0\
    );
\address[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready\,
      I1 => \^axi_awready\,
      I2 => axi_wvalid,
      I3 => axi_awvalid,
      O => wr
    );
\address[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => wr,
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(0),
      O => \address[7]_i_1_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[7]_i_1_n_0\,
      D => axi_wdata(0),
      Q => address(0),
      R => \^axi_aresetn_0\
    );
\address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => address(10),
      R => \^axi_aresetn_0\
    );
\address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => address(11),
      R => \^axi_aresetn_0\
    );
\address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => address(12),
      R => \^axi_aresetn_0\
    );
\address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => address(13),
      R => \^axi_aresetn_0\
    );
\address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => address(14),
      R => \^axi_aresetn_0\
    );
\address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => address(15),
      R => \^axi_aresetn_0\
    );
\address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => address(16),
      R => \^axi_aresetn_0\
    );
\address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => address(17),
      R => \^axi_aresetn_0\
    );
\address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => address(18),
      R => \^axi_aresetn_0\
    );
\address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => address(19),
      R => \^axi_aresetn_0\
    );
\address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => address(1),
      R => \^axi_aresetn_0\
    );
\address_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => address(20),
      R => \^axi_aresetn_0\
    );
\address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => address(21),
      R => \^axi_aresetn_0\
    );
\address_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => address(22),
      R => \^axi_aresetn_0\
    );
\address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => address(23),
      R => \^axi_aresetn_0\
    );
\address_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => address(24),
      R => \^axi_aresetn_0\
    );
\address_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => address(25),
      R => \^axi_aresetn_0\
    );
\address_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => address(26),
      R => \^axi_aresetn_0\
    );
\address_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => address(27),
      R => \^axi_aresetn_0\
    );
\address_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => address(28),
      R => \^axi_aresetn_0\
    );
\address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => address(29),
      R => \^axi_aresetn_0\
    );
\address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => address(2),
      R => \^axi_aresetn_0\
    );
\address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => address(30),
      R => \^axi_aresetn_0\
    );
\address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => address(31),
      R => \^axi_aresetn_0\
    );
\address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => address(3),
      R => \^axi_aresetn_0\
    );
\address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => address(4),
      R => \^axi_aresetn_0\
    );
\address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => address(5),
      R => \^axi_aresetn_0\
    );
\address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => address(6),
      R => \^axi_aresetn_0\
    );
\address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => address(7),
      R => \^axi_aresetn_0\
    );
\address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => address(8),
      R => \^axi_aresetn_0\
    );
\address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \address[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => address(9),
      R => \^axi_aresetn_0\
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF88888888"
    )
        port map (
      I0 => \^axi_bvalid\,
      I1 => axi_bready,
      I2 => \^axi_awready\,
      I3 => axi_wvalid,
      I4 => axi_awvalid,
      I5 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^axi_aresetn_0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_arvalid,
      I1 => \^axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready\,
      R => \^axi_aresetn_0\
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_awready\,
      I1 => axi_wvalid,
      I2 => axi_awvalid,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready\,
      R => \^axi_aresetn_0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => axi_bready,
      I1 => axi_awvalid,
      I2 => axi_wvalid,
      I3 => \^axi_wready\,
      I4 => \^axi_awready\,
      I5 => \^axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid\,
      R => \^axi_aresetn_0\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCECC0200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => regnum(0),
      I4 => control(0),
      I5 => \axi_rdata[0]_i_2_n_0\,
      O => axi_rdata_0(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AC"
    )
        port map (
      I0 => rd_data(0),
      I1 => address(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F00800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => ADDRC(2),
      I4 => control(10),
      I5 => \axi_rdata[10]_i_2_n_0\,
      O => axi_rdata_0(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => regnum(10),
      I1 => address(10),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F00800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => ADDRC(3),
      I4 => control(11),
      I5 => \axi_rdata[11]_i_2_n_0\,
      O => axi_rdata_0(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => regnum(11),
      I1 => address(11),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F00800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => Q(0),
      I4 => control(12),
      I5 => \axi_rdata[12]_i_2_n_0\,
      O => axi_rdata_0(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => regnum(12),
      I1 => address(12),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F00800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => Q(1),
      I4 => control(13),
      I5 => \axi_rdata[13]_i_2_n_0\,
      O => axi_rdata_0(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => regnum(13),
      I1 => address(13),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F00800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => Q(2),
      I4 => control(14),
      I5 => \axi_rdata[14]_i_2_n_0\,
      O => axi_rdata_0(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => regnum(14),
      I1 => address(14),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F00800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => Q(3),
      I4 => control(15),
      I5 => \axi_rdata[15]_i_2_n_0\,
      O => axi_rdata_0(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => regnum(15),
      I1 => address(15),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(16),
      I3 => regnum(16),
      I4 => p_0_in(2),
      I5 => control(16),
      O => axi_rdata_0(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(17),
      I3 => regnum(17),
      I4 => p_0_in(2),
      I5 => control(17),
      O => axi_rdata_0(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(18),
      I3 => regnum(18),
      I4 => p_0_in(2),
      I5 => control(18),
      O => axi_rdata_0(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(19),
      I3 => regnum(19),
      I4 => p_0_in(2),
      I5 => control(19),
      O => axi_rdata_0(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCECC0200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => regnum(1),
      I4 => control(1),
      I5 => \axi_rdata[1]_i_2_n_0\,
      O => axi_rdata_0(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AC"
    )
        port map (
      I0 => rd_data(1),
      I1 => address(1),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(20),
      I3 => regnum(20),
      I4 => p_0_in(2),
      I5 => control(20),
      O => axi_rdata_0(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(21),
      I3 => regnum(21),
      I4 => p_0_in(2),
      I5 => control(21),
      O => axi_rdata_0(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(22),
      I3 => regnum(22),
      I4 => p_0_in(2),
      I5 => control(22),
      O => axi_rdata_0(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(23),
      I3 => regnum(23),
      I4 => p_0_in(2),
      I5 => control(23),
      O => axi_rdata_0(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(24),
      I3 => regnum(24),
      I4 => p_0_in(2),
      I5 => control(24),
      O => axi_rdata_0(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(25),
      I3 => regnum(25),
      I4 => p_0_in(2),
      I5 => control(25),
      O => axi_rdata_0(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(26),
      I3 => regnum(26),
      I4 => p_0_in(2),
      I5 => control(26),
      O => axi_rdata_0(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(27),
      I3 => regnum(27),
      I4 => p_0_in(2),
      I5 => control(27),
      O => axi_rdata_0(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(28),
      I3 => regnum(28),
      I4 => p_0_in(2),
      I5 => control(28),
      O => axi_rdata_0(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(29),
      I3 => regnum(29),
      I4 => p_0_in(2),
      I5 => control(29),
      O => axi_rdata_0(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCECC0200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => regnum(2),
      I4 => control(2),
      I5 => \axi_rdata[2]_i_2_n_0\,
      O => axi_rdata_0(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AC"
    )
        port map (
      I0 => rd_data(2),
      I1 => address(2),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(30),
      I3 => regnum(30),
      I4 => p_0_in(2),
      I5 => control(30),
      O => axi_rdata_0(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001F000000000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \^axi_rvalid_reg_0\,
      I4 => axi_arvalid,
      I5 => \^axi_arready\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF321000003210"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(31),
      I3 => regnum(31),
      I4 => p_0_in(2),
      I5 => control(31),
      O => axi_rdata_0(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAAAAAEAAAA"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => regnum(3),
      I5 => tx_status(0),
      O => axi_rdata_0(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF541000005410"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => address(3),
      I3 => rd_data(3),
      I4 => p_0_in(2),
      I5 => control(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8200"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => ADDRC(3),
      I2 => D(0),
      I3 => \axi_rdata_reg[4]_0\,
      I4 => \axi_rdata[4]_i_2_n_0\,
      I5 => \axi_rdata[4]_i_3_n_0\,
      O => axi_rdata_0(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AC"
    )
        port map (
      I0 => rd_data(4),
      I1 => address(4),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA0CAA00"
    )
        port map (
      I0 => control(4),
      I1 => regnum(4),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8200"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => ADDRC(0),
      I2 => Q(0),
      I3 => \axi_rdata_reg[5]_0\,
      I4 => \axi_rdata[5]_i_3_n_0\,
      I5 => \axi_rdata[5]_i_4_n_0\,
      O => axi_rdata_0(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AC"
    )
        port map (
      I0 => rd_data(5),
      I1 => address(5),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA0CAA00"
    )
        port map (
      I0 => control(5),
      I1 => regnum(5),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCECC0200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => regnum(6),
      I4 => control(6),
      I5 => \axi_rdata[6]_i_2_n_0\,
      O => axi_rdata_0(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AC"
    )
        port map (
      I0 => rd_data(6),
      I1 => address(6),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCECC0200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => regnum(7),
      I4 => control(7),
      I5 => \axi_rdata[7]_i_2_n_0\,
      O => axi_rdata_0(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AC"
    )
        port map (
      I0 => rd_data(7),
      I1 => address(7),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F00800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => ADDRC(0),
      I4 => control(8),
      I5 => \axi_rdata[8]_i_2_n_0\,
      O => axi_rdata_0(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => regnum(8),
      I1 => address(8),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F00800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => ADDRC(1),
      I4 => control(9),
      I5 => \axi_rdata[9]_i_2_n_0\,
      O => axi_rdata_0(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => regnum(9),
      I1 => address(9),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(0),
      Q => axi_rdata(0),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(10),
      Q => axi_rdata(10),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(11),
      Q => axi_rdata(11),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(12),
      Q => axi_rdata(12),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(13),
      Q => axi_rdata(13),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(14),
      Q => axi_rdata(14),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(15),
      Q => axi_rdata(15),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(16),
      Q => axi_rdata(16),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(17),
      Q => axi_rdata(17),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(18),
      Q => axi_rdata(18),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(19),
      Q => axi_rdata(19),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(1),
      Q => axi_rdata(1),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(20),
      Q => axi_rdata(20),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(21),
      Q => axi_rdata(21),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(22),
      Q => axi_rdata(22),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(23),
      Q => axi_rdata(23),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(24),
      Q => axi_rdata(24),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(25),
      Q => axi_rdata(25),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(26),
      Q => axi_rdata(26),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(27),
      Q => axi_rdata(27),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(28),
      Q => axi_rdata(28),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(29),
      Q => axi_rdata(29),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(2),
      Q => axi_rdata(2),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(30),
      Q => axi_rdata(30),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(31),
      Q => axi_rdata(31),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(3),
      Q => axi_rdata(3),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(4),
      Q => axi_rdata(4),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(5),
      Q => axi_rdata(5),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(6),
      Q => axi_rdata(6),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(7),
      Q => axi_rdata(7),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(8),
      Q => axi_rdata(8),
      R => \^axi_aresetn_0\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata_0(9),
      Q => axi_rdata(9),
      R => \^axi_aresetn_0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55C0"
    )
        port map (
      I0 => axi_rready,
      I1 => \^axi_arready\,
      I2 => axi_arvalid,
      I3 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => \^axi_aresetn_0\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => axi_awvalid,
      I2 => axi_wvalid,
      I3 => \^axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready\,
      R => \^axi_aresetn_0\
    );
\control[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => wr,
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(1),
      O => \control[15]_i_1_n_0\
    );
\control[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => wr,
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(2),
      O => \control[23]_i_1_n_0\
    );
\control[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => wr,
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(3),
      O => \control[31]_i_1_n_0\
    );
\control[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(1),
      I2 => wr,
      I3 => axi_awaddr(0),
      I4 => axi_wstrb(0),
      O => \control[7]_i_1_n_0\
    );
\control_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[7]_i_1_n_0\,
      D => axi_wdata(0),
      Q => control(0),
      R => \^axi_aresetn_0\
    );
\control_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => control(10),
      R => \^axi_aresetn_0\
    );
\control_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => control(11),
      R => \^axi_aresetn_0\
    );
\control_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => control(12),
      R => \^axi_aresetn_0\
    );
\control_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => control(13),
      R => \^axi_aresetn_0\
    );
\control_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => control(14),
      R => \^axi_aresetn_0\
    );
\control_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => control(15),
      R => \^axi_aresetn_0\
    );
\control_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => control(16),
      R => \^axi_aresetn_0\
    );
\control_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => control(17),
      R => \^axi_aresetn_0\
    );
\control_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => control(18),
      R => \^axi_aresetn_0\
    );
\control_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => control(19),
      R => \^axi_aresetn_0\
    );
\control_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => control(1),
      R => \^axi_aresetn_0\
    );
\control_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => control(20),
      R => \^axi_aresetn_0\
    );
\control_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => control(21),
      R => \^axi_aresetn_0\
    );
\control_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => control(22),
      R => \^axi_aresetn_0\
    );
\control_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => control(23),
      R => \^axi_aresetn_0\
    );
\control_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => control(24),
      R => \^axi_aresetn_0\
    );
\control_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => control(25),
      R => \^axi_aresetn_0\
    );
\control_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => control(26),
      R => \^axi_aresetn_0\
    );
\control_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => control(27),
      R => \^axi_aresetn_0\
    );
\control_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => control(28),
      R => \^axi_aresetn_0\
    );
\control_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => control(29),
      R => \^axi_aresetn_0\
    );
\control_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => control(2),
      R => \^axi_aresetn_0\
    );
\control_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => control(30),
      R => \^axi_aresetn_0\
    );
\control_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => control(31),
      R => \^axi_aresetn_0\
    );
\control_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => control(3),
      R => \^axi_aresetn_0\
    );
\control_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => control(4),
      R => \^axi_aresetn_0\
    );
\control_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => control(5),
      R => \^axi_aresetn_0\
    );
\control_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => control(6),
      R => \^axi_aresetn_0\
    );
\control_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => control(7),
      R => \^axi_aresetn_0\
    );
\control_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => control(8),
      R => \^axi_aresetn_0\
    );
\control_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \control[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => control(9),
      R => \^axi_aresetn_0\
    );
\raddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_araddr(0),
      I1 => axi_arvalid,
      I2 => \^axi_arready\,
      I3 => p_0_in(0),
      O => \raddr[2]_i_1_n_0\
    );
\raddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_araddr(1),
      I1 => axi_arvalid,
      I2 => \^axi_arready\,
      I3 => p_0_in(1),
      O => \raddr[3]_i_1_n_0\
    );
\raddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => axi_arvalid,
      I2 => \^axi_arready\,
      I3 => p_0_in(2),
      O => \raddr[4]_i_1_n_0\
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => \^axi_aresetn_0\
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \^axi_aresetn_0\
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \raddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => \^axi_aresetn_0\
    );
\rd_index[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => prev_signal,
      I1 => \^rd_request\,
      I2 => \^clear_tx_overflow\,
      O => prev_signal_reg
    );
\regnum[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => wr,
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(2),
      I4 => axi_wstrb(1),
      O => \regnum[15]_i_1_n_0\
    );
\regnum[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => wr,
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(2),
      I4 => axi_wstrb(2),
      O => \regnum[23]_i_1_n_0\
    );
\regnum[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => wr,
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(2),
      I4 => axi_wstrb(3),
      O => \regnum[31]_i_1_n_0\
    );
\regnum[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => wr,
      I1 => axi_awaddr(1),
      I2 => axi_awaddr(0),
      I3 => axi_awaddr(2),
      I4 => axi_wstrb(0),
      O => \regnum[7]_i_1_n_0\
    );
\regnum_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[7]_i_1_n_0\,
      D => axi_wdata(0),
      Q => regnum(0),
      R => \^axi_aresetn_0\
    );
\regnum_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[15]_i_1_n_0\,
      D => axi_wdata(10),
      Q => regnum(10),
      R => \^axi_aresetn_0\
    );
\regnum_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[15]_i_1_n_0\,
      D => axi_wdata(11),
      Q => regnum(11),
      R => \^axi_aresetn_0\
    );
\regnum_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[15]_i_1_n_0\,
      D => axi_wdata(12),
      Q => regnum(12),
      R => \^axi_aresetn_0\
    );
\regnum_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[15]_i_1_n_0\,
      D => axi_wdata(13),
      Q => regnum(13),
      R => \^axi_aresetn_0\
    );
\regnum_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[15]_i_1_n_0\,
      D => axi_wdata(14),
      Q => regnum(14),
      R => \^axi_aresetn_0\
    );
\regnum_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[15]_i_1_n_0\,
      D => axi_wdata(15),
      Q => regnum(15),
      R => \^axi_aresetn_0\
    );
\regnum_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[23]_i_1_n_0\,
      D => axi_wdata(16),
      Q => regnum(16),
      R => \^axi_aresetn_0\
    );
\regnum_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[23]_i_1_n_0\,
      D => axi_wdata(17),
      Q => regnum(17),
      R => \^axi_aresetn_0\
    );
\regnum_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[23]_i_1_n_0\,
      D => axi_wdata(18),
      Q => regnum(18),
      R => \^axi_aresetn_0\
    );
\regnum_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[23]_i_1_n_0\,
      D => axi_wdata(19),
      Q => regnum(19),
      R => \^axi_aresetn_0\
    );
\regnum_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[7]_i_1_n_0\,
      D => axi_wdata(1),
      Q => regnum(1),
      R => \^axi_aresetn_0\
    );
\regnum_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[23]_i_1_n_0\,
      D => axi_wdata(20),
      Q => regnum(20),
      R => \^axi_aresetn_0\
    );
\regnum_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[23]_i_1_n_0\,
      D => axi_wdata(21),
      Q => regnum(21),
      R => \^axi_aresetn_0\
    );
\regnum_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[23]_i_1_n_0\,
      D => axi_wdata(22),
      Q => regnum(22),
      R => \^axi_aresetn_0\
    );
\regnum_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[23]_i_1_n_0\,
      D => axi_wdata(23),
      Q => regnum(23),
      R => \^axi_aresetn_0\
    );
\regnum_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[31]_i_1_n_0\,
      D => axi_wdata(24),
      Q => regnum(24),
      R => \^axi_aresetn_0\
    );
\regnum_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[31]_i_1_n_0\,
      D => axi_wdata(25),
      Q => regnum(25),
      R => \^axi_aresetn_0\
    );
\regnum_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[31]_i_1_n_0\,
      D => axi_wdata(26),
      Q => regnum(26),
      R => \^axi_aresetn_0\
    );
\regnum_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[31]_i_1_n_0\,
      D => axi_wdata(27),
      Q => regnum(27),
      R => \^axi_aresetn_0\
    );
\regnum_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[31]_i_1_n_0\,
      D => axi_wdata(28),
      Q => regnum(28),
      R => \^axi_aresetn_0\
    );
\regnum_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[31]_i_1_n_0\,
      D => axi_wdata(29),
      Q => regnum(29),
      R => \^axi_aresetn_0\
    );
\regnum_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[7]_i_1_n_0\,
      D => axi_wdata(2),
      Q => regnum(2),
      R => \^axi_aresetn_0\
    );
\regnum_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[31]_i_1_n_0\,
      D => axi_wdata(30),
      Q => regnum(30),
      R => \^axi_aresetn_0\
    );
\regnum_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[31]_i_1_n_0\,
      D => axi_wdata(31),
      Q => regnum(31),
      R => \^axi_aresetn_0\
    );
\regnum_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[7]_i_1_n_0\,
      D => axi_wdata(3),
      Q => regnum(3),
      R => \^axi_aresetn_0\
    );
\regnum_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[7]_i_1_n_0\,
      D => axi_wdata(4),
      Q => regnum(4),
      R => \^axi_aresetn_0\
    );
\regnum_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[7]_i_1_n_0\,
      D => axi_wdata(5),
      Q => regnum(5),
      R => \^axi_aresetn_0\
    );
\regnum_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[7]_i_1_n_0\,
      D => axi_wdata(6),
      Q => regnum(6),
      R => \^axi_aresetn_0\
    );
\regnum_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[7]_i_1_n_0\,
      D => axi_wdata(7),
      Q => regnum(7),
      R => \^axi_aresetn_0\
    );
\regnum_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[15]_i_1_n_0\,
      D => axi_wdata(8),
      Q => regnum(8),
      R => \^axi_aresetn_0\
    );
\regnum_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \regnum[15]_i_1_n_0\,
      D => axi_wdata(9),
      Q => regnum(9),
      R => \^axi_aresetn_0\
    );
rx_request_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8000000"
    )
        port map (
      I0 => axi_aresetn,
      I1 => rx_request_i_2_n_0,
      I2 => \^rd_request\,
      I3 => \^axi_arready\,
      I4 => axi_arvalid,
      I5 => \^axi_rvalid_reg_0\,
      O => rx_request_i_1_n_0
    );
rx_request_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      O => rx_request_i_2_n_0
    );
rx_request_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => rx_request_i_1_n_0,
      Q => \^rd_request\,
      R => '0'
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => axi_awaddr(1),
      I1 => axi_awaddr(2),
      I2 => axi_wstrb(0),
      I3 => axi_awaddr(0),
      I4 => wr,
      O => p_1_in(7)
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(0),
      Q => \tx_data_reg[7]_0\(0),
      R => \^axi_aresetn_0\
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(1),
      Q => \tx_data_reg[7]_0\(1),
      R => \^axi_aresetn_0\
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(2),
      Q => \tx_data_reg[7]_0\(2),
      R => \^axi_aresetn_0\
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(3),
      Q => \tx_data_reg[7]_0\(3),
      R => \^axi_aresetn_0\
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(4),
      Q => \tx_data_reg[7]_0\(4),
      R => \^axi_aresetn_0\
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(5),
      Q => \tx_data_reg[7]_0\(5),
      R => \^axi_aresetn_0\
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(6),
      Q => \tx_data_reg[7]_0\(6),
      R => \^axi_aresetn_0\
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(7),
      Q => \tx_data_reg[7]_0\(7),
      R => \^axi_aresetn_0\
    );
tx_request_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA002000000000"
    )
        port map (
      I0 => axi_aresetn,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(1),
      I3 => axi_awaddr(0),
      I4 => \^wr_request\,
      I5 => wr,
      O => tx_request_i_1_n_0
    );
tx_request_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => tx_request_i_1_n_0,
      Q => \^wr_request\,
      R => '0'
    );
\wr_index[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => \^axi_aresetn_0\
    );
\write_status[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axi_aresetn,
      I1 => \write_status[3]_i_2_n_0\,
      I2 => axi_awvalid,
      I3 => axi_wvalid,
      I4 => \^axi_awready\,
      I5 => \^axi_wready\,
      O => \write_status[3]_i_1_n_0\
    );
\write_status[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => axi_wdata(3),
      I1 => axi_awaddr(1),
      I2 => axi_wstrb(0),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(0),
      I5 => \^clear_tx_overflow\,
      O => \write_status[3]_i_2_n_0\
    );
\write_status_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \write_status[3]_i_1_n_0\,
      Q => \^clear_tx_overflow\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2c_0_2_FIFO is
  port (
    rd_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRC : out STD_LOGIC_VECTOR ( 3 downto 0 );
    prev_signal : out STD_LOGIC;
    tx_status : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \rd_index_reg[0]_0\ : out STD_LOGIC;
    \rd_index_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_aclk : in STD_LOGIC;
    \axi_rdata[7]_i_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_request : in STD_LOGIC;
    rd_request : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clear_tx_overflow : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    \rd_index_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_i2c_0_2_FIFO : entity is "FIFO";
end system_i2c_0_2_FIFO;

architecture STRUCTURE of system_i2c_0_2_FIFO is
  signal \^addrc\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ed_write_n_0 : STD_LOGIC;
  signal ed_write_n_1 : STD_LOGIC;
  signal ed_write_n_2 : STD_LOGIC;
  signal ed_write_n_3 : STD_LOGIC;
  signal overflow_i_2_n_0 : STD_LOGIC;
  signal \rd_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \rd_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \rd_index[3]_i_2_n_0\ : STD_LOGIC;
  signal \^rd_index_reg[0]_0\ : STD_LOGIC;
  signal \^rd_index_reg[1]_0\ : STD_LOGIC;
  signal \^tx_status\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wr_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_index[2]_i_1_n_0\ : STD_LOGIC;
  signal NLW_fifo_buffer_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_buffer_reg_0_15_6_7_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_fifo_buffer_reg_0_15_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_buffer_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_buffer_reg_0_15_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_buffer_reg_0_15_0_5 : label is "system_i2c_0_2/inst/tx_fifo/fifo_buffer_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of fifo_buffer_reg_0_15_0_5 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of fifo_buffer_reg_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_buffer_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_buffer_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of fifo_buffer_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_buffer_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_buffer_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of fifo_buffer_reg_0_15_6_7 : label is "";
  attribute RTL_RAM_BITS of fifo_buffer_reg_0_15_6_7 : label is 128;
  attribute RTL_RAM_NAME of fifo_buffer_reg_0_15_6_7 : label is "system_i2c_0_2/inst/tx_fifo/fifo_buffer_reg_0_15_6_7";
  attribute RTL_RAM_STYLE of fifo_buffer_reg_0_15_6_7 : label is "NONE";
  attribute RTL_RAM_TYPE of fifo_buffer_reg_0_15_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of fifo_buffer_reg_0_15_6_7 : label is 0;
  attribute ram_addr_end of fifo_buffer_reg_0_15_6_7 : label is 15;
  attribute ram_offset of fifo_buffer_reg_0_15_6_7 : label is 0;
  attribute ram_slice_begin of fifo_buffer_reg_0_15_6_7 : label is 6;
  attribute ram_slice_end of fifo_buffer_reg_0_15_6_7 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of \fifo_buffer_reg_0_15_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \fifo_buffer_reg_0_15_6_7__0\ : label is 128;
  attribute RTL_RAM_NAME of \fifo_buffer_reg_0_15_6_7__0\ : label is "system_i2c_0_2/inst/tx_fifo/fifo_buffer_reg_0_15_6_7";
  attribute RTL_RAM_STYLE of \fifo_buffer_reg_0_15_6_7__0\ : label is "NONE";
  attribute RTL_RAM_TYPE of \fifo_buffer_reg_0_15_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \fifo_buffer_reg_0_15_6_7__0\ : label is 0;
  attribute ram_addr_end of \fifo_buffer_reg_0_15_6_7__0\ : label is 15;
  attribute ram_offset of \fifo_buffer_reg_0_15_6_7__0\ : label is 0;
  attribute ram_slice_begin of \fifo_buffer_reg_0_15_6_7__0\ : label is 7;
  attribute ram_slice_end of \fifo_buffer_reg_0_15_6_7__0\ : label is 7;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of overflow_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_index[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rd_index[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rd_index[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_index[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_status[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_index[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_index[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_index[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_index[3]_i_3\ : label is "soft_lutpair4";
begin
  ADDRC(3 downto 0) <= \^addrc\(3 downto 0);
  D(0) <= \^d\(0);
  Q(3 downto 0) <= \^q\(3 downto 0);
  \rd_index_reg[0]_0\ <= \^rd_index_reg[0]_0\;
  \rd_index_reg[1]_0\ <= \^rd_index_reg[1]_0\;
  tx_status(2 downto 0) <= \^tx_status\(2 downto 0);
ed_read: entity work.system_i2c_0_2_edgeDetect
     port map (
      axi_aclk => axi_aclk,
      prev_signal => prev_signal,
      rd_request => rd_request
    );
ed_write: entity work.system_i2c_0_2_edgeDetect_0
     port map (
      D(0) => \^d\(0),
      E(0) => ed_write_n_3,
      Q(0) => \^q\(0),
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      clear_tx_overflow => clear_tx_overflow,
      overflow_reg => overflow_i_2_n_0,
      \rd_index_reg[0]\ => ed_write_n_1,
      \rd_index_reg[0]_0\ => \^addrc\(0),
      \rd_index_reg[0]_1\ => \rd_index_reg[0]_1\,
      \rd_index_reg[0]_2\ => \^rd_index_reg[1]_0\,
      tx_status(0) => \^tx_status\(0),
      \wr_index_reg[0]\ => \^rd_index_reg[0]_0\,
      \wr_index_reg[0]_0\ => \^addrc\(3),
      wr_request => wr_request,
      \write_status_reg[3]\ => ed_write_n_0,
      \write_status_reg[3]_0\ => ed_write_n_2
    );
fifo_buffer_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \^addrc\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \^addrc\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \^addrc\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \^q\(3 downto 0),
      DIA(1 downto 0) => \axi_rdata[7]_i_2\(1 downto 0),
      DIB(1 downto 0) => \axi_rdata[7]_i_2\(3 downto 2),
      DIC(1 downto 0) => \axi_rdata[7]_i_2\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd_data(1 downto 0),
      DOB(1 downto 0) => rd_data(3 downto 2),
      DOC(1 downto 0) => rd_data(5 downto 4),
      DOD(1 downto 0) => NLW_fifo_buffer_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => axi_aclk,
      WE => ed_write_n_0
    );
fifo_buffer_reg_0_15_6_7: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => \^q\(2),
      A3 => \^q\(3),
      A4 => '0',
      D => \axi_rdata[7]_i_2\(6),
      DPO => rd_data(6),
      DPRA0 => \^addrc\(0),
      DPRA1 => \^addrc\(1),
      DPRA2 => \^addrc\(2),
      DPRA3 => \^addrc\(3),
      DPRA4 => '0',
      SPO => NLW_fifo_buffer_reg_0_15_6_7_SPO_UNCONNECTED,
      WCLK => axi_aclk,
      WE => ed_write_n_0
    );
\fifo_buffer_reg_0_15_6_7__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => \^q\(0),
      A1 => \^q\(1),
      A2 => \^q\(2),
      A3 => \^q\(3),
      A4 => '0',
      D => \axi_rdata[7]_i_2\(7),
      DPO => rd_data(7),
      DPRA0 => \^addrc\(0),
      DPRA1 => \^addrc\(1),
      DPRA2 => \^addrc\(2),
      DPRA3 => \^addrc\(3),
      DPRA4 => '0',
      SPO => \NLW_fifo_buffer_reg_0_15_6_7__0_SPO_UNCONNECTED\,
      WCLK => axi_aclk,
      WE => ed_write_n_0
    );
overflow_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999999"
    )
        port map (
      I0 => \^addrc\(3),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => overflow_i_2_n_0
    );
overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => ed_write_n_2,
      Q => \^tx_status\(0),
      R => '0'
    );
\rd_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addrc\(0),
      O => \rd_index[0]_i_1_n_0\
    );
\rd_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^addrc\(0),
      I1 => \^addrc\(1),
      O => \rd_index[1]_i_1_n_0\
    );
\rd_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^addrc\(1),
      I1 => \^addrc\(0),
      I2 => \^addrc\(2),
      O => \rd_index[2]_i_1_n_0\
    );
\rd_index[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addrc\(2),
      I1 => \^addrc\(0),
      I2 => \^addrc\(1),
      I3 => \^addrc\(3),
      O => \rd_index[3]_i_2_n_0\
    );
\rd_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => ed_write_n_1,
      D => \rd_index[0]_i_1_n_0\,
      Q => \^addrc\(0),
      R => SR(0)
    );
\rd_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => ed_write_n_1,
      D => \rd_index[1]_i_1_n_0\,
      Q => \^addrc\(1),
      R => SR(0)
    );
\rd_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => ed_write_n_1,
      D => \rd_index[2]_i_1_n_0\,
      Q => \^addrc\(2),
      R => SR(0)
    );
\rd_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => ed_write_n_1,
      D => \rd_index[3]_i_2_n_0\,
      Q => \^addrc\(3),
      R => SR(0)
    );
\tx_status[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA800080002AAA"
    )
        port map (
      I0 => \^rd_index_reg[0]_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \^addrc\(3),
      O => \^tx_status\(1)
    );
\tx_status[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0842100010000842"
    )
        port map (
      I0 => \^addrc\(0),
      I1 => \^addrc\(1),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^addrc\(2),
      O => \^rd_index_reg[0]_0\
    );
\tx_status[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^rd_index_reg[1]_0\,
      I1 => \^q\(0),
      I2 => \^addrc\(0),
      O => \^tx_status\(2)
    );
\tx_status[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addrc\(1),
      I1 => \^q\(1),
      I2 => \^addrc\(3),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^addrc\(2),
      O => \^rd_index_reg[1]_0\
    );
\wr_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \wr_index[0]_i_1_n_0\
    );
\wr_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \wr_index[1]_i_1_n_0\
    );
\wr_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \wr_index[2]_i_1_n_0\
    );
\wr_index[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \^d\(0)
    );
\wr_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => ed_write_n_3,
      D => \wr_index[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\wr_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => ed_write_n_3,
      D => \wr_index[1]_i_1_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\wr_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => ed_write_n_3,
      D => \wr_index[2]_i_1_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\wr_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => ed_write_n_3,
      D => \^d\(0),
      Q => \^q\(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2c_0_2_i2c_v1_0 is
  port (
    dbg_index : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_index_reg[0]\ : out STD_LOGIC;
    \rd_index_reg[1]\ : out STD_LOGIC;
    \rd_index_reg[2]\ : out STD_LOGIC;
    \rd_index_reg[3]\ : out STD_LOGIC;
    tx_status : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_wready : out STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rvalid_reg : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_bready : in STD_LOGIC;
    axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_i2c_0_2_i2c_v1_0 : entity is "i2c_v1_0";
end system_i2c_0_2_i2c_v1_0;

architecture STRUCTURE of system_i2c_0_2_i2c_v1_0 is
  signal clear_tx_overflow : STD_LOGIC;
  signal \^dbg_index\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ed_read/prev_signal\ : STD_LOGIC;
  signal i2c_v1_0_AXI_inst_n_1 : STD_LOGIC;
  signal i2c_v1_0_AXI_inst_n_9 : STD_LOGIC;
  signal rd_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rd_index_reg[0]\ : STD_LOGIC;
  signal \^rd_index_reg[1]\ : STD_LOGIC;
  signal \^rd_index_reg[2]\ : STD_LOGIC;
  signal \^rd_index_reg[3]\ : STD_LOGIC;
  signal rd_request : STD_LOGIC;
  signal tx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_fifo_n_20 : STD_LOGIC;
  signal tx_fifo_n_21 : STD_LOGIC;
  signal tx_fifo_n_22 : STD_LOGIC;
  signal \^tx_status\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wr_request : STD_LOGIC;
begin
  dbg_index(3 downto 0) <= \^dbg_index\(3 downto 0);
  \rd_index_reg[0]\ <= \^rd_index_reg[0]\;
  \rd_index_reg[1]\ <= \^rd_index_reg[1]\;
  \rd_index_reg[2]\ <= \^rd_index_reg[2]\;
  \rd_index_reg[3]\ <= \^rd_index_reg[3]\;
  tx_status(2 downto 0) <= \^tx_status\(2 downto 0);
i2c_v1_0_AXI_inst: entity work.system_i2c_0_2_i2c_v1_0_AXI
     port map (
      ADDRC(3) => \^rd_index_reg[3]\,
      ADDRC(2) => \^rd_index_reg[2]\,
      ADDRC(1) => \^rd_index_reg[1]\,
      ADDRC(0) => \^rd_index_reg[0]\,
      D(0) => tx_fifo_n_22,
      Q(3 downto 0) => \^dbg_index\(3 downto 0),
      axi_aclk => axi_aclk,
      axi_araddr(2 downto 0) => axi_araddr(2 downto 0),
      axi_aresetn => axi_aresetn,
      axi_aresetn_0 => i2c_v1_0_AXI_inst_n_1,
      axi_arready => axi_arready,
      axi_arvalid => axi_arvalid,
      axi_awaddr(2 downto 0) => axi_awaddr(2 downto 0),
      axi_awready => axi_awready,
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      \axi_rdata_reg[4]_0\ => tx_fifo_n_20,
      \axi_rdata_reg[5]_0\ => tx_fifo_n_21,
      axi_rready => axi_rready,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wready => axi_wready,
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      clear_tx_overflow => clear_tx_overflow,
      prev_signal => \ed_read/prev_signal\,
      prev_signal_reg => i2c_v1_0_AXI_inst_n_9,
      rd_data(7 downto 0) => rd_data(7 downto 0),
      rd_request => rd_request,
      \tx_data_reg[7]_0\(7 downto 0) => tx_data(7 downto 0),
      tx_status(0) => \^tx_status\(0),
      wr_request => wr_request
    );
tx_fifo: entity work.system_i2c_0_2_FIFO
     port map (
      ADDRC(3) => \^rd_index_reg[3]\,
      ADDRC(2) => \^rd_index_reg[2]\,
      ADDRC(1) => \^rd_index_reg[1]\,
      ADDRC(0) => \^rd_index_reg[0]\,
      D(0) => tx_fifo_n_22,
      Q(3 downto 0) => \^dbg_index\(3 downto 0),
      SR(0) => i2c_v1_0_AXI_inst_n_1,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      \axi_rdata[7]_i_2\(7 downto 0) => tx_data(7 downto 0),
      clear_tx_overflow => clear_tx_overflow,
      prev_signal => \ed_read/prev_signal\,
      rd_data(7 downto 0) => rd_data(7 downto 0),
      \rd_index_reg[0]_0\ => tx_fifo_n_20,
      \rd_index_reg[0]_1\ => i2c_v1_0_AXI_inst_n_9,
      \rd_index_reg[1]_0\ => tx_fifo_n_21,
      rd_request => rd_request,
      tx_status(2 downto 0) => \^tx_status\(2 downto 0),
      wr_request => wr_request
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2c_0_2 is
  port (
    dbg_index : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_status : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_wvalid : in STD_LOGIC;
    axi_wready : out STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_bvalid : out STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_rvalid : out STD_LOGIC;
    axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_i2c_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_i2c_0_2 : entity is "system_i2c_0_2,i2c_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_i2c_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_i2c_0_2 : entity is "i2c_v1_0,Vivado 2025.1";
end system_i2c_0_2;

architecture STRUCTURE of system_i2c_0_2 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_aclk : signal is "xilinx.com:signal:clock:1.0 AXI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_aclk : signal is "XIL_INTERFACENAME AXI_CLK, ASSOCIATED_BUSIF AXI, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_aresetn : signal is "xilinx.com:signal:reset:1.0 AXI_RST RST";
  attribute X_INTERFACE_MODE of axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_aresetn : signal is "XIL_INTERFACENAME AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI ARREADY";
  attribute X_INTERFACE_INFO of axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI ARVALID";
  attribute X_INTERFACE_INFO of axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI AWREADY";
  attribute X_INTERFACE_INFO of axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI AWVALID";
  attribute X_INTERFACE_INFO of axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI BREADY";
  attribute X_INTERFACE_INFO of axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI BVALID";
  attribute X_INTERFACE_INFO of axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI RREADY";
  attribute X_INTERFACE_INFO of axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI RVALID";
  attribute X_INTERFACE_INFO of axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI WREADY";
  attribute X_INTERFACE_INFO of axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI WVALID";
  attribute X_INTERFACE_INFO of axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI ARADDR";
  attribute X_INTERFACE_INFO of axi_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI ARPROT";
  attribute X_INTERFACE_INFO of axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI AWADDR";
  attribute X_INTERFACE_MODE of axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_awaddr : signal is "XIL_INTERFACENAME AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI AWPROT";
  attribute X_INTERFACE_INFO of axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI BRESP";
  attribute X_INTERFACE_INFO of axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI RDATA";
  attribute X_INTERFACE_INFO of axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI RRESP";
  attribute X_INTERFACE_INFO of axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI WDATA";
  attribute X_INTERFACE_INFO of axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI WSTRB";
begin
  axi_bresp(1) <= \<const0>\;
  axi_bresp(0) <= \<const0>\;
  axi_rresp(1) <= \<const0>\;
  axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_i2c_0_2_i2c_v1_0
     port map (
      axi_aclk => axi_aclk,
      axi_araddr(2 downto 0) => axi_araddr(4 downto 2),
      axi_aresetn => axi_aresetn,
      axi_arready => axi_arready,
      axi_arvalid => axi_arvalid,
      axi_awaddr(2 downto 0) => axi_awaddr(4 downto 2),
      axi_awready => axi_awready,
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rready => axi_rready,
      axi_rvalid_reg => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wready => axi_wready,
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      dbg_index(3 downto 0) => dbg_index(7 downto 4),
      \rd_index_reg[0]\ => dbg_index(0),
      \rd_index_reg[1]\ => dbg_index(1),
      \rd_index_reg[2]\ => dbg_index(2),
      \rd_index_reg[3]\ => dbg_index(3),
      tx_status(2 downto 0) => tx_status(2 downto 0)
    );
end STRUCTURE;
