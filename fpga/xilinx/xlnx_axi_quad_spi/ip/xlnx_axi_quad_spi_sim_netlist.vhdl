-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon May 31 20:47:10 2021
-- Host        : badile08.ee.ethz.ch running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /home/bsc21f22/projects/cva6/fpga/xilinx/xlnx_axi_quad_spi/xlnx_axi_quad_spi.srcs/sources_1/ip/xlnx_axi_quad_spi/xlnx_axi_quad_spi_sim_netlist.vhdl
-- Design      : xlnx_axi_quad_spi
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_cdc_sync is
  port (
    scndry_out : out STD_LOGIC;
    prmry_in : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_cdc_sync : entity is "cdc_sync";
end xlnx_axi_quad_spi_cdc_sync;

architecture STRUCTURE of xlnx_axi_quad_spi_cdc_sync is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_cdc_sync_0 is
  port (
    Rx_FIFO_Full_Fifo_d1_synced_i : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    empty : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_cdc_sync_0 : entity is "cdc_sync";
end xlnx_axi_quad_spi_cdc_sync_0;

architecture STRUCTURE of xlnx_axi_quad_spi_cdc_sync_0 is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^scndry_out\,
      R => '0'
    );
rc_FIFO_Full_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => empty,
      O => Rx_FIFO_Full_Fifo_d1_synced_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_counter_f is
  port (
    tx_fifo_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icount_out_reg[3]_0\ : out STD_LOGIC;
    \icount_out_reg[2]_0\ : out STD_LOGIC;
    \icount_out_reg[1]_0\ : out STD_LOGIC;
    \icount_out_reg[5]_0\ : out STD_LOGIC;
    \icount_out_reg[4]_0\ : out STD_LOGIC;
    \icount_out_reg[6]_0\ : out STD_LOGIC;
    tx_occ_msb_1 : out STD_LOGIC;
    TX_one_less_than_full : out STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    IP2Bus_WrAck_transmit_enable : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \icount_out_reg[7]_0\ : in STD_LOGIC;
    \icount_out_reg[7]_1\ : in STD_LOGIC;
    \icount_out_reg[0]_0\ : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_counter_f : entity is "counter_f";
end xlnx_axi_quad_spi_counter_f;

architecture STRUCTURE of xlnx_axi_quad_spi_counter_f is
  signal \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_2\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_3\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_5\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_6\ : STD_LOGIC;
  signal \icount_out0_carry__0_n_7\ : STD_LOGIC;
  signal icount_out0_carry_i_1_n_0 : STD_LOGIC;
  signal icount_out0_carry_i_2_n_0 : STD_LOGIC;
  signal icount_out0_carry_i_3_n_0 : STD_LOGIC;
  signal icount_out0_carry_i_4_n_0 : STD_LOGIC;
  signal icount_out0_carry_n_0 : STD_LOGIC;
  signal icount_out0_carry_n_1 : STD_LOGIC;
  signal icount_out0_carry_n_2 : STD_LOGIC;
  signal icount_out0_carry_n_3 : STD_LOGIC;
  signal icount_out0_carry_n_4 : STD_LOGIC;
  signal icount_out0_carry_n_5 : STD_LOGIC;
  signal icount_out0_carry_n_6 : STD_LOGIC;
  signal icount_out0_carry_n_7 : STD_LOGIC;
  signal \icount_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \icount_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \^icount_out_reg[1]_0\ : STD_LOGIC;
  signal \^icount_out_reg[2]_0\ : STD_LOGIC;
  signal \^icount_out_reg[3]_0\ : STD_LOGIC;
  signal \^icount_out_reg[4]_0\ : STD_LOGIC;
  signal \^icount_out_reg[5]_0\ : STD_LOGIC;
  signal \^icount_out_reg[6]_0\ : STD_LOGIC;
  signal \^tx_fifo_count\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^tx_occ_msb_1\ : STD_LOGIC;
  signal \NLW_icount_out0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_icount_out0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of icount_out0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \icount_out0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \icount_out[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \icount_out[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \icount_out[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \icount_out[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \icount_out[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \icount_out[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \icount_out[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \icount_out[7]_i_2\ : label is "soft_lutpair39";
begin
  \icount_out_reg[1]_0\ <= \^icount_out_reg[1]_0\;
  \icount_out_reg[2]_0\ <= \^icount_out_reg[2]_0\;
  \icount_out_reg[3]_0\ <= \^icount_out_reg[3]_0\;
  \icount_out_reg[4]_0\ <= \^icount_out_reg[4]_0\;
  \icount_out_reg[5]_0\ <= \^icount_out_reg[5]_0\;
  \icount_out_reg[6]_0\ <= \^icount_out_reg[6]_0\;
  tx_fifo_count(0) <= \^tx_fifo_count\(0);
  tx_occ_msb_1 <= \^tx_occ_msb_1\;
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => IP2Bus_WrAck_transmit_enable,
      I1 => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_3_n_0\,
      I2 => \^icount_out_reg[6]_0\,
      I3 => \^icount_out_reg[2]_0\,
      I4 => \^tx_occ_msb_1\,
      I5 => \^icount_out_reg[5]_0\,
      O => TX_one_less_than_full
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^icount_out_reg[1]_0\,
      I1 => \^tx_fifo_count\(0),
      I2 => \^icount_out_reg[4]_0\,
      I3 => \^icount_out_reg[3]_0\,
      O => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_3_n_0\
    );
icount_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icount_out0_carry_n_0,
      CO(2) => icount_out0_carry_n_1,
      CO(1) => icount_out0_carry_n_2,
      CO(0) => icount_out0_carry_n_3,
      CYINIT => \^tx_fifo_count\(0),
      DI(3) => \^icount_out_reg[3]_0\,
      DI(2) => \^icount_out_reg[2]_0\,
      DI(1) => \^icount_out_reg[1]_0\,
      DI(0) => icount_out0_carry_i_1_n_0,
      O(3) => icount_out0_carry_n_4,
      O(2) => icount_out0_carry_n_5,
      O(1) => icount_out0_carry_n_6,
      O(0) => icount_out0_carry_n_7,
      S(3) => icount_out0_carry_i_2_n_0,
      S(2) => icount_out0_carry_i_3_n_0,
      S(1) => icount_out0_carry_i_4_n_0,
      S(0) => S(0)
    );
\icount_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => icount_out0_carry_n_0,
      CO(3 downto 2) => \NLW_icount_out0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \icount_out0_carry__0_n_2\,
      CO(0) => \icount_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^icount_out_reg[5]_0\,
      DI(0) => \^icount_out_reg[4]_0\,
      O(3) => \NLW_icount_out0_carry__0_O_UNCONNECTED\(3),
      O(2) => \icount_out0_carry__0_n_5\,
      O(1) => \icount_out0_carry__0_n_6\,
      O(0) => \icount_out0_carry__0_n_7\,
      S(3) => '0',
      S(2) => \icount_out0_carry__0_i_1_n_0\,
      S(1) => \icount_out0_carry__0_i_2_n_0\,
      S(0) => \icount_out0_carry__0_i_3_n_0\
    );
\icount_out0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^icount_out_reg[6]_0\,
      I1 => \^tx_occ_msb_1\,
      O => \icount_out0_carry__0_i_1_n_0\
    );
\icount_out0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^icount_out_reg[5]_0\,
      I1 => \^icount_out_reg[6]_0\,
      O => \icount_out0_carry__0_i_2_n_0\
    );
\icount_out0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^icount_out_reg[4]_0\,
      I1 => \^icount_out_reg[5]_0\,
      O => \icount_out0_carry__0_i_3_n_0\
    );
icount_out0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^icount_out_reg[1]_0\,
      O => icount_out0_carry_i_1_n_0
    );
icount_out0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^icount_out_reg[3]_0\,
      I1 => \^icount_out_reg[4]_0\,
      O => icount_out0_carry_i_2_n_0
    );
icount_out0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^icount_out_reg[2]_0\,
      I1 => \^icount_out_reg[3]_0\,
      O => icount_out0_carry_i_3_n_0
    );
icount_out0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^icount_out_reg[1]_0\,
      I1 => \^icount_out_reg[2]_0\,
      O => icount_out0_carry_i_4_n_0
    );
\icount_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^tx_fifo_count\(0),
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \icount_out_reg[7]_0\,
      I3 => \icount_out_reg[7]_1\,
      O => \icount_out[0]_i_1_n_0\
    );
\icount_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => icount_out0_carry_n_7,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \icount_out_reg[7]_0\,
      I3 => \icount_out_reg[7]_1\,
      O => \icount_out[1]_i_1_n_0\
    );
\icount_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => icount_out0_carry_n_6,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \icount_out_reg[7]_0\,
      I3 => \icount_out_reg[7]_1\,
      O => \icount_out[2]_i_1_n_0\
    );
\icount_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => icount_out0_carry_n_5,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \icount_out_reg[7]_0\,
      I3 => \icount_out_reg[7]_1\,
      O => \icount_out[3]_i_1_n_0\
    );
\icount_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => icount_out0_carry_n_4,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \icount_out_reg[7]_0\,
      I3 => \icount_out_reg[7]_1\,
      O => \icount_out[4]_i_1_n_0\
    );
\icount_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \icount_out0_carry__0_n_7\,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \icount_out_reg[7]_0\,
      I3 => \icount_out_reg[7]_1\,
      O => \icount_out[5]_i_1_n_0\
    );
\icount_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \icount_out0_carry__0_n_6\,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \icount_out_reg[7]_0\,
      I3 => \icount_out_reg[7]_1\,
      O => \icount_out[6]_i_1_n_0\
    );
\icount_out[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \icount_out0_carry__0_n_5\,
      I1 => bus2ip_reset_ipif_inverted,
      I2 => \icount_out_reg[7]_0\,
      I3 => \icount_out_reg[7]_1\,
      O => \icount_out[7]_i_2_n_0\
    );
\icount_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[0]_0\,
      D => \icount_out[0]_i_1_n_0\,
      Q => \^tx_fifo_count\(0),
      R => '0'
    );
\icount_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[0]_0\,
      D => \icount_out[1]_i_1_n_0\,
      Q => \^icount_out_reg[1]_0\,
      R => '0'
    );
\icount_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[0]_0\,
      D => \icount_out[2]_i_1_n_0\,
      Q => \^icount_out_reg[2]_0\,
      R => '0'
    );
\icount_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[0]_0\,
      D => \icount_out[3]_i_1_n_0\,
      Q => \^icount_out_reg[3]_0\,
      R => '0'
    );
\icount_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[0]_0\,
      D => \icount_out[4]_i_1_n_0\,
      Q => \^icount_out_reg[4]_0\,
      R => '0'
    );
\icount_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[0]_0\,
      D => \icount_out[5]_i_1_n_0\,
      Q => \^icount_out_reg[5]_0\,
      R => '0'
    );
\icount_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[0]_0\,
      D => \icount_out[6]_i_1_n_0\,
      Q => \^icount_out_reg[6]_0\,
      R => '0'
    );
\icount_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \icount_out_reg[0]_0\,
      D => \icount_out[7]_i_2_n_0\,
      Q => \^tx_occ_msb_1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_cross_clk_sync_fifo_1 is
  port (
    spisel_d1_reg_to_axi_clk : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_0\ : out STD_LOGIC;
    dtr_underrun_to_axi_clk : out STD_LOGIC;
    spicr_0_loop_to_spi_clk : out STD_LOGIC;
    spicr_1_spe_to_spi_clk : out STD_LOGIC;
    SPICR_2_MST_N_SLV_to_spi_clk : out STD_LOGIC;
    spicr_3_cpol_to_spi_clk : out STD_LOGIC;
    spicr_4_cpha_to_spi_clk : out STD_LOGIC;
    spicr_9_lsb_to_spi_clk : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_0\ : out STD_LOGIC;
    register_Data_slvsel_int : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_1\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_2\ : out STD_LOGIC;
    \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ : out STD_LOGIC;
    \s_axi4_wdata[7]\ : out STD_LOGIC;
    \s_axi4_wdata[5]\ : out STD_LOGIC;
    s_axi4_wdata_1_sp_1 : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3_0\ : out STD_LOGIC;
    Tx_FIFO_Empty_intr : out STD_LOGIC;
    tx_occ_msb : out STD_LOGIC;
    spiXfer_done_to_axi_1 : out STD_LOGIC;
    R : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_1\ : out STD_LOGIC;
    Slave_MODF_strobe0 : out STD_LOGIC;
    MODF_strobe0 : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_0\ : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_1\ : out STD_LOGIC;
    rst : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    D_0 : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2_0\ : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    spisel_d1_reg : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    empty : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    dtr_underrun_int : in STD_LOGIC;
    spicr_0_loop_frm_axi_clk : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    spicr_7_ss_frm_axi_clk : in STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    spicr_9_lsb_frm_axi_clk : in STD_LOGIC;
    sr_3_MODF_int : in STD_LOGIC;
    spicr_bits_7_8_frm_axi_clk : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SPISSR_frm_axi_clk : in STD_LOGIC;
    p_9_out : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    p_0_out : in STD_LOGIC;
    icount_out0_carry : in STD_LOGIC;
    IP2Bus_WrAck_transmit_enable : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ : in STD_LOGIC;
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\ : in STD_LOGIC;
    Allow_Slave_MODF_Strobe : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\ : in STD_LOGIC;
    Tx_FIFO_Full_i : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    modf_reg : in STD_LOGIC;
    modf_reg_0 : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    p_1_in35_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : in STD_LOGIC;
    tx_fifo_count_d2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spiXfer_done_to_axi_d1 : in STD_LOGIC;
    tx_occ_msb_4 : in STD_LOGIC;
    slave_MODF_strobe_int : in STD_LOGIC;
    transfer_start_reg : in STD_LOGIC;
    Allow_MODF_Strobe : in STD_LOGIC;
    Count_trigger : in STD_LOGIC;
    Ratio_Count : in STD_LOGIC;
    transfer_start_d1 : in STD_LOGIC;
    transfer_start_reg_0 : in STD_LOGIC;
    serial_dout_int : in STD_LOGIC;
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC;
    modf_strobe_int : in STD_LOGIC;
    SPISEL_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_cross_clk_sync_fifo_1 : entity is "cross_clk_sync_fifo_1";
end xlnx_axi_quad_spi_cross_clk_sync_fifo_1;

architecture STRUCTURE of xlnx_axi_quad_spi_cross_clk_sync_fifo_1 is
  signal \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\ : STD_LOGIC;
  signal \LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg_n_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.drr_overrun_int_cdc_from_spi_int_2_reg_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.modf_strobe_cdc_from_spi_int_2_reg_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.spixfer_done_cdc_from_spi_int_2_reg_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.spisel_pulse_cdc_from_spi_int_2_reg_0\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal SPICR_0_LOOP_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_1_SPE_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_2_MST_N_SLV_cdc_from_axi_d1 : STD_LOGIC;
  signal \^spicr_2_mst_n_slv_to_spi_clk\ : STD_LOGIC;
  signal SPICR_3_CPOL_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_4_CPHA_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_7_SS_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_8_TR_INHIBIT_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_9_LSB_cdc_from_axi_d1 : STD_LOGIC;
  signal SPICR_bits_7_8_cdc_from_axi_d1_0 : STD_LOGIC;
  signal SPICR_bits_7_8_cdc_from_axi_d1_1 : STD_LOGIC;
  signal SR_3_modf_cdc_from_axi_d1 : STD_LOGIC;
  signal Tx_FIFO_Empty_SPISR_cdc_from_spi_d1 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d1 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d2 : STD_LOGIC;
  signal drr_Overrun_int_cdc_from_spi_d3 : STD_LOGIC;
  signal dtr_underrun_cdc_from_spi_d1 : STD_LOGIC;
  signal modf_strobe_cdc_from_spi_d1 : STD_LOGIC;
  signal modf_strobe_cdc_from_spi_d2 : STD_LOGIC;
  signal modf_strobe_cdc_from_spi_d3 : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal \^register_data_slvsel_int\ : STD_LOGIC;
  signal reset_RcFIFO_ptr_cdc_from_axi_d1 : STD_LOGIC;
  signal reset_RcFIFO_ptr_cdc_from_axi_d2 : STD_LOGIC;
  signal s_axi4_wdata_1_sn_1 : STD_LOGIC;
  signal slave_MODF_strobe_cdc_from_spi_d1 : STD_LOGIC;
  signal slave_MODF_strobe_cdc_from_spi_d2 : STD_LOGIC;
  signal slave_MODF_strobe_cdc_from_spi_d3 : STD_LOGIC;
  signal spiXfer_done_d1 : STD_LOGIC;
  signal spiXfer_done_d2 : STD_LOGIC;
  signal spiXfer_done_d3 : STD_LOGIC;
  signal \^spicr_0_loop_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_1_spe_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_3_cpol_to_spi_clk\ : STD_LOGIC;
  signal \^spicr_4_cpha_to_spi_clk\ : STD_LOGIC;
  signal spicr_7_ss_to_spi_clk : STD_LOGIC;
  signal spicr_8_tr_inhibit_to_spi_clk : STD_LOGIC;
  signal spicr_bits_7_8_to_spi_clk : STD_LOGIC_VECTOR ( 0 to 1 );
  signal spisel_d1_reg_cdc_from_spi_d1 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d1 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d2 : STD_LOGIC;
  signal spisel_pulse_cdc_from_spi_d3 : STD_LOGIC;
  signal sr_3_modf_to_spi_clk : STD_LOGIC;
  signal transfer_start_i_2_n_0 : STD_LOGIC;
  signal tx_FIFO_Empty_d1_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Allow_Slave_MODF_Strobe_i_1 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_UNDERRUN_S2AX_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_UNDERRUN_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.DTR_UNDERRUN_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.DTR_UNDERRUN_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_3\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_9_LSB_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_9_LSB_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_9_LSB_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_9_LSB_AX2S_2\ : label is "PRIMITIVE";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : label is "FDR";
  attribute box_type of \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.sck_o_int_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Slave_MODF_strobe_i_2 : label is "soft_lutpair2";
begin
  \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ <= \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\;
  \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_0\ <= \^logic_generation_fdr.drr_overrun_int_cdc_from_spi_int_2_reg_0\;
  \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg_0\ <= \^logic_generation_fdr.modf_strobe_cdc_from_spi_int_2_reg_0\;
  \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_0\ <= \^logic_generation_fdr.spixfer_done_cdc_from_spi_int_2_reg_0\;
  \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg_0\ <= \^logic_generation_fdr.spisel_pulse_cdc_from_spi_int_2_reg_0\;
  SPICR_2_MST_N_SLV_to_spi_clk <= \^spicr_2_mst_n_slv_to_spi_clk\;
  register_Data_slvsel_int <= \^register_data_slvsel_int\;
  s_axi4_wdata_1_sp_1 <= s_axi4_wdata_1_sn_1;
  spicr_0_loop_to_spi_clk <= \^spicr_0_loop_to_spi_clk\;
  spicr_1_spe_to_spi_clk <= \^spicr_1_spe_to_spi_clk\;
  spicr_3_cpol_to_spi_clk <= \^spicr_3_cpol_to_spi_clk\;
  spicr_4_cpha_to_spi_clk <= \^spicr_4_cpha_to_spi_clk\;
Allow_Slave_MODF_Strobe_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^spicr_2_mst_n_slv_to_spi_clk\,
      I1 => \^spicr_1_spe_to_spi_clk\,
      I2 => Allow_Slave_MODF_Strobe,
      O => \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0\
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF90"
    )
        port map (
      I0 => spiXfer_done_d3,
      I1 => spiXfer_done_d2,
      I2 => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\,
      I3 => bus2ip_reset_ipif_inverted,
      I4 => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      I5 => spicr_6_rxfifo_rst_frm_axi_clk,
      O => \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_1\
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00090009000F0000"
    )
        port map (
      I0 => spiXfer_done_d3,
      I1 => spiXfer_done_d2,
      I2 => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\,
      I3 => reset2ip_reset_int,
      I4 => Tx_FIFO_Full_i,
      I5 => Tx_FIFO_Full_int,
      O => \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_2\
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.spiXfer_done_to_axi_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spiXfer_done_d3,
      I1 => spiXfer_done_d2,
      O => spiXfer_done_to_axi_1
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FFFF666"
    )
        port map (
      I0 => modf_strobe_cdc_from_spi_d3,
      I1 => modf_strobe_cdc_from_spi_d2,
      I2 => s_axi4_wdata(0),
      I3 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      I4 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\,
      O => \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3_0\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FFFF78"
    )
        port map (
      I0 => s_axi4_wdata(1),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      I2 => p_1_in35_in,
      I3 => slave_MODF_strobe_cdc_from_spi_d3,
      I4 => slave_MODF_strobe_cdc_from_spi_d2,
      O => s_axi4_wdata_1_sn_1
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FFFF78"
    )
        port map (
      I0 => s_axi4_wdata(2),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      I2 => p_1_in23_in,
      I3 => drr_Overrun_int_cdc_from_spi_d3,
      I4 => drr_Overrun_int_cdc_from_spi_d2,
      O => \s_axi4_wdata[5]\
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FFFF78"
    )
        port map (
      I0 => s_axi4_wdata(3),
      I1 => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\,
      I2 => p_1_in17_in,
      I3 => spisel_pulse_cdc_from_spi_d3,
      I4 => spisel_pulse_cdc_from_spi_d2,
      O => \s_axi4_wdata[7]\
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^logic_generation_fdr.drr_overrun_int_cdc_from_spi_int_2_reg_0\,
      Q => drr_Overrun_int_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => drr_Overrun_int_cdc_from_spi_d1,
      Q => drr_Overrun_int_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DRR_OVERRUN_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => drr_Overrun_int_cdc_from_spi_d2,
      Q => drr_Overrun_int_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DTR_UNDERRUN_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => dtr_underrun_int,
      Q => dtr_underrun_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.DTR_UNDERRUN_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => dtr_underrun_cdc_from_spi_d1,
      Q => dtr_underrun_to_axi_clk,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^logic_generation_fdr.modf_strobe_cdc_from_spi_int_2_reg_0\,
      Q => modf_strobe_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => modf_strobe_cdc_from_spi_d1,
      Q => modf_strobe_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => modf_strobe_cdc_from_spi_d2,
      Q => modf_strobe_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      Q => reset_RcFIFO_ptr_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.RX_FIFO_RST_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => reset_RcFIFO_ptr_cdc_from_axi_d1,
      Q => reset_RcFIFO_ptr_cdc_from_axi_d2,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg_n_0\,
      Q => slave_MODF_strobe_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => slave_MODF_strobe_cdc_from_spi_d1,
      Q => slave_MODF_strobe_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SLV_MODF_STRB_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => slave_MODF_strobe_cdc_from_spi_d2,
      Q => slave_MODF_strobe_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_0_loop_frm_axi_clk,
      Q => SPICR_0_LOOP_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_0_LOOP_cdc_from_axi_d1,
      Q => \^spicr_0_loop_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_1_spe_frm_axi_clk,
      Q => SPICR_1_SPE_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_1_SPE_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_1_SPE_cdc_from_axi_d1,
      Q => \^spicr_1_spe_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_2_mst_n_slv_frm_axi_clk,
      Q => SPICR_2_MST_N_SLV_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_2_MST_N_SLV_cdc_from_axi_d1,
      Q => \^spicr_2_mst_n_slv_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_3_cpol_frm_axi_clk,
      Q => SPICR_3_CPOL_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_3_CPOL_cdc_from_axi_d1,
      Q => \^spicr_3_cpol_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_4_cpha_frm_axi_clk,
      Q => SPICR_4_CPHA_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_4_CPHA_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_4_CPHA_cdc_from_axi_d1,
      Q => \^spicr_4_cpha_to_spi_clk\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_7_ss_frm_axi_clk,
      Q => SPICR_7_SS_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_7_SS_cdc_from_axi_d1,
      Q => spicr_7_ss_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_8_tr_inhibit_frm_axi_clk,
      Q => SPICR_8_TR_INHIBIT_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_8_TR_INHIBIT_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_8_TR_INHIBIT_cdc_from_axi_d1,
      Q => spicr_8_tr_inhibit_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_9_LSB_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_9_lsb_frm_axi_clk,
      Q => SPICR_9_LSB_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_9_LSB_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_9_LSB_cdc_from_axi_d1,
      Q => spicr_9_lsb_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_bits_7_8_frm_axi_clk(0),
      Q => SPICR_bits_7_8_cdc_from_axi_d1_0,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_bits_7_8_cdc_from_axi_d1_0,
      Q => spicr_bits_7_8_to_spi_clk(1),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spicr_bits_7_8_frm_axi_clk(1),
      Q => SPICR_bits_7_8_cdc_from_axi_d1_1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[1].SPICR_BITS_7_8_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPICR_bits_7_8_cdc_from_axi_d1_1,
      Q => spicr_bits_7_8_to_spi_clk(0),
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      I1 => spicr_6_rxfifo_rst_frm_axi_clk,
      O => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\
    );
\LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_i_1_n_0\,
      Q => \LOGIC_GENERATION_FDR.SPICR_RX_FIFO_Rst_en_d1_reg_n_0\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spisel_d1_reg,
      Q => spisel_d1_reg_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_D1_REG_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spisel_d1_reg_cdc_from_spi_d1,
      Q => spisel_d1_reg_to_axi_clk,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^logic_generation_fdr.spisel_pulse_cdc_from_spi_int_2_reg_0\,
      Q => spisel_pulse_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d1,
      Q => spisel_pulse_cdc_from_spi_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISEL_PULSE_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spisel_pulse_cdc_from_spi_d2,
      Q => spisel_pulse_cdc_from_spi_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPISSR_frm_axi_clk,
      Q => Q,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SPISSR_SYNC_GEN[0].SPISSR_SYNC_AXI_2_SPI_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Q,
      Q => \^register_data_slvsel_int\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => sr_3_MODF_int,
      Q => SR_3_modf_cdc_from_axi_d1,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SR_3_MODF_AX2S_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SR_3_modf_cdc_from_axi_d1,
      Q => sr_3_modf_to_spi_clk,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \^logic_generation_fdr.spixfer_done_cdc_from_spi_int_2_reg_0\,
      Q => spiXfer_done_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spiXfer_done_d1,
      Q => spiXfer_done_d2,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spiXfer_done_d2,
      Q => spiXfer_done_d3,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg_n_0\,
      I1 => slave_MODF_strobe_int,
      O => p_7_out
    );
\LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_7_out,
      Q => \LOGIC_GENERATION_FDR.Slave_MODF_strobe_cdc_from_spi_int_2_reg_n_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_1_CDC\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => empty,
      Q => Tx_FIFO_Empty_SPISR_cdc_from_spi_d1,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Tx_FIFO_Empty_SPISR_cdc_from_spi_d1,
      Q => \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\,
      R => reset2ip_reset_int
    );
\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_0_out,
      Q => \^logic_generation_fdr.drr_overrun_int_cdc_from_spi_int_2_reg_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_5_out,
      Q => \^logic_generation_fdr.modf_strobe_cdc_from_spi_int_2_reg_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_2_out,
      Q => \^logic_generation_fdr.spixfer_done_cdc_from_spi_int_2_reg_0\,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_9_out,
      Q => \^logic_generation_fdr.spisel_pulse_cdc_from_spi_int_2_reg_0\,
      R => Rst_to_spi
    );
MODF_strobe_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^spicr_2_mst_n_slv_to_spi_clk\,
      I1 => Allow_MODF_Strobe,
      O => MODF_strobe0
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^spicr_3_cpol_to_spi_clk\,
      I1 => \^spicr_4_cpha_to_spi_clk\,
      O => \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_1\
    );
\RATIO_OF_4_GENERATE.SCK_O_EQ_4_NO_STARTUP_USED.SCK_O_EQ_4_FDRE_INST_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^spicr_2_mst_n_slv_to_spi_clk\,
      O => R
    );
\RISING_EDGE_CLK_RATIO_4_GEN.Serial_Din_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => serial_dout_int,
      I1 => \^spicr_0_loop_to_spi_clk\,
      I2 => io1_i_sync,
      I3 => \^spicr_2_mst_n_slv_to_spi_clk\,
      I4 => io0_i_sync,
      O => D(0)
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF09FF"
    )
        port map (
      I0 => \^spicr_3_cpol_to_spi_clk\,
      I1 => \^spicr_4_cpha_to_spi_clk\,
      I2 => Count_trigger,
      I3 => \^spicr_2_mst_n_slv_to_spi_clk\,
      I4 => Ratio_Count,
      O => \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_0\
    );
SPI_TRISTATE_CONTROL_III_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => spicr_bits_7_8_to_spi_clk(1),
      I1 => \^spicr_0_loop_to_spi_clk\,
      I2 => modf_strobe_int,
      I3 => spicr_bits_7_8_to_spi_clk(0),
      I4 => sr_3_modf_to_spi_clk,
      O => D_0
    );
SPI_TRISTATE_CONTROL_V_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => spicr_bits_7_8_to_spi_clk(1),
      I1 => \^spicr_0_loop_to_spi_clk\,
      I2 => spicr_bits_7_8_to_spi_clk(0),
      I3 => SPISEL_sync,
      O => \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2_0\
    );
\SS_O[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF15"
    )
        port map (
      I0 => spicr_7_ss_to_spi_clk,
      I1 => transfer_start_d1,
      I2 => transfer_start_reg,
      I3 => \^register_data_slvsel_int\,
      I4 => Rst_to_spi,
      O => \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2_0\
    );
Slave_MODF_strobe_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Allow_Slave_MODF_Strobe,
      I1 => \^spicr_1_spe_to_spi_clk\,
      I2 => \^spicr_2_mst_n_slv_to_spi_clk\,
      O => Slave_MODF_strobe0
    );
icount_out0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA96"
    )
        port map (
      I0 => icount_out0_carry,
      I1 => spiXfer_done_d3,
      I2 => spiXfer_done_d2,
      I3 => IP2Bus_WrAck_transmit_enable,
      O => S(0)
    );
\icount_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF96"
    )
        port map (
      I0 => IP2Bus_WrAck_transmit_enable,
      I1 => spiXfer_done_d3,
      I2 => spiXfer_done_d2,
      I3 => bus2ip_reset_ipif_inverted,
      I4 => \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\,
      I5 => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\,
      O => \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\
    );
modf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDD0DD0"
    )
        port map (
      I0 => modf_reg,
      I1 => modf_reg_0,
      I2 => modf_strobe_cdc_from_spi_d3,
      I3 => modf_strobe_cdc_from_spi_d2,
      I4 => sr_3_MODF_int,
      I5 => reset2ip_reset_int,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\
    );
transfer_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002F20"
    )
        port map (
      I0 => transfer_start_reg,
      I1 => transfer_start_i_2_n_0,
      I2 => \^spicr_2_mst_n_slv_to_spi_clk\,
      I3 => \^spicr_1_spe_to_spi_clk\,
      I4 => Rst_to_spi,
      O => \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_1\
    );
transfer_start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8FFFF"
    )
        port map (
      I0 => empty,
      I1 => transfer_start_reg_0,
      I2 => sr_3_modf_to_spi_clk,
      I3 => spicr_8_tr_inhibit_to_spi_clk,
      I4 => \^spicr_1_spe_to_spi_clk\,
      O => transfer_start_i_2_n_0
    );
tx_FIFO_Empty_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => tx_fifo_count_d2(1),
      I1 => tx_fifo_count_d2(2),
      I2 => tx_fifo_count_d2(0),
      I3 => tx_fifo_count_d2(4),
      I4 => tx_FIFO_Empty_d1_i_2_n_0,
      O => Tx_FIFO_Empty_intr
    );
tx_FIFO_Empty_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => tx_fifo_count_d2(6),
      I1 => tx_fifo_count_d2(3),
      I2 => tx_fifo_count_d2(7),
      I3 => \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\,
      I4 => tx_fifo_count_d2(5),
      I5 => spiXfer_done_to_axi_d1,
      O => tx_FIFO_Empty_d1_i_2_n_0
    );
tx_FIFO_Occpncy_MSB_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_occ_msb_4,
      I1 => \^logic_generation_fdr.tx_empt_4_spisr_s2ax_2_0\,
      O => tx_occ_msb
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => Rst_to_spi,
      I1 => reset_RcFIFO_ptr_cdc_from_axi_d2,
      I2 => reset_RcFIFO_ptr_cdc_from_axi_d1,
      O => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in35_in : out STD_LOGIC;
    p_1_in32_in : out STD_LOGIC;
    p_1_in29_in : out STD_LOGIC;
    p_1_in26_in : out STD_LOGIC;
    p_1_in23_in : out STD_LOGIC;
    p_1_in20_in : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in14_in : out STD_LOGIC;
    p_7_in : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    intr_ip2bus_rdack : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    intr2bus_wrack_reg_0 : out STD_LOGIC;
    intr2bus_rdack_reg_0 : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    reset2ip_reset_int : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    p_13_out : in STD_LOGIC;
    wrack : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    ip2Bus_WrAck_core_reg : in STD_LOGIC;
    burst_tr_int : in STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[3]\ : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\ : in STD_LOGIC;
    tx_occ_msb_4 : in STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : in STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : in STD_LOGIC;
    rc_FIFO_Full_d1 : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    empty : in STD_LOGIC;
    dtr_underrun_d1 : in STD_LOGIC;
    dtr_underrun_to_axi_clk : in STD_LOGIC;
    tx_FIFO_Empty_d1 : in STD_LOGIC;
    Tx_FIFO_Empty_intr : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_interrupt_control : entity is "interrupt_control";
end xlnx_axi_quad_spi_interrupt_control;

architecture STRUCTURE of xlnx_axi_quad_spi_interrupt_control is
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \^intr_ip2bus_rdack\ : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_1_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_2_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_3_n_0 : STD_LOGIC;
  signal ip2intc_irpt_INST_0_i_4_n_0 : STD_LOGIC;
  signal \^ip_irpt_enable_reg_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal \^p_1_in14_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in20_in\ : STD_LOGIC;
  signal \^p_1_in23_in\ : STD_LOGIC;
  signal \^p_1_in26_in\ : STD_LOGIC;
  signal \^p_1_in29_in\ : STD_LOGIC;
  signal \^p_1_in32_in\ : STD_LOGIC;
  signal \^p_1_in35_in\ : STD_LOGIC;
  signal \^p_7_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  intr_ip2bus_rdack <= \^intr_ip2bus_rdack\;
  \ip_irpt_enable_reg_reg[8]_0\(8 downto 0) <= \^ip_irpt_enable_reg_reg[8]_0\(8 downto 0);
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_1_in14_in <= \^p_1_in14_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in20_in <= \^p_1_in20_in\;
  p_1_in23_in <= \^p_1_in23_in\;
  p_1_in26_in <= \^p_1_in26_in\;
  p_1_in29_in <= \^p_1_in29_in\;
  p_1_in32_in <= \^p_1_in32_in\;
  p_1_in35_in <= \^p_1_in35_in\;
  p_7_in <= \^p_7_in\;
\FSM_onehot_axi_full_sm_ps[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^intr_ip2bus_rdack\,
      I1 => \FSM_onehot_axi_full_sm_ps_reg[3]\,
      I2 => ip2Bus_RdAck_intr_reg_hole,
      O => intr2bus_rdack_reg_0
    );
\FSM_onehot_axi_full_sm_ps[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFFFE"
    )
        port map (
      I0 => p_13_out,
      I1 => \^p_7_in\,
      I2 => wrack,
      I3 => ip2Bus_WrAck_intr_reg_hole,
      I4 => ip2Bus_WrAck_core_reg,
      I5 => burst_tr_int,
      O => intr2bus_wrack_reg_0
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\,
      Q => \^p_1_in35_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7878"
    )
        port map (
      I0 => D(2),
      I1 => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\,
      I2 => \^p_1_in32_in\,
      I3 => tx_FIFO_Empty_d1,
      I4 => Tx_FIFO_Empty_intr,
      O => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg[2]_i_1_n_0\,
      Q => \^p_1_in32_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7878"
    )
        port map (
      I0 => D(3),
      I1 => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\,
      I2 => \^p_1_in29_in\,
      I3 => dtr_underrun_d1,
      I4 => dtr_underrun_to_axi_clk,
      O => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[3].GEN_REG_STATUS.ip_irpt_status_reg[3]_i_1_n_0\,
      Q => \^p_1_in29_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878FF7878"
    )
        port map (
      I0 => D(4),
      I1 => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\,
      I2 => \^p_1_in26_in\,
      I3 => rc_FIFO_Full_d1,
      I4 => scndry_out,
      I5 => empty,
      O => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[4].GEN_REG_STATUS.ip_irpt_status_reg[4]_i_1_n_0\,
      Q => \^p_1_in26_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\,
      Q => \^p_1_in23_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF78FF78787878"
    )
        port map (
      I0 => D(6),
      I1 => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\,
      I2 => \^p_1_in20_in\,
      I3 => tx_occ_msb_4,
      I4 => Tx_FIFO_Empty_SPISR_to_axi_clk,
      I5 => tx_FIFO_Occpncy_MSB_d1,
      O => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[6].GEN_REG_STATUS.ip_irpt_status_reg[6]_i_1_n_0\,
      Q => \^p_1_in20_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\,
      Q => \^p_1_in17_in\,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\,
      Q => \^p_1_in14_in\,
      R => reset2ip_reset_int
    );
intr2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => intr2bus_rdack0,
      Q => \^intr_ip2bus_rdack\,
      R => reset2ip_reset_int
    );
intr2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => \^p_7_in\,
      R => reset2ip_reset_int
    );
ip2intc_irpt_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => \^ipif_glbl_irpt_enable_reg\,
      I1 => ip2intc_irpt_INST_0_i_1_n_0,
      I2 => ip2intc_irpt_INST_0_i_2_n_0,
      I3 => ip2intc_irpt_INST_0_i_3_n_0,
      I4 => ip2intc_irpt_INST_0_i_4_n_0,
      O => ip2intc_irpt
    );
ip2intc_irpt_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^ip_irpt_enable_reg_reg[8]_0\(1),
      I1 => \^p_1_in35_in\,
      I2 => \^ip_irpt_enable_reg_reg[8]_0\(2),
      I3 => \^p_1_in32_in\,
      O => ip2intc_irpt_INST_0_i_1_n_0
    );
ip2intc_irpt_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^ip_irpt_enable_reg_reg[8]_0\(3),
      I1 => \^p_1_in29_in\,
      I2 => \^ip_irpt_enable_reg_reg[8]_0\(0),
      I3 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      O => ip2intc_irpt_INST_0_i_2_n_0
    );
ip2intc_irpt_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^ip_irpt_enable_reg_reg[8]_0\(5),
      I1 => \^p_1_in23_in\,
      I2 => \^ip_irpt_enable_reg_reg[8]_0\(4),
      I3 => \^p_1_in26_in\,
      O => ip2intc_irpt_INST_0_i_3_n_0
    );
ip2intc_irpt_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \^ip_irpt_enable_reg_reg[8]_0\(8),
      I1 => \^p_1_in14_in\,
      I2 => \^p_1_in20_in\,
      I3 => \^ip_irpt_enable_reg_reg[8]_0\(6),
      I4 => \^p_1_in17_in\,
      I5 => \^ip_irpt_enable_reg_reg[8]_0\(7),
      O => ip2intc_irpt_INST_0_i_4_n_0
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(0),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(0),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(1),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(1),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(2),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(2),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(3),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(3),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(4),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(4),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(5),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(5),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(6),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(6),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(7),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(7),
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \ip_irpt_enable_reg_reg[8]_1\(0),
      D => D(8),
      Q => \^ip_irpt_enable_reg_reg[8]_0\(8),
      R => reset2ip_reset_int
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => reset2ip_reset_int
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => reset2ip_reset_int
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_qspi_address_decoder is
  port (
    store_axi_signal_cmb : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_3 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]_0\ : out STD_LOGIC;
    wr_ce_or_reduce_core_cmb : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \length_cntr_reg[6]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_1\ : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[2]\ : out STD_LOGIC;
    Bus_RNW_reg_reg_4 : out STD_LOGIC;
    \length_cntr_reg[4]\ : out STD_LOGIC;
    \length_cntr_reg[2]\ : out STD_LOGIC;
    IP2Bus_WrAck_transmit_enable : out STD_LOGIC;
    Transmit_ip2bus_error0 : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 0 to 0 );
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[1]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[2]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[3]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[4]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[5]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[6]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[7]\ : out STD_LOGIC;
    \bus2ip_BE_reg_reg[3]\ : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    Bus_RNW_reg_reg_5 : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[5]\ : out STD_LOGIC;
    \s_axi4_wdata[31]\ : out STD_LOGIC;
    s_axi4_wdata_0_sp_1 : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : out STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2Bus_WrAck_core_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty : in STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    last_data_acked_reg : in STD_LOGIC;
    last_data_acked_reg_0 : in STD_LOGIC;
    last_data_acked_reg_1 : in STD_LOGIC;
    last_data_acked_reg_2 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_awvalid : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]\ : in STD_LOGIC;
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[3]\ : in STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[3]_0\ : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[6]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    s_axi4_wready : in STD_LOGIC;
    s_axi_wready_i : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    \s_axi4_rresp_i_reg[1]\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi4_rresp_i_reg[1]_0\ : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    \s_axi4_rdata_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_1_in35_in : in STD_LOGIC;
    p_1_in32_in : in STD_LOGIC;
    p_1_in29_in : in STD_LOGIC;
    p_1_in26_in : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    p_1_in20_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    spicr_7_ss_frm_axi_clk : in STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    \s_axi4_rdata_i[0]_i_2_0\ : in STD_LOGIC;
    SPISSR_frm_axi_clk : in STD_LOGIC;
    spicr_0_loop_frm_axi_clk : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    sr_3_MODF_int : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    spisel_d1_reg_to_axi_clk : in STD_LOGIC;
    spicr_9_lsb_frm_axi_clk : in STD_LOGIC;
    s_axi4_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset2ip_reset_int : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_qspi_address_decoder : entity is "qspi_address_decoder";
end xlnx_axi_quad_spi_qspi_address_decoder;

architecture STRUCTURE of xlnx_axi_quad_spi_qspi_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^bus_rnw_reg_reg_4\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\ : STD_LOGIC;
  signal \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\ : STD_LOGIC;
  signal \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\ : STD_LOGIC;
  signal \ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_axi_full_sm_ps_reg[2]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0 : STD_LOGIC;
  signal \^length_cntr_reg[2]\ : STD_LOGIC;
  signal \^length_cntr_reg[4]\ : STD_LOGIC;
  signal \^length_cntr_reg[6]\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal p_21_in : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal p_23_in : STD_LOGIC;
  signal p_24_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_27_in : STD_LOGIC;
  signal p_28_in : STD_LOGIC;
  signal p_29_in : STD_LOGIC;
  signal \^p_2_in\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_30_in : STD_LOGIC;
  signal p_31_in : STD_LOGIC;
  signal p_31_out : STD_LOGIC;
  signal p_32_in : STD_LOGIC;
  signal \^p_3_in\ : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \s_axi4_rdata_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[8]_i_4_n_0\ : STD_LOGIC;
  signal s_axi4_wdata_0_sn_1 : STD_LOGIC;
  signal \^store_axi_signal_cmb\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[6]_i_3\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of ip2Bus_RdAck_intr_reg_hole_d1_i_1 : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of ip2Bus_RdAck_intr_reg_hole_i_1 : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of ip2Bus_WrAck_intr_reg_hole_d1_i_1 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of ip2Bus_WrAck_intr_reg_hole_i_1 : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[8]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of irpt_rdack_d1_i_1 : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of last_data_acked_i_6 : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of modf_i_2 : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of reset_trig_i_1 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[0]_i_5\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[1]_i_5\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[3]_i_5\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[6]_i_7\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[8]_i_2\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[8]_i_3\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[8]_i_4\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[9]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \s_axi4_rresp_i[1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of sw_rst_cond_d1_i_1 : label is "soft_lutpair104";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  Bus_RNW_reg_reg_4 <= \^bus_rnw_reg_reg_4\;
  D(0) <= \^d\(0);
  \FSM_onehot_axi_full_sm_ps_reg[2]\ <= \^fsm_onehot_axi_full_sm_ps_reg[2]\;
  \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ <= \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\;
  \length_cntr_reg[2]\ <= \^length_cntr_reg[2]\;
  \length_cntr_reg[4]\ <= \^length_cntr_reg[4]\;
  \length_cntr_reg[6]\ <= \^length_cntr_reg[6]\;
  p_2_in <= \^p_2_in\;
  p_3_in <= \^p_3_in\;
  s_axi4_wdata_0_sp_1 <= s_axi4_wdata_0_sn_1;
  store_axi_signal_cmb <= \^store_axi_signal_cmb\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FAA00"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0),
      I1 => s_axi4_awvalid,
      I2 => s_axi4_wvalid,
      I3 => s_axi4_arvalid,
      I4 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => spicr_6_rxfifo_rst_frm_axi_clk,
      I1 => ip2Bus_WrAck_core_reg,
      I2 => s_axi4_wdata(2),
      I3 => p_8_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => reset2ip_reset_int,
      O => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\
    );
\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => spicr_5_txfifo_rst_frm_axi_clk,
      I1 => ip2Bus_WrAck_core_reg,
      I2 => s_axi4_wdata(1),
      I3 => p_8_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => reset2ip_reset_int,
      O => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\
    );
\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_8_in,
      I2 => ip2Bus_WrAck_core_reg,
      O => Bus_RNW_reg_reg_1
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00FD"
    )
        port map (
      I0 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I1 => p_7_in,
      I2 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\,
      O => wr_ce_or_reduce_core_cmb
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_13_in,
      I1 => p_15_in,
      I2 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\,
      I3 => p_9_in,
      I4 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00F2"
    )
        port map (
      I0 => p_6_in,
      I1 => almost_full,
      I2 => p_4_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_8_in,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^p_3_in\,
      I1 => p_11_in,
      I2 => p_12_in,
      I3 => p_10_in,
      I4 => \^p_2_in\,
      I5 => p_14_in,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_4_n_0\
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF00FD"
    )
        port map (
      I0 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I1 => p_7_in,
      I2 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_3_n_0\,
      I5 => ip2Bus_WrAck_core_reg_d1,
      O => \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]_0\
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD00"
    )
        port map (
      I0 => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_i_2_n_0\,
      I1 => p_6_in,
      I2 => p_16_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2_n_0\,
      O => rd_ce_or_reduce_core_cmb
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC8"
    )
        port map (
      I0 => p_7_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_4_in,
      I3 => p_8_in,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_i_2_n_0\
    );
\FSM_onehot_axi_full_sm_ps[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF80000"
    )
        port map (
      I0 => \^fsm_onehot_axi_full_sm_ps_reg[2]\,
      I1 => data_valid,
      I2 => \FSM_onehot_axi_full_sm_ps_reg[3]\,
      I3 => \^bus_rnw_reg_reg_4\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(2),
      I5 => \FSM_onehot_axi_full_sm_ps_reg[3]_0\,
      O => \^d\(0)
    );
\FSM_onehot_axi_full_sm_ps[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEAAAAA"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(1),
      I2 => \^length_cntr_reg[4]\,
      I3 => \^length_cntr_reg[2]\,
      I4 => s_axi4_rready,
      O => \^fsm_onehot_axi_full_sm_ps_reg[2]\
    );
\FSM_onehot_axi_full_sm_ps[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^length_cntr_reg[2]\,
      I1 => \FSM_onehot_axi_full_sm_ps_reg[6]\(6),
      I2 => \FSM_onehot_axi_full_sm_ps_reg[6]\(5),
      I3 => \FSM_onehot_axi_full_sm_ps_reg[6]\(7),
      I4 => \FSM_onehot_axi_full_sm_ps_reg[6]\(4),
      O => \^length_cntr_reg[6]\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044034700000000"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\,
      Q => p_32_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000022202"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      O => p_5_out
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_5_out,
      Q => p_22_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002020200020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I3 => s_axi4_awaddr(2),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(2),
      O => p_4_out
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_4_out,
      Q => p_21_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A20000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      I1 => s_axi4_awaddr(4),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(4),
      I4 => \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_2_n_0\,
      O => p_3_out
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(1),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_3_out,
      Q => p_20_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_2_n_0\,
      I1 => s_axi4_araddr(0),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(0),
      I4 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\,
      O => p_2_out
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050300000003000"
    )
        port map (
      I0 => s_axi4_araddr(4),
      I1 => s_axi4_awaddr(4),
      I2 => \^store_axi_signal_cmb\,
      I3 => s_axi4_awaddr(3),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(3),
      O => \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_2_out,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022200020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      O => p_1_out
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF355FFFFFFFF"
    )
        port map (
      I0 => s_axi4_awaddr(1),
      I1 => s_axi4_araddr(1),
      I2 => s_axi4_araddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(4),
      I5 => \^store_axi_signal_cmb\,
      O => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      O => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_1_out,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088808"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      I2 => s_axi4_awaddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(4),
      O => p_31_out
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_31_out,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47000000"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1_n_0\,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1_n_0\,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(2),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_araddr(0),
      I4 => s_axi4_awaddr(0),
      I5 => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1_n_0\,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000A20200000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      I1 => s_axi4_araddr(2),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(2),
      I4 => s_axi4_araddr(0),
      I5 => s_axi4_awaddr(0),
      O => p_14_out
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_14_out,
      Q => p_31_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47000000"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1_n_0\,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000C0A0A000C0"
    )
        port map (
      I0 => s_axi4_araddr(4),
      I1 => s_axi4_awaddr(4),
      I2 => \^store_axi_signal_cmb\,
      I3 => s_axi4_awaddr(3),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(3),
      O => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[21].ce_out_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_1_n_0\,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => s_axi4_awaddr(1),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_araddr(1),
      I3 => \GEN_BKEND_CE_REGISTERS[21].ce_out_i[21]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[22].ce_out_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[22].ce_out_i[22]_i_1_n_0\,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22200020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      I2 => s_axi4_awaddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(4),
      O => p_15_out
    );
\GEN_BKEND_CE_REGISTERS[23].ce_out_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_15_out,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47000000"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[24].ce_out_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[24].ce_out_i[24]_i_1_n_0\,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => s_axi4_awaddr(2),
      I1 => s_axi4_araddr(2),
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(1),
      O => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_1_n_0\,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[26].ce_out_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[26].ce_out_i[26]_i_1_n_0\,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(2),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_araddr(0),
      I4 => s_axi4_awaddr(0),
      I5 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[27].ce_out_i[27]_i_1_n_0\,
      Q => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47000000"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[28].ce_out_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[28].ce_out_i[28]_i_1_n_0\,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => s_axi4_awaddr(2),
      I1 => s_axi4_araddr(2),
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(1),
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC00000000000"
    )
        port map (
      I0 => s_axi4_awaddr(3),
      I1 => s_axi4_araddr(3),
      I2 => s_axi4_araddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(4),
      I5 => \^store_axi_signal_cmb\,
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_1_n_0\,
      Q => \^p_3_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000151"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I1 => s_axi4_awaddr(2),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(2),
      I4 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      O => p_13_out
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_13_out,
      Q => p_30_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => s_axi4_araddr(0),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(0),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DFF"
    )
        port map (
      I0 => s_axi4_awaddr(1),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_araddr(1),
      I3 => \GEN_BKEND_CE_REGISTERS[29].ce_out_i[29]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[30].ce_out_i[30]_i_1_n_0\,
      Q => \^p_2_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4F4F4"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_4_n_0\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(5),
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0),
      I1 => s_axi4_awvalid,
      I2 => s_axi4_wvalid,
      I3 => s_axi4_arvalid,
      O => \^store_axi_signal_cmb\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\,
      I1 => s_axi4_awaddr(4),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(4),
      I4 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4FFF4F"
    )
        port map (
      I0 => \^length_cntr_reg[6]\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(1),
      I2 => s_axi4_aresetn,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(3),
      I4 => s_axi4_rready,
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_4_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => almost_full,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(4),
      I2 => \^length_cntr_reg[6]\,
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_5_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A0A0C0000000"
    )
        port map (
      I0 => s_axi4_awaddr(1),
      I1 => s_axi4_araddr(1),
      I2 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_awaddr(2),
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi4_araddr(3),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(3),
      O => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\
    );
\GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_3_n_0\,
      Q => \GEN_BKEND_CE_REGISTERS[31].ce_out_i_reg_n_0_[31]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I2 => s_axi4_awaddr(2),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      O => p_12_out
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_12_out,
      Q => p_29_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000A20200000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      I1 => s_axi4_araddr(0),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(0),
      I4 => s_axi4_araddr(2),
      I5 => s_axi4_awaddr(2),
      O => \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1_n_0\,
      Q => p_28_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A800A0080800000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\,
      I1 => s_axi4_araddr(0),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(0),
      I4 => s_axi4_araddr(2),
      I5 => s_axi4_awaddr(2),
      O => p_10_out
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002020000A202A"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_3_n_0\,
      I1 => s_axi4_araddr(3),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_awaddr(3),
      I4 => s_axi4_araddr(1),
      I5 => s_axi4_awaddr(1),
      O => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000080F0F00080"
    )
        port map (
      I0 => s_axi4_wvalid,
      I1 => s_axi4_awvalid,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0),
      I3 => s_axi4_awaddr(4),
      I4 => s_axi4_arvalid,
      I5 => s_axi4_araddr(4),
      O => \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_10_out,
      Q => p_27_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_2_n_0\,
      I1 => s_axi4_awaddr(2),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(2),
      I4 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      I5 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      O => p_9_out
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_9_out,
      Q => p_26_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002A2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_6_n_0\,
      I1 => s_axi4_awaddr(4),
      I2 => s_axi4_arvalid,
      I3 => s_axi4_araddr(4),
      I4 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      O => p_8_out
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_8_out,
      Q => p_25_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00088808"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[31].ce_out_i[31]_i_7_n_0\,
      I2 => s_axi4_awaddr(4),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_araddr(4),
      O => p_7_out
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
        port map (
      I0 => s_axi4_araddr(1),
      I1 => s_axi4_arvalid,
      I2 => s_axi4_awaddr(1),
      I3 => s_axi4_araddr(2),
      I4 => s_axi4_awaddr(2),
      I5 => \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_3_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_7_out,
      Q => p_24_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[25].ce_out_i[25]_i_2_n_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_2_n_0\,
      I2 => s_axi4_araddr(0),
      I3 => s_axi4_arvalid,
      I4 => s_axi4_awaddr(0),
      O => p_6_out
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \^store_axi_signal_cmb\,
      D => p_6_out,
      Q => p_23_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => Q(0),
      I1 => p_24_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => irpt_wrack_d1,
      O => \bus2ip_BE_reg_reg[3]\
    );
\SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_8_in,
      I1 => \^bus_rnw_reg_reg_0\,
      O => bus2ip_wrce_int(0)
    );
\SPISSR_WR_GEN[0].SPISSR_Data_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi4_wdata(0),
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_4_in,
      I3 => ip2Bus_WrAck_core_reg,
      I4 => SPISSR_frm_axi_clk,
      O => s_axi4_wdata_0_sn_1
    );
\S_AXI4_BRESP_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABA8"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_4\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(5),
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(4),
      I3 => s_axi4_bresp(0),
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0),
      O => \FSM_onehot_axi_full_sm_ps_reg[5]\
    );
Transmit_ip2bus_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004E0000000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(4),
      I1 => s_axi_wready_i,
      I2 => almost_full,
      I3 => Tx_FIFO_Full_int,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_6_in,
      O => Transmit_ip2bus_error0
    );
intr2bus_rdack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400440044004000"
    )
        port map (
      I0 => irpt_rdack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_25_in,
      I3 => Q(0),
      I4 => p_22_in,
      I5 => p_24_in,
      O => intr2bus_rdack0
    );
intr2bus_wrack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000505000005040"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => p_22_in,
      I2 => Q(0),
      I3 => p_24_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_25_in,
      O => interrupt_wrce_strb
    );
ip2Bus_RdAck_intr_reg_hole_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      O => intr_controller_rd_ce_or_reduce
    );
ip2Bus_RdAck_intr_reg_hole_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      I2 => ip2Bus_RdAck_intr_reg_hole_d1,
      O => ip2Bus_RdAck_intr_reg_hole0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      O => Bus_RNW_reg_reg_3
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0,
      I2 => p_18_in,
      I3 => p_26_in,
      I4 => p_21_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_17_in,
      I1 => p_32_in,
      I2 => p_29_in,
      I3 => p_20_in,
      I4 => p_30_in,
      I5 => p_31_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0
    );
ip2Bus_WrAck_intr_reg_hole_d1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_27_in,
      I1 => p_19_in,
      I2 => p_28_in,
      I3 => p_23_in,
      O => ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0
    );
ip2Bus_WrAck_intr_reg_hole_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0,
      I2 => ip2Bus_WrAck_intr_reg_hole_d1,
      O => ip2Bus_WrAck_intr_reg_hole0
    );
\ip_irpt_enable_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => Q(0),
      I2 => p_22_in,
      O => Bus_RNW_reg_reg_2(0)
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi4_wdata(3),
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_25_in,
      I3 => Q(0),
      I4 => ipif_glbl_irpt_enable_reg,
      O => \s_axi4_wdata[31]\
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0A080"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_25_in,
      I2 => Q(0),
      I3 => p_22_in,
      I4 => p_24_in,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CC00C8"
    )
        port map (
      I0 => p_22_in,
      I1 => Q(0),
      I2 => p_24_in,
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => p_25_in,
      O => irpt_wrack
    );
last_data_acked_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA88A8"
    )
        port map (
      I0 => last_data_acked_reg,
      I1 => last_data_acked_reg_0,
      I2 => \^d\(0),
      I3 => last_data_acked_reg_1,
      I4 => last_data_acked_reg_2,
      I5 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0),
      O => \FSM_onehot_axi_full_sm_ps_reg[0]\
    );
last_data_acked_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg[6]\(4),
      I1 => \FSM_onehot_axi_full_sm_ps_reg[6]\(7),
      I2 => \FSM_onehot_axi_full_sm_ps_reg[6]\(5),
      I3 => \FSM_onehot_axi_full_sm_ps_reg[6]\(6),
      O => \^length_cntr_reg[4]\
    );
\length_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg[6]\(2),
      I1 => \FSM_onehot_axi_full_sm_ps_reg[6]\(3),
      I2 => \FSM_onehot_axi_full_sm_ps_reg[6]\(0),
      I3 => \FSM_onehot_axi_full_sm_ps_reg[6]\(1),
      O => \^length_cntr_reg[2]\
    );
modf_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_7_in,
      O => Bus_RNW_reg_reg_5
    );
reset_trig_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_16_in,
      I2 => \s_axi4_rresp_i_reg[1]\,
      I3 => sw_rst_cond_d1,
      O => reset_trig0
    );
\s_axi4_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => p_24_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_22_in,
      I3 => Q(0),
      I4 => \s_axi4_rdata_i_reg[8]\(0),
      I5 => \s_axi4_rdata_i[0]_i_4_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\
    );
\s_axi4_rdata_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4F4F4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_4_n_0\,
      I1 => \s_axi4_rdata_i[0]_i_2_0\,
      I2 => \s_axi4_rdata_i[0]_i_6_n_0\,
      I3 => SPISSR_frm_axi_clk,
      I4 => p_4_in,
      I5 => \^bus_rnw_reg_reg_0\,
      O => \s_axi4_rdata_i[0]_i_4_n_0\
    );
\s_axi4_rdata_i[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^p_2_in\,
      I1 => empty,
      I2 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\
    );
\s_axi4_rdata_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080F080F0808080"
    )
        port map (
      I0 => p_8_in,
      I1 => spicr_0_loop_frm_axi_clk,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => empty,
      I5 => rx_fifo_empty_i,
      O => \s_axi4_rdata_i[0]_i_6_n_0\
    );
\s_axi4_rdata_i[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi4_rdata_i_reg[8]\(1),
      I2 => \s_axi4_rdata_i[1]_i_5_n_0\,
      I3 => p_1_in35_in,
      I4 => \s_axi4_rdata_i[8]_i_4_n_0\,
      O => \ip_irpt_enable_reg_reg[1]\
    );
\s_axi4_rdata_i[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_8_in,
      I1 => spicr_1_spe_frm_axi_clk,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => scndry_out,
      O => \s_axi4_rdata_i[1]_i_5_n_0\
    );
\s_axi4_rdata_i[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi4_rdata_i_reg[8]\(2),
      I2 => \s_axi4_rdata_i[2]_i_5_n_0\,
      I3 => p_1_in32_in,
      I4 => \s_axi4_rdata_i[8]_i_4_n_0\,
      O => \ip_irpt_enable_reg_reg[2]\
    );
\s_axi4_rdata_i[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_8_in,
      I1 => spicr_2_mst_n_slv_frm_axi_clk,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => Tx_FIFO_Empty_SPISR_to_axi_clk,
      O => \s_axi4_rdata_i[2]_i_5_n_0\
    );
\s_axi4_rdata_i[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => p_24_in,
      I1 => p_22_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_25_in,
      I4 => Q(0),
      I5 => ipif_glbl_irpt_enable_reg,
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\(2)
    );
\s_axi4_rdata_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi4_rdata_i_reg[8]\(3),
      I2 => \s_axi4_rdata_i[3]_i_5_n_0\,
      I3 => p_1_in29_in,
      I4 => \s_axi4_rdata_i[8]_i_4_n_0\,
      O => \ip_irpt_enable_reg_reg[3]\
    );
\s_axi4_rdata_i[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_8_in,
      I1 => spicr_3_cpol_frm_axi_clk,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => Tx_FIFO_Full_int,
      O => \s_axi4_rdata_i[3]_i_5_n_0\
    );
\s_axi4_rdata_i[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi4_rdata_i_reg[8]\(4),
      I2 => \s_axi4_rdata_i[4]_i_5_n_0\,
      I3 => p_1_in26_in,
      I4 => \s_axi4_rdata_i[8]_i_4_n_0\,
      O => \ip_irpt_enable_reg_reg[4]\
    );
\s_axi4_rdata_i[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_7_in,
      I1 => sr_3_MODF_int,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_8_in,
      I4 => spicr_4_cpha_frm_axi_clk,
      O => \s_axi4_rdata_i[4]_i_5_n_0\
    );
\s_axi4_rdata_i[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi4_rdata_i_reg[8]\(5),
      I2 => \s_axi4_rdata_i[5]_i_5_n_0\,
      I3 => p_1_in23_in,
      I4 => \s_axi4_rdata_i[8]_i_4_n_0\,
      O => \ip_irpt_enable_reg_reg[5]\
    );
\s_axi4_rdata_i[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_8_in,
      I1 => spicr_5_txfifo_rst_frm_axi_clk,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => spisel_d1_reg_to_axi_clk,
      O => \s_axi4_rdata_i[5]_i_5_n_0\
    );
\s_axi4_rdata_i[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi4_rdata_i_reg[8]\(6),
      I2 => spicr_6_rxfifo_rst_frm_axi_clk,
      I3 => \s_axi4_rdata_i[8]_i_3_n_0\,
      I4 => p_1_in20_in,
      I5 => \s_axi4_rdata_i[8]_i_4_n_0\,
      O => \ip_irpt_enable_reg_reg[6]\
    );
\s_axi4_rdata_i[6]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^p_3_in\,
      I1 => Tx_FIFO_Empty_SPISR_to_axi_clk,
      I2 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\
    );
\s_axi4_rdata_i[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777F777F7F"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(2),
      I3 => \s_axi4_rdata_i_reg[7]\,
      I4 => s_axi4_rready,
      I5 => ip2Bus_RdAck_core_reg,
      O => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_1\
    );
\s_axi4_rdata_i[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi4_rdata_i_reg[8]\(7),
      I2 => p_1_in17_in,
      I3 => \s_axi4_rdata_i[8]_i_4_n_0\,
      I4 => spicr_7_ss_frm_axi_clk,
      I5 => \s_axi4_rdata_i[8]_i_3_n_0\,
      O => \ip_irpt_enable_reg_reg[7]\
    );
\s_axi4_rdata_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \s_axi4_rdata_i[8]_i_2_n_0\,
      I1 => \s_axi4_rdata_i_reg[8]\(8),
      I2 => spicr_8_tr_inhibit_frm_axi_clk,
      I3 => \s_axi4_rdata_i[8]_i_3_n_0\,
      I4 => p_1_in14_in,
      I5 => \s_axi4_rdata_i[8]_i_4_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\(0)
    );
\s_axi4_rdata_i[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => p_24_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_22_in,
      I3 => Q(0),
      O => \s_axi4_rdata_i[8]_i_2_n_0\
    );
\s_axi4_rdata_i[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_8_in,
      O => \s_axi4_rdata_i[8]_i_3_n_0\
    );
\s_axi4_rdata_i[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => p_24_in,
      I1 => Q(0),
      I2 => \^bus_rnw_reg_reg_0\,
      O => \s_axi4_rdata_i[8]_i_4_n_0\
    );
\s_axi4_rdata_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => spicr_9_lsb_frm_axi_clk,
      I1 => p_8_in,
      I2 => \^bus_rnw_reg_reg_0\,
      O => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\(1)
    );
\s_axi4_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF40"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_16_in,
      I2 => \s_axi4_rresp_i_reg[1]\,
      I3 => p_1_in,
      I4 => \s_axi4_rresp_i_reg[1]_0\,
      O => \^bus_rnw_reg_reg_4\
    );
sw_rst_cond_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_axi4_rresp_i_reg[1]\,
      I1 => p_16_in,
      I2 => \^bus_rnw_reg_reg_0\,
      O => sw_rst_cond
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2000000"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \s_axi4_rdata_i_reg[7]\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(2),
      I3 => \^bus_rnw_reg_reg_0\,
      I4 => \^gen_bkend_ce_registers[27].ce_out_i_reg[27]_0\,
      I5 => empty,
      O => rd_en
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040000000400"
    )
        port map (
      I0 => \^bus_rnw_reg_reg_0\,
      I1 => p_6_in,
      I2 => almost_full,
      I3 => ip2Bus_WrAck_core_reg,
      I4 => \gwack.wr_ack_i_reg\,
      I5 => s_axi4_wready,
      O => IP2Bus_WrAck_transmit_enable
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_qspi_cntrl_reg is
  port (
    spicr_bits_7_8_frm_axi_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    spicr_0_loop_frm_axi_clk : out STD_LOGIC;
    spicr_1_spe_frm_axi_clk : out STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ : out STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : out STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : out STD_LOGIC;
    spicr_7_ss_frm_axi_clk : out STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : out STD_LOGIC;
    spicr_9_lsb_frm_axi_clk : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\ : out STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : out STD_LOGIC;
    \s_axi4_wdata[8]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset2ip_reset_int : in STD_LOGIC;
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_aclk : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\ : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\ : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]\ : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\ : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ : in STD_LOGIC;
    data_Exists_RcFIFO_int_d1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_qspi_cntrl_reg : entity is "qspi_cntrl_reg";
end xlnx_axi_quad_spi_qspi_cntrl_reg;

architecture STRUCTURE of xlnx_axi_quad_spi_qspi_cntrl_reg is
  signal \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2\ : label is "soft_lutpair0";
  attribute box_type : string;
  attribute box_type of \SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I\ : label is "PRIMITIVE";
  attribute box_type of \SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \ip_irpt_enable_reg[8]_i_2\ : label is "soft_lutpair0";
begin
  \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ <= \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\;
\CONTROL_REG_1_2_GENERATE[1].SPICR_data_int_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(6),
      Q => spicr_8_tr_inhibit_frm_axi_clk,
      S => reset2ip_reset_int
    );
\CONTROL_REG_1_2_GENERATE[2].SPICR_data_int_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(5),
      Q => spicr_7_ss_frm_axi_clk,
      S => reset2ip_reset_int
    );
\CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\,
      Q => spicr_6_rxfifo_rst_frm_axi_clk,
      R => '0'
    );
\CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\,
      Q => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\,
      R => '0'
    );
\CONTROL_REG_5_9_GENERATE[5].SPICR_data_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(4),
      Q => spicr_4_cpha_frm_axi_clk,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[6].SPICR_data_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(3),
      Q => spicr_3_cpol_frm_axi_clk,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(2),
      Q => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[8].SPICR_data_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(1),
      Q => spicr_1_spe_frm_axi_clk,
      R => reset2ip_reset_int
    );
\CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(0),
      Q => spicr_0_loop_frm_axi_clk,
      R => reset2ip_reset_int
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD5FF2A00"
    )
        port map (
      I0 => s_axi4_wdata(6),
      I1 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I2 => \ip_irpt_enable_reg_reg[8]\,
      I3 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\,
      I4 => p_1_in14_in,
      I5 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\,
      O => \s_axi4_wdata[8]\
    );
\GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\,
      I1 => data_Exists_RcFIFO_int_d1,
      I2 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I3 => \ip_irpt_enable_reg_reg[8]\,
      O => \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg[8]_i_2_n_0\
    );
\SPICR_REG_78_GENERATE[7].SPI_TRISTATE_CONTROL_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi4_wdata(2),
      Q => spicr_bits_7_8_frm_axi_clk(1),
      R => reset2ip_reset_int
    );
\SPICR_REG_78_GENERATE[8].SPI_TRISTATE_CONTROL_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => bus2ip_wrce_int(0),
      D => s_axi4_wdata(1),
      Q => spicr_bits_7_8_frm_axi_clk(0),
      R => reset2ip_reset_int
    );
\SPICR_data_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\,
      D => s_axi4_wdata(7),
      Q => spicr_9_lsb_frm_axi_clk,
      R => reset2ip_reset_int
    );
\ip_irpt_enable_reg[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => s_axi4_wdata(6),
      I1 => \^control_reg_5_9_generate[7].spicr_data_int_reg[7]_0\,
      I2 => \ip_irpt_enable_reg_reg[8]\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_qspi_fifo_ifmodule is
  port (
    rc_FIFO_Full_d1 : out STD_LOGIC;
    tx_FIFO_Empty_d1 : out STD_LOGIC;
    Receive_ip2bus_error_reg_0 : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    tx_FIFO_Occpncy_MSB_d1 : out STD_LOGIC;
    dtr_underrun_d1 : out STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    Rx_FIFO_Full_Fifo_d1_synced_i : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    Tx_FIFO_Empty_intr : in STD_LOGIC;
    Receive_ip2bus_error0 : in STD_LOGIC;
    Transmit_ip2bus_error0 : in STD_LOGIC;
    tx_occ_msb : in STD_LOGIC;
    dtr_underrun_to_axi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_qspi_fifo_ifmodule : entity is "qspi_fifo_ifmodule";
end xlnx_axi_quad_spi_qspi_fifo_ifmodule;

architecture STRUCTURE of xlnx_axi_quad_spi_qspi_fifo_ifmodule is
begin
Receive_ip2bus_error_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Receive_ip2bus_error0,
      Q => Receive_ip2bus_error_reg_0,
      R => reset2ip_reset_int
    );
Transmit_ip2bus_error_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Transmit_ip2bus_error0,
      Q => p_1_in,
      R => reset2ip_reset_int
    );
dtr_underrun_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => dtr_underrun_to_axi_clk,
      Q => dtr_underrun_d1,
      R => reset2ip_reset_int
    );
rc_FIFO_Full_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Rx_FIFO_Full_Fifo_d1_synced_i,
      Q => rc_FIFO_Full_d1,
      R => reset2ip_reset_int
    );
tx_FIFO_Empty_d1_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => Tx_FIFO_Empty_intr,
      Q => tx_FIFO_Empty_d1,
      S => reset2ip_reset_int
    );
tx_FIFO_Occpncy_MSB_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_occ_msb,
      Q => tx_FIFO_Occpncy_MSB_d1,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_qspi_mode_0_module is
  port (
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    SPISEL_sync : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    slave_MODF_strobe_int : out STD_LOGIC;
    modf_strobe_int : out STD_LOGIC;
    spisel_d1_reg : out STD_LOGIC;
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0\ : out STD_LOGIC;
    spiXfer_done_int : out STD_LOGIC;
    transfer_start_d1 : out STD_LOGIC;
    transfer_start_reg_0 : out STD_LOGIC;
    Allow_Slave_MODF_Strobe : out STD_LOGIC;
    Allow_MODF_Strobe : out STD_LOGIC;
    Ratio_Count : out STD_LOGIC;
    Count_trigger : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    serial_dout_int : out STD_LOGIC;
    dtr_underrun_int : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_9_out : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    p_5_out : out STD_LOGIC;
    p_2_out : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D_0 : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    SPI_TRISTATE_CONTROL_V_0 : in STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    R : in STD_LOGIC;
    Allow_MODF_Strobe_reg_0 : in STD_LOGIC;
    Slave_MODF_strobe0 : in STD_LOGIC;
    MODF_strobe0 : in STD_LOGIC;
    Rst_to_spi : in STD_LOGIC;
    empty : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Allow_Slave_MODF_Strobe_reg_0 : in STD_LOGIC;
    transfer_start_reg_1 : in STD_LOGIC;
    \SS_O_reg[0]_0\ : in STD_LOGIC;
    SPICR_2_MST_N_SLV_to_spi_clk : in STD_LOGIC;
    \OTHER_RATIO_GENERATE.sck_o_int_reg_0\ : in STD_LOGIC;
    \OTHER_RATIO_GENERATE.Serial_Dout_reg_0\ : in STD_LOGIC;
    spicr_1_spe_to_spi_clk : in STD_LOGIC;
    \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg\ : in STD_LOGIC;
    \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg\ : in STD_LOGIC;
    \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg\ : in STD_LOGIC;
    \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg\ : in STD_LOGIC;
    p_6_out : in STD_LOGIC;
    \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_1\ : in STD_LOGIC;
    spicr_3_cpol_to_spi_clk : in STD_LOGIC;
    spicr_4_cpha_to_spi_clk : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spicr_9_lsb_to_spi_clk : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    spicr_0_loop_to_spi_clk : in STD_LOGIC;
    register_Data_slvsel_int : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_qspi_mode_0_module : entity is "qspi_mode_0_module";
end xlnx_axi_quad_spi_qspi_mode_0_module;

architecture STRUCTURE of xlnx_axi_quad_spi_qspi_mode_0_module is
  signal \^allow_modf_strobe\ : STD_LOGIC;
  signal Allow_MODF_Strobe_i_1_n_0 : STD_LOGIC;
  signal Count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^count_trigger\ : STD_LOGIC;
  signal Count_trigger_d1 : STD_LOGIC;
  signal \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0\ : STD_LOGIC;
  signal \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0\ : STD_LOGIC;
  signal \^logic_generation_fdr.spicr_0_loop_ax2s_2\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[2]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[3]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count[4]_i_4_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0\ : STD_LOGIC;
  signal \OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2_n_0\ : STD_LOGIC;
  signal \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \^ratio_count\ : STD_LOGIC;
  signal SCK_I_sync : STD_LOGIC;
  signal SCK_O_1 : STD_LOGIC;
  signal \^spisel_sync\ : STD_LOGIC;
  signal SPIXfer_done_int_d1 : STD_LOGIC;
  signal SPIXfer_done_int_pulse : STD_LOGIC;
  signal SPIXfer_done_int_pulse_d1 : STD_LOGIC;
  signal SR_5_Tx_Empty_d1 : STD_LOGIC;
  signal SR_5_Tx_comeplete_Empty : STD_LOGIC;
  signal SR_5_Tx_comeplete_Empty_i_1_n_0 : STD_LOGIC;
  signal \SS_O[0]_i_3_n_0\ : STD_LOGIC;
  signal \SS_O[0]_i_4_n_0\ : STD_LOGIC;
  signal Serial_Din : STD_LOGIC;
  signal drr_Overrun_int : STD_LOGIC;
  signal \^dtr_underrun_int\ : STD_LOGIC;
  signal \^io1_o\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal \^modf_strobe_int\ : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_19_out20_out : STD_LOGIC;
  signal p_37_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal rx_shft_reg_mode_0011 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_shft_reg_mode_0110 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_shft_reg_s : STD_LOGIC_VECTOR ( 0 to 7 );
  signal sck_d1 : STD_LOGIC;
  signal sck_d2 : STD_LOGIC;
  signal sck_i_d1 : STD_LOGIC;
  signal sck_o_int : STD_LOGIC;
  signal \^spixfer_done_int\ : STD_LOGIC;
  signal spi_cntrl_ps : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spisel_d1 : STD_LOGIC;
  signal \^spisel_d1_reg\ : STD_LOGIC;
  signal spisel_once_1 : STD_LOGIC;
  signal spisel_once_1_i_1_n_0 : STD_LOGIC;
  signal stop_clock : STD_LOGIC;
  signal stop_clock_reg : STD_LOGIC;
  signal \^transfer_start_d1\ : STD_LOGIC;
  signal \^transfer_start_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2\ : label is "soft_lutpair89";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[0]\ : label is "transfer_okay:01,temp_transfer_okay:10,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\ : label is "transfer_okay:01,temp_transfer_okay:10,idle:00";
  attribute SOFT_HLUTNM of \LOCAL_TX_EMPTY_FIFO_12_GEN.DRR_Overrun_reg_int_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[1]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[2]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[3]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[4]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count[4]_i_4\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Count_trigger_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.sck_o_int_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.serial_dout_int_i_1\ : label is "soft_lutpair89";
  attribute IOB : string;
  attribute IOB of \RATIO_OF_4_GENERATE.SCK_O_EQ_4_NO_STARTUP_USED.SCK_O_EQ_4_FDRE_INST\ : label is "TRUE";
  attribute box_type : string;
  attribute box_type of \RATIO_OF_4_GENERATE.SCK_O_EQ_4_NO_STARTUP_USED.SCK_O_EQ_4_FDRE_INST\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1\ : label is "soft_lutpair82";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of SCK_I_REG : label is "FD";
  attribute box_type of SCK_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of SPISEL_REG : label is "FD";
  attribute box_type of SPISEL_REG : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of SPIXfer_done_int_pulse_d1_i_1 : label is "soft_lutpair86";
  attribute XILINX_LEGACY_PRIM of SPI_TRISTATE_CONTROL_II : label is "FD";
  attribute box_type of SPI_TRISTATE_CONTROL_II : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of SPI_TRISTATE_CONTROL_III : label is "FD";
  attribute box_type of SPI_TRISTATE_CONTROL_III : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of SPI_TRISTATE_CONTROL_IV : label is "FD";
  attribute box_type of SPI_TRISTATE_CONTROL_IV : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of SPI_TRISTATE_CONTROL_V : label is "FD";
  attribute box_type of SPI_TRISTATE_CONTROL_V : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of SR_5_Tx_comeplete_Empty_i_1 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \SS_O[0]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \SS_O[0]_i_4\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of spisel_once_1_i_1 : label is "soft_lutpair88";
begin
  Allow_MODF_Strobe <= \^allow_modf_strobe\;
  Count_trigger <= \^count_trigger\;
  \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2\ <= \^logic_generation_fdr.spicr_0_loop_ax2s_2\;
  \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0\ <= \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\;
  Ratio_Count <= \^ratio_count\;
  SPISEL_sync <= \^spisel_sync\;
  dtr_underrun_int <= \^dtr_underrun_int\;
  io1_o <= \^io1_o\;
  modf_strobe_int <= \^modf_strobe_int\;
  spiXfer_done_int <= \^spixfer_done_int\;
  spisel_d1_reg <= \^spisel_d1_reg\;
  transfer_start_d1 <= \^transfer_start_d1\;
  transfer_start_reg_0 <= \^transfer_start_reg_0\;
Allow_MODF_Strobe_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^allow_modf_strobe\,
      I1 => SPICR_2_MST_N_SLV_to_spi_clk,
      O => Allow_MODF_Strobe_i_1_n_0
    );
Allow_MODF_Strobe_reg: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Allow_MODF_Strobe_i_1_n_0,
      Q => \^allow_modf_strobe\,
      S => Allow_MODF_Strobe_reg_0
    );
Allow_Slave_MODF_Strobe_reg: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Allow_Slave_MODF_Strobe_reg_0,
      Q => Allow_Slave_MODF_Strobe,
      S => Allow_MODF_Strobe_reg_0
    );
\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA228000"
    )
        port map (
      I0 => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2_n_0\,
      I1 => spicr_1_spe_to_spi_clk,
      I2 => SPIXfer_done_int_pulse,
      I3 => SR_5_Tx_comeplete_Empty,
      I4 => \^dtr_underrun_int\,
      I5 => SPICR_2_MST_N_SLV_to_spi_clk,
      O => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0\
    );
\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^spisel_sync\,
      I1 => Rst_to_spi,
      O => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_2_n_0\
    );
\DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \DTR_UNDERRUN_FIFO_EXIST_GEN.DTR_underrun_i_1_n_0\,
      Q => \^dtr_underrun_int\,
      R => '0'
    );
\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0008000FFF08"
    )
        port map (
      I0 => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\,
      I1 => SPICR_2_MST_N_SLV_to_spi_clk,
      I2 => empty,
      I3 => spi_cntrl_ps(1),
      I4 => spi_cntrl_ps(0),
      I5 => SR_5_Tx_comeplete_Empty,
      O => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0\
    );
\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^transfer_start_reg_0\,
      I1 => \^transfer_start_d1\,
      O => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\
    );
\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0\,
      I1 => \^spixfer_done_int\,
      I2 => register_Data_slvsel_int,
      I3 => spi_cntrl_ps(0),
      O => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0\
    );
\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000AAA3F000000"
    )
        port map (
      I0 => empty,
      I1 => spicr_0_loop_to_spi_clk,
      I2 => \^spixfer_done_int\,
      I3 => SR_5_Tx_comeplete_Empty,
      I4 => spi_cntrl_ps(1),
      I5 => spi_cntrl_ps(0),
      O => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_2_n_0\
    );
\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_1_n_0\,
      Q => spi_cntrl_ps(0),
      R => Rst_to_spi
    );
\FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[1]_i_1_n_0\,
      Q => spi_cntrl_ps(1),
      R => Rst_to_spi
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.DRR_Overrun_reg_int_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => scndry_out,
      I1 => almost_full,
      I2 => \^spixfer_done_int\,
      I3 => drr_Overrun_int,
      O => p_37_out
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.DRR_Overrun_reg_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => p_37_out,
      Q => drr_Overrun_int,
      R => Rst_to_spi
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^logic_generation_fdr.spicr_0_loop_ax2s_2\,
      O => stop_clock
    );
\LOCAL_TX_EMPTY_FIFO_12_GEN.stop_clock_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => stop_clock,
      Q => stop_clock_reg,
      R => Rst_to_spi
    );
\LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => drr_Overrun_int,
      I1 => \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg\,
      O => p_0_out
    );
\LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^modf_strobe_int\,
      I1 => \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg\,
      O => p_5_out
    );
\LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg\,
      O => p_2_out
    );
\LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg\,
      I1 => spisel_d1,
      I2 => \^spisel_d1_reg\,
      O => p_9_out
    );
MODF_strobe_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => MODF_strobe0,
      Q => \^modf_strobe_int\,
      R => Allow_MODF_Strobe_reg_0
    );
\OTHER_RATIO_GENERATE.Count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I1 => load,
      O => Count(0)
    );
\OTHER_RATIO_GENERATE.Count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I2 => load,
      O => Count(1)
    );
\OTHER_RATIO_GENERATE.Count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => load,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      O => \OTHER_RATIO_GENERATE.Count[2]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => load,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      I4 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      O => \OTHER_RATIO_GENERATE.Count[3]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDDFD"
    )
        port map (
      I0 => \^transfer_start_reg_0\,
      I1 => Rst_to_spi,
      I2 => \^spisel_sync\,
      I3 => SPICR_2_MST_N_SLV_to_spi_clk,
      I4 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      O => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202020202F2F20"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count[4]_i_4_n_0\,
      I1 => load,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => SCK_I_sync,
      I4 => sck_i_d1,
      I5 => \^spisel_sync\,
      O => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\
    );
\OTHER_RATIO_GENERATE.Count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      I1 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I4 => load,
      O => Count(4)
    );
\OTHER_RATIO_GENERATE.Count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Count_trigger_d1,
      I1 => \^count_trigger\,
      O => \OTHER_RATIO_GENERATE.Count[4]_i_4_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => Count(0),
      Q => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => Count(1),
      Q => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => \OTHER_RATIO_GENERATE.Count[2]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => \OTHER_RATIO_GENERATE.Count[3]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Count[4]_i_2_n_0\,
      D => Count(4),
      Q => load,
      R => \OTHER_RATIO_GENERATE.Count[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_trigger_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^count_trigger\,
      I1 => \^transfer_start_reg_0\,
      I2 => Rst_to_spi,
      O => \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_trigger_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Count_trigger_d1_i_1_n_0\,
      Q => Count_trigger_d1,
      R => '0'
    );
\OTHER_RATIO_GENERATE.Count_trigger_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0090"
    )
        port map (
      I0 => \^count_trigger\,
      I1 => \^ratio_count\,
      I2 => \^transfer_start_reg_0\,
      I3 => Rst_to_spi,
      O => \OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Count_trigger_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Count_trigger_i_1_n_0\,
      Q => \^count_trigger\,
      R => '0'
    );
\OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^transfer_start_reg_0\,
      I1 => Rst_to_spi,
      I2 => \^ratio_count\,
      O => \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Ratio_Count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Ratio_Count[0]_i_1_n_0\,
      Q => \^ratio_count\,
      R => '0'
    );
\OTHER_RATIO_GENERATE.Serial_Dout_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_3_in,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => \OTHER_RATIO_GENERATE.Serial_Dout_reg_0\,
      I3 => \OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0\,
      I4 => \^io1_o\,
      O => \OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Serial_Dout_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101F1010101F101F"
    )
        port map (
      I0 => SPIXfer_done_int_d1,
      I1 => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      I4 => empty,
      I5 => SR_5_Tx_Empty_d1,
      O => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\
    );
\OTHER_RATIO_GENERATE.Serial_Dout_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF500F7FFF5FF"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I1 => \^transfer_start_d1\,
      I2 => SPIXfer_done_int_d1,
      I3 => SPICR_2_MST_N_SLV_to_spi_clk,
      I4 => \^transfer_start_reg_0\,
      I5 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0\,
      O => \OTHER_RATIO_GENERATE.Serial_Dout_i_4_n_0\
    );
\OTHER_RATIO_GENERATE.Serial_Dout_reg\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.Serial_Dout_i_1_n_0\,
      Q => \^io1_o\,
      S => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACFC0CF"
    )
        port map (
      I0 => \^transfer_start_reg_0\,
      I1 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0\,
      I4 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0\,
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1]\,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => dout(0),
      I3 => spicr_9_lsb_to_spi_clk,
      I4 => dout(7),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFFFF2F2F2F2F2"
    )
        port map (
      I0 => \^transfer_start_reg_0\,
      I1 => \^transfer_start_d1\,
      I2 => SPIXfer_done_int_d1,
      I3 => Count_trigger_d1,
      I4 => \^count_trigger\,
      I5 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_3_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      I1 => empty,
      I2 => SR_5_Tx_Empty_d1,
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_4_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060900"
    )
        port map (
      I0 => spicr_3_cpol_to_spi_clk,
      I1 => spicr_4_cpha_to_spi_clk,
      I2 => \^spisel_sync\,
      I3 => SCK_I_sync,
      I4 => sck_i_d1,
      O => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2]\,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => dout(1),
      I3 => spicr_9_lsb_to_spi_clk,
      I4 => dout(6),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3]\,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => dout(2),
      I3 => spicr_9_lsb_to_spi_clk,
      I4 => dout(5),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4]\,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => dout(3),
      I3 => spicr_9_lsb_to_spi_clk,
      I4 => dout(4),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5]\,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => dout(4),
      I3 => spicr_9_lsb_to_spi_clk,
      I4 => dout(3),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6]\,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => dout(5),
      I3 => spicr_9_lsb_to_spi_clk,
      I4 => dout(2),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7]\,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => dout(6),
      I3 => spicr_9_lsb_to_spi_clk,
      I4 => dout(1),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Serial_Din,
      I1 => \OTHER_RATIO_GENERATE.Serial_Dout_i_2_n_0\,
      I2 => dout(7),
      I3 => spicr_9_lsb_to_spi_clk,
      I4 => dout(0),
      O => \OTHER_RATIO_GENERATE.Shift_Reg[7]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_2_n_0\,
      Q => p_3_in,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[1]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[1]\,
      S => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[2]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[2]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[3]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[3]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[4]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[4]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[5]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[5]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[6]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[6]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.Shift_Reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_1_n_0\,
      D => \OTHER_RATIO_GENERATE.Shift_Reg[7]_i_1_n_0\,
      Q => \OTHER_RATIO_GENERATE.Shift_Reg_reg_n_0_[7]\,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sck_d1,
      I1 => \^transfer_start_reg_0\,
      I2 => sck_d2,
      O => p_19_out20_out
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(1),
      Q => rx_shft_reg_mode_0011(0),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(2),
      Q => rx_shft_reg_mode_0011(1),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(3),
      Q => rx_shft_reg_mode_0011(2),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(4),
      Q => rx_shft_reg_mode_0011(3),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(5),
      Q => rx_shft_reg_mode_0011(4),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(6),
      Q => rx_shft_reg_mode_0011(5),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => rx_shft_reg_mode_0011(7),
      Q => rx_shft_reg_mode_0011(6),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0011_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_19_out20_out,
      D => D(0),
      Q => rx_shft_reg_mode_0011(7),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sck_d2,
      I1 => \^transfer_start_reg_0\,
      I2 => sck_d1,
      O => p_17_out
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(1),
      Q => rx_shft_reg_mode_0110(0),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(2),
      Q => rx_shft_reg_mode_0110(1),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(3),
      Q => rx_shft_reg_mode_0110(2),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(4),
      Q => rx_shft_reg_mode_0110(3),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(5),
      Q => rx_shft_reg_mode_0110(4),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(6),
      Q => rx_shft_reg_mode_0110(5),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => rx_shft_reg_mode_0110(7),
      Q => rx_shft_reg_mode_0110(6),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_mode_0110_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => p_17_out,
      D => D(0),
      Q => rx_shft_reg_mode_0110(7),
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002202"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0\,
      I1 => SPICR_2_MST_N_SLV_to_spi_clk,
      I2 => SR_5_Tx_Empty_d1,
      I3 => empty,
      I4 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      I5 => p_6_out,
      O => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(1),
      Q => rx_shft_reg_s(0),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(2),
      Q => rx_shft_reg_s(1),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(3),
      Q => rx_shft_reg_s(2),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(4),
      Q => rx_shft_reg_s(3),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(5),
      Q => rx_shft_reg_s(4),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(6),
      Q => rx_shft_reg_s(5),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => rx_shft_reg_s(7),
      Q => rx_shft_reg_s(6),
      R => '0'
    );
\OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_1_n_0\,
      D => Serial_Din,
      Q => rx_shft_reg_s(7),
      R => '0'
    );
\OTHER_RATIO_GENERATE.sck_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_o_int,
      Q => sck_d1,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.sck_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_d1,
      Q => sck_d2,
      R => Rst_to_spi
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AB0000000000"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.sck_o_int_reg_0\,
      I1 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      I2 => \FSM_sequential_LOCAL_TX_EMPTY_FIFO_12_GEN.spi_cntrl_ps[0]_i_2_n_0\,
      I3 => SPICR_2_MST_N_SLV_to_spi_clk,
      I4 => Rst_to_spi,
      I5 => \OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0\,
      O => \OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FFF9F9F60FF6060"
    )
        port map (
      I0 => Count_trigger_d1,
      I1 => \^count_trigger\,
      I2 => \^transfer_start_reg_0\,
      I3 => \OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0\,
      I4 => \OTHER_RATIO_GENERATE.sck_o_int_reg_0\,
      I5 => sck_o_int,
      O => \OTHER_RATIO_GENERATE.sck_o_int_i_3_n_0\
    );
\OTHER_RATIO_GENERATE.sck_o_int_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      I1 => \^transfer_start_d1\,
      I2 => \^transfer_start_reg_0\,
      O => \OTHER_RATIO_GENERATE.sck_o_int_i_4_n_0\
    );
\OTHER_RATIO_GENERATE.sck_o_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.sck_o_int_i_1_n_0\,
      Q => sck_o_int,
      R => '0'
    );
\OTHER_RATIO_GENERATE.serial_dout_int_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^io1_o\,
      I1 => spicr_0_loop_to_spi_clk,
      I2 => Rst_to_spi,
      O => \OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0\
    );
\OTHER_RATIO_GENERATE.serial_dout_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \OTHER_RATIO_GENERATE.serial_dout_int_i_1_n_0\,
      Q => serial_dout_int,
      R => '0'
    );
\RATIO_OF_4_GENERATE.SCK_O_EQ_4_NO_STARTUP_USED.SCK_O_EQ_4_FDRE_INST\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SCK_O_1,
      Q => sck_o,
      R => R
    );
\RATIO_OF_4_GENERATE.SCK_O_EQ_4_NO_STARTUP_USED.SCK_O_EQ_4_FDRE_INST_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F0F0F020000000"
    )
        port map (
      I0 => sck_o_int,
      I1 => load,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => \^transfer_start_d1\,
      I4 => \^transfer_start_reg_0\,
      I5 => spicr_3_cpol_to_spi_clk,
      O => SCK_O_1
    );
\RISING_EDGE_CLK_RATIO_4_GEN.Serial_Din_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => D(0),
      Q => Serial_Din,
      R => Rst_to_spi
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D0"
    )
        port map (
      I0 => \^transfer_start_reg_0\,
      I1 => \^transfer_start_d1\,
      I2 => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2_n_0\,
      I3 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      I4 => Rst_to_spi,
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0A0000000000000"
    )
        port map (
      I0 => \OTHER_RATIO_GENERATE.Shift_Reg[0]_i_5_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_1\,
      I2 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[1]\,
      I3 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[0]\,
      I4 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[3]\,
      I5 => \OTHER_RATIO_GENERATE.Count_reg_n_0_[2]\,
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_i_1_n_0\,
      Q => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => rx_shft_reg_s(7),
      I4 => spicr_9_lsb_to_spi_clk,
      I5 => rx_shft_reg_s(0),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(7),
      I1 => spicr_3_cpol_to_spi_clk,
      I2 => spicr_4_cpha_to_spi_clk,
      I3 => rx_shft_reg_mode_0011(7),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(0),
      I1 => spicr_3_cpol_to_spi_clk,
      I2 => spicr_4_cpha_to_spi_clk,
      I3 => rx_shft_reg_mode_0011(0),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => rx_shft_reg_s(6),
      I4 => spicr_9_lsb_to_spi_clk,
      I5 => rx_shft_reg_s(1),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(1),
      I1 => spicr_3_cpol_to_spi_clk,
      I2 => spicr_4_cpha_to_spi_clk,
      I3 => rx_shft_reg_mode_0011(1),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(6),
      I1 => spicr_3_cpol_to_spi_clk,
      I2 => spicr_4_cpha_to_spi_clk,
      I3 => rx_shft_reg_mode_0011(6),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => rx_shft_reg_s(5),
      I4 => spicr_9_lsb_to_spi_clk,
      I5 => rx_shft_reg_s(2),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(5),
      I1 => spicr_3_cpol_to_spi_clk,
      I2 => spicr_4_cpha_to_spi_clk,
      I3 => rx_shft_reg_mode_0011(5),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(2),
      I1 => spicr_3_cpol_to_spi_clk,
      I2 => spicr_4_cpha_to_spi_clk,
      I3 => rx_shft_reg_mode_0011(2),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => rx_shft_reg_s(4),
      I4 => spicr_9_lsb_to_spi_clk,
      I5 => rx_shft_reg_s(3),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(4),
      I1 => spicr_3_cpol_to_spi_clk,
      I2 => spicr_4_cpha_to_spi_clk,
      I3 => rx_shft_reg_mode_0011(4),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"14D7"
    )
        port map (
      I0 => rx_shft_reg_mode_0110(3),
      I1 => spicr_3_cpol_to_spi_clk,
      I2 => spicr_4_cpha_to_spi_clk,
      I3 => rx_shft_reg_mode_0011(3),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_3_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => rx_shft_reg_s(3),
      I4 => spicr_9_lsb_to_spi_clk,
      I5 => rx_shft_reg_s(4),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_3_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_2_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => rx_shft_reg_s(2),
      I4 => spicr_9_lsb_to_spi_clk,
      I5 => rx_shft_reg_s(5),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_3_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_2_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => rx_shft_reg_s(1),
      I4 => spicr_9_lsb_to_spi_clk,
      I5 => rx_shft_reg_s(6),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F305F5F3F305050"
    )
        port map (
      I0 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_2_n_0\,
      I1 => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_3_n_0\,
      I2 => SPICR_2_MST_N_SLV_to_spi_clk,
      I3 => rx_shft_reg_s(0),
      I4 => spicr_9_lsb_to_spi_clk,
      I5 => rx_shft_reg_s(7),
      O => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0\
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[0]_i_1_n_0\,
      Q => Q(7),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[1]_i_1_n_0\,
      Q => Q(6),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[2]_i_1_n_0\,
      Q => Q(5),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[3]_i_1_n_0\,
      Q => Q(4),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[4]_i_1_n_0\,
      Q => Q(3),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[5]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[6]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => SPIXfer_done_int_pulse_d1,
      D => \RX_DATA_GEN_OTHER_SCK_RATIOS.receive_Data_int[7]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
SCK_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => sck_i,
      Q => SCK_I_sync,
      R => '0'
    );
SPISEL_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => spisel,
      Q => \^spisel_sync\,
      R => '0'
    );
SPIXfer_done_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      Q => SPIXfer_done_int_d1,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      I1 => SPIXfer_done_int_d1,
      O => SPIXfer_done_int_pulse
    );
SPIXfer_done_int_pulse_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse,
      Q => SPIXfer_done_int_pulse_d1,
      R => Rst_to_spi
    );
SPIXfer_done_int_pulse_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPIXfer_done_int_pulse_d1,
      Q => \^spixfer_done_int\,
      R => Rst_to_spi
    );
SPI_TRISTATE_CONTROL_II: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => sck_t,
      R => '0'
    );
SPI_TRISTATE_CONTROL_III: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => io0_t,
      R => '0'
    );
SPI_TRISTATE_CONTROL_IV: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => D_0,
      Q => ss_t,
      R => '0'
    );
SPI_TRISTATE_CONTROL_V: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => SPI_TRISTATE_CONTROL_V_0,
      Q => io1_t,
      R => '0'
    );
SR_5_Tx_Empty_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => empty,
      Q => SR_5_Tx_Empty_d1,
      R => Rst_to_spi
    );
SR_5_Tx_comeplete_Empty_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => SR_5_Tx_comeplete_Empty,
      I1 => \^rx_data_gen_other_sck_ratios.fifo_present_gen.spixfer_done_int_reg_0\,
      I2 => SPIXfer_done_int_d1,
      I3 => empty,
      O => SR_5_Tx_comeplete_Empty_i_1_n_0
    );
SR_5_Tx_comeplete_Empty_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SR_5_Tx_comeplete_Empty_i_1_n_0,
      Q => SR_5_Tx_comeplete_Empty,
      R => '0'
    );
\SS_O[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF750F00FFFF"
    )
        port map (
      I0 => \SS_O[0]_i_3_n_0\,
      I1 => spicr_0_loop_to_spi_clk,
      I2 => \SS_O[0]_i_4_n_0\,
      I3 => spi_cntrl_ps(0),
      I4 => empty,
      I5 => spi_cntrl_ps(1),
      O => \^logic_generation_fdr.spicr_0_loop_ax2s_2\
    );
\SS_O[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFC8"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => SR_5_Tx_comeplete_Empty,
      I2 => register_Data_slvsel_int,
      I3 => stop_clock_reg,
      O => \SS_O[0]_i_3_n_0\
    );
\SS_O[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^spixfer_done_int\,
      I1 => SR_5_Tx_comeplete_Empty,
      O => \SS_O[0]_i_4_n_0\
    );
\SS_O_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \SS_O_reg[0]_0\,
      Q => ss_o(0),
      R => '0'
    );
Slave_MODF_strobe_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Slave_MODF_strobe0,
      Q => slave_MODF_strobe_int,
      R => Allow_MODF_Strobe_reg_0
    );
sck_i_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => SCK_I_sync,
      Q => sck_i_d1,
      R => Rst_to_spi
    );
\spisel_d1_reg__0\: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^spisel_sync\,
      Q => spisel_d1,
      S => Rst_to_spi
    );
spisel_d2_reg: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => spisel_d1,
      Q => \^spisel_d1_reg\,
      S => Rst_to_spi
    );
spisel_once_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => spisel_once_1,
      I1 => spisel_d1,
      I2 => \^spisel_d1_reg\,
      O => spisel_once_1_i_1_n_0
    );
spisel_once_1_reg: unisim.vcomponents.FDSE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => spisel_once_1_i_1_n_0,
      Q => spisel_once_1,
      S => Rst_to_spi
    );
transfer_start_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => \^transfer_start_reg_0\,
      Q => \^transfer_start_d1\,
      R => Rst_to_spi
    );
transfer_start_reg: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => transfer_start_reg_1,
      Q => \^transfer_start_reg_0\,
      R => '0'
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2020FF20"
    )
        port map (
      I0 => \^spisel_d1_reg\,
      I1 => spisel_d1,
      I2 => spisel_once_1,
      I3 => \^transfer_start_reg_0\,
      I4 => \^transfer_start_d1\,
      I5 => \^spixfer_done_int\,
      O => rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_qspi_status_slave_sel_reg is
  port (
    sr_3_MODF_int : out STD_LOGIC;
    SPISSR_frm_axi_clk : out STD_LOGIC;
    modf_reg_0 : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_qspi_status_slave_sel_reg : entity is "qspi_status_slave_sel_reg";
end xlnx_axi_quad_spi_qspi_status_slave_sel_reg;

architecture STRUCTURE of xlnx_axi_quad_spi_qspi_status_slave_sel_reg is
begin
\SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\,
      Q => SPISSR_frm_axi_clk,
      S => reset2ip_reset_int
    );
modf_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => modf_reg_0,
      Q => sr_3_MODF_int,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_reset_sync_module is
  port (
    RESET_SYNC_AX2S_2_0 : out STD_LOGIC;
    Rst_to_spi : out STD_LOGIC;
    p_6_out : out STD_LOGIC;
    SPISEL_sync : in STD_LOGIC;
    \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\ : in STD_LOGIC;
    reset2ip_reset_int : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_reset_sync_module : entity is "reset_sync_module";
end xlnx_axi_quad_spi_reset_sync_module;

architecture STRUCTURE of xlnx_axi_quad_spi_reset_sync_module is
  signal \^rst_to_spi\ : STD_LOGIC;
  signal Soft_Reset_frm_axi_d1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2\ : label is "soft_lutpair91";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of RESET_SYNC_AX2S_1 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_1 : label is "FDR";
  attribute box_type : string;
  attribute box_type of RESET_SYNC_AX2S_1 : label is "PRIMITIVE";
  attribute ASYNC_REG of RESET_SYNC_AX2S_2 : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of RESET_SYNC_AX2S_2 : label is "FDR";
  attribute box_type of RESET_SYNC_AX2S_2 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of Slave_MODF_strobe_i_1 : label is "soft_lutpair91";
begin
  Rst_to_spi <= \^rst_to_spi\;
\OTHER_RATIO_GENERATE.rx_shft_reg_s[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rst_to_spi\,
      I1 => \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\,
      O => p_6_out
    );
RESET_SYNC_AX2S_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => reset2ip_reset_int,
      Q => Soft_Reset_frm_axi_d1,
      R => '0'
    );
RESET_SYNC_AX2S_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => Soft_Reset_frm_axi_d1,
      Q => \^rst_to_spi\,
      R => '0'
    );
Slave_MODF_strobe_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rst_to_spi\,
      I1 => SPISEL_sync,
      O => RESET_SYNC_AX2S_2_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_soft_reset is
  port (
    sw_rst_cond_d1 : out STD_LOGIC;
    wrack : out STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS_0\ : out STD_LOGIC;
    Bus2IP_Reset_i_reg : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[5]\ : out STD_LOGIC;
    rst : out STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\ : in STD_LOGIC;
    TX_one_less_than_full : in STD_LOGIC;
    Tx_FIFO_Full_i : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    awready_i_reg : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    p_7_in : in STD_LOGIC;
    p_13_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_soft_reset : entity is "soft_reset";
end xlnx_axi_quad_spi_soft_reset;

architecture STRUCTURE of xlnx_axi_quad_spi_soft_reset is
  signal D : STD_LOGIC;
  signal \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \^reset_flops[15].rst_flops_0\ : STD_LOGIC;
  signal \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal flop_q_chain_1 : STD_LOGIC;
  signal flop_q_chain_10 : STD_LOGIC;
  signal flop_q_chain_11 : STD_LOGIC;
  signal flop_q_chain_12 : STD_LOGIC;
  signal flop_q_chain_13 : STD_LOGIC;
  signal flop_q_chain_14 : STD_LOGIC;
  signal flop_q_chain_15 : STD_LOGIC;
  signal flop_q_chain_2 : STD_LOGIC;
  signal flop_q_chain_3 : STD_LOGIC;
  signal flop_q_chain_4 : STD_LOGIC;
  signal flop_q_chain_5 : STD_LOGIC;
  signal flop_q_chain_6 : STD_LOGIC;
  signal flop_q_chain_7 : STD_LOGIC;
  signal flop_q_chain_8 : STD_LOGIC;
  signal flop_q_chain_9 : STD_LOGIC;
  signal \^wrack\ : STD_LOGIC;
  attribute IS_CE_INVERTED : string;
  attribute IS_CE_INVERTED of FF_WRACK : label is "1'b0";
  attribute IS_S_INVERTED : string;
  attribute IS_S_INVERTED of FF_WRACK : label is "1'b0";
  attribute box_type : string;
  attribute box_type of FF_WRACK : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FF_WRACK_i_1 : label is "soft_lutpair92";
  attribute IS_CE_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[0].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[0].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[10].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[10].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[10].RST_FLOPS_i_1\ : label is "soft_lutpair97";
  attribute IS_CE_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[11].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[11].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[11].RST_FLOPS_i_1\ : label is "soft_lutpair98";
  attribute IS_CE_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[12].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[12].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[12].RST_FLOPS_i_1\ : label is "soft_lutpair98";
  attribute IS_CE_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[13].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[13].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[13].RST_FLOPS_i_1\ : label is "soft_lutpair99";
  attribute IS_CE_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[14].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[14].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[14].RST_FLOPS_i_1\ : label is "soft_lutpair99";
  attribute IS_CE_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[15].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[15].RST_FLOPS\ : label is "PRIMITIVE";
  attribute IS_CE_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[1].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[1].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[1].RST_FLOPS_i_1\ : label is "soft_lutpair93";
  attribute IS_CE_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[2].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[2].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[2].RST_FLOPS_i_1\ : label is "soft_lutpair93";
  attribute IS_CE_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[3].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[3].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[3].RST_FLOPS_i_1\ : label is "soft_lutpair94";
  attribute IS_CE_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[4].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[4].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[4].RST_FLOPS_i_1\ : label is "soft_lutpair94";
  attribute IS_CE_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[5].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[5].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[5].RST_FLOPS_i_1\ : label is "soft_lutpair95";
  attribute IS_CE_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[6].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[6].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[6].RST_FLOPS_i_1\ : label is "soft_lutpair95";
  attribute IS_CE_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[7].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[7].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[7].RST_FLOPS_i_1\ : label is "soft_lutpair96";
  attribute IS_CE_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[8].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[8].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[8].RST_FLOPS_i_1\ : label is "soft_lutpair96";
  attribute IS_CE_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute IS_S_INVERTED of \RESET_FLOPS[9].RST_FLOPS\ : label is "1'b0";
  attribute box_type of \RESET_FLOPS[9].RST_FLOPS\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \RESET_FLOPS[9].RST_FLOPS_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \xpm_fifo_instance.xpm_fifo_async_inst_i_1\ : label is "soft_lutpair92";
begin
  \RESET_FLOPS[15].RST_FLOPS_0\ <= \^reset_flops[15].rst_flops_0\;
  wrack <= \^wrack\;
FF_WRACK: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => D,
      Q => \^wrack\,
      R => bus2ip_reset_ipif_inverted
    );
FF_WRACK_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^reset_flops[15].rst_flops_0\,
      I1 => flop_q_chain_1,
      O => D
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010100"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \^reset_flops[15].rst_flops_0\,
      I2 => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\,
      I3 => TX_one_less_than_full,
      I4 => Tx_FIFO_Full_i,
      I5 => Tx_FIFO_Full_int,
      O => Bus2IP_Reset_i_reg
    );
\RESET_FLOPS[0].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => S,
      Q => flop_q_chain_15,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[10].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_5,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[10].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_6,
      O => \RESET_FLOPS[10].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[11].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_4,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[11].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_5,
      O => \RESET_FLOPS[11].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[12].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_3,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[12].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_4,
      O => \RESET_FLOPS[12].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[13].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_2,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[13].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_3,
      O => \RESET_FLOPS[13].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[14].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_1,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[14].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_2,
      O => \RESET_FLOPS[14].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[15].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\,
      Q => \^reset_flops[15].rst_flops_0\,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[15].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_1,
      O => \RESET_FLOPS[15].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[1].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_14,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[1].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_15,
      O => \RESET_FLOPS[1].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[2].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_13,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[2].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_14,
      O => \RESET_FLOPS[2].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[3].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_12,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[3].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_13,
      O => \RESET_FLOPS[3].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[4].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_11,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[4].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_12,
      O => \RESET_FLOPS[4].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[5].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_10,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[5].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_11,
      O => \RESET_FLOPS[5].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[6].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_9,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[6].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_10,
      O => \RESET_FLOPS[6].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[7].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_8,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[7].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_9,
      O => \RESET_FLOPS[7].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[8].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_7,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[8].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_8,
      O => \RESET_FLOPS[8].RST_FLOPS_i_1_n_0\
    );
\RESET_FLOPS[9].RST_FLOPS\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\,
      Q => flop_q_chain_6,
      R => bus2ip_reset_ipif_inverted
    );
\RESET_FLOPS[9].RST_FLOPS_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => S,
      I1 => flop_q_chain_7,
      O => \RESET_FLOPS[9].RST_FLOPS_i_1_n_0\
    );
awready_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => Q(0),
      I1 => awready_i_reg,
      I2 => ip2Bus_WrAck_intr_reg_hole,
      I3 => \^wrack\,
      I4 => p_7_in,
      I5 => p_13_out,
      O => \FSM_onehot_axi_full_sm_ps_reg[5]\
    );
reset_trig_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => reset_trig0,
      Q => S,
      R => bus2ip_reset_ipif_inverted
    );
sw_rst_cond_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => sw_rst_cond,
      Q => sw_rst_cond_d1,
      R => bus2ip_reset_ipif_inverted
    );
\xpm_fifo_instance.xpm_fifo_async_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bus2ip_reset_ipif_inverted,
      I1 => \^reset_flops[15].rst_flops_0\,
      I2 => \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\,
      O => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xlnx_axi_quad_spi_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xlnx_axi_quad_spi_xpm_cdc_gray : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of xlnx_axi_quad_spi_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xlnx_axi_quad_spi_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of xlnx_axi_quad_spi_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of xlnx_axi_quad_spi_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of xlnx_axi_quad_spi_xpm_cdc_gray : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xlnx_axi_quad_spi_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of xlnx_axi_quad_spi_xpm_cdc_gray : entity is "GRAY";
end xlnx_axi_quad_spi_xpm_cdc_gray;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair52";
begin
  dest_out_bin(7) <= \dest_graysync_ff[1]\(7);
  dest_out_bin(6 downto 0) <= \^dest_out_bin\(6 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(2),
      I2 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ : entity is "GRAY";
end \xlnx_axi_quad_spi_xpm_cdc_gray__2\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair5";
begin
  dest_out_bin(7) <= \dest_graysync_ff[1]\(7);
  dest_out_bin(6 downto 0) <= \^dest_out_bin\(6 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(2),
      I2 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_gray__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ : entity is "GRAY";
end \xlnx_axi_quad_spi_xpm_cdc_gray__3\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_gray__3\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair12";
begin
  dest_out_bin(7) <= \dest_graysync_ff[1]\(7);
  dest_out_bin(6 downto 0) <= \^dest_out_bin\(6 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(2),
      I2 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_gray__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is 8;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ : entity is "GRAY";
end \xlnx_axi_quad_spi_xpm_cdc_gray__4\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_gray__4\ is
  signal async_path : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair45";
begin
  dest_out_bin(7) <= \dest_graysync_ff[1]\(7);
  dest_out_bin(6 downto 0) <= \^dest_out_bin\(6 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \^dest_out_bin\(2),
      I2 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(7),
      Q => async_path(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair49";
begin
  dest_out_bin(8) <= \dest_graysync_ff[3]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(5),
      Q => \dest_graysync_ff[2]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => \dest_graysync_ff[2]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => \dest_graysync_ff[2]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => \dest_graysync_ff[2]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(5),
      Q => \dest_graysync_ff[3]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(6),
      Q => \dest_graysync_ff[3]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(7),
      Q => \dest_graysync_ff[3]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(8),
      Q => \dest_graysync_ff[3]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(5),
      I2 => \dest_graysync_ff[3]\(7),
      I3 => \dest_graysync_ff[3]\(8),
      I4 => \dest_graysync_ff[3]\(6),
      I5 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(6),
      I2 => \dest_graysync_ff[3]\(8),
      I3 => \dest_graysync_ff[3]\(7),
      I4 => \dest_graysync_ff[3]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(5),
      I1 => \dest_graysync_ff[3]\(7),
      I2 => \dest_graysync_ff[3]\(8),
      I3 => \dest_graysync_ff[3]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(6),
      I1 => \dest_graysync_ff[3]\(8),
      I2 => \dest_graysync_ff[3]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(7),
      I1 => \dest_graysync_ff[3]\(8),
      O => \^dest_out_bin\(7)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ : entity is "GRAY";
end \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair9";
begin
  dest_out_bin(8) <= \dest_graysync_ff[3]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(5),
      Q => \dest_graysync_ff[2]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(6),
      Q => \dest_graysync_ff[2]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(7),
      Q => \dest_graysync_ff[2]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => \dest_graysync_ff[2]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(5),
      Q => \dest_graysync_ff[3]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(6),
      Q => \dest_graysync_ff[3]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(7),
      Q => \dest_graysync_ff[3]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(8),
      Q => \dest_graysync_ff[3]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(5),
      I2 => \dest_graysync_ff[3]\(7),
      I3 => \dest_graysync_ff[3]\(8),
      I4 => \dest_graysync_ff[3]\(6),
      I5 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(4),
      I1 => \dest_graysync_ff[3]\(6),
      I2 => \dest_graysync_ff[3]\(8),
      I3 => \dest_graysync_ff[3]\(7),
      I4 => \dest_graysync_ff[3]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(5),
      I1 => \dest_graysync_ff[3]\(7),
      I2 => \dest_graysync_ff[3]\(8),
      I3 => \dest_graysync_ff[3]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(6),
      I1 => \dest_graysync_ff[3]\(8),
      I2 => \dest_graysync_ff[3]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(7),
      I1 => \dest_graysync_ff[3]\(8),
      O => \^dest_out_bin\(7)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair54";
begin
  dest_out_bin(8) <= \dest_graysync_ff[1]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ : entity is "GRAY";
end \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair14";
begin
  dest_out_bin(8) <= \dest_graysync_ff[1]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of xlnx_axi_quad_spi_xpm_cdc_sync_rst : entity is "SYNC_RST";
end xlnx_axi_quad_spi_xpm_cdc_sync_rst;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ : entity is "SYNC_RST";
end \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ : entity is "SYNC_RST";
end \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ : entity is "SYNC_RST";
end \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_counter_updn is
  port (
    going_afull : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_counter_updn : entity is "xpm_counter_updn";
end xlnx_axi_quad_spi_xpm_counter_updn;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_counter_updn is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair56";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_value_i(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_value_i(0),
      I1 => count_value_i(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_value_i(0),
      I1 => count_value_i(1),
      I2 => count_value_i(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_value_i(1),
      I1 => count_value_i(0),
      I2 => count_value_i(2),
      I3 => count_value_i(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_value_i(2),
      I1 => count_value_i(0),
      I2 => count_value_i(1),
      I3 => count_value_i(3),
      I4 => count_value_i(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_value_i(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => count_value_i(2),
      I3 => count_value_i(4),
      I4 => count_value_i(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => count_value_i(4),
      I1 => count_value_i(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => count_value_i(3),
      I4 => count_value_i(5),
      I5 => \^q\(0),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => count_value_i(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => count_value_i(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_value_i(5),
      I1 => \count_value_i[7]_i_2__1_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_value_i(4),
      I1 => count_value_i(2),
      I2 => count_value_i(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => count_value_i(1),
      I5 => count_value_i(3),
      O => \count_value_i[7]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => count_value_i(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => count_value_i(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => count_value_i(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => count_value_i(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => count_value_i(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => count_value_i(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\,
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I3 => wr_pntr_plus1_pf_carry,
      O => going_afull
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_value_i(2),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(2),
      I2 => count_value_i(1),
      I3 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(1),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(0),
      I5 => count_value_i(0),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_value_i(5),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(5),
      I2 => count_value_i(4),
      I3 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(4),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(3),
      I5 => count_value_i(3),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_counter_updn_5 is
  port (
    going_afull : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_counter_updn_5 : entity is "xpm_counter_updn";
end xlnx_axi_quad_spi_xpm_counter_updn_5;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_counter_updn_5 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count_value_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair16";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_value_i(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_value_i(0),
      I1 => count_value_i(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_value_i(0),
      I1 => count_value_i(1),
      I2 => count_value_i(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_value_i(1),
      I1 => count_value_i(0),
      I2 => count_value_i(2),
      I3 => count_value_i(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_value_i(2),
      I1 => count_value_i(0),
      I2 => count_value_i(1),
      I3 => count_value_i(3),
      I4 => count_value_i(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_value_i(3),
      I1 => \count_value_i[6]_i_2__2_n_0\,
      I2 => count_value_i(2),
      I3 => count_value_i(4),
      I4 => count_value_i(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => count_value_i(4),
      I1 => count_value_i(2),
      I2 => \count_value_i[6]_i_2__2_n_0\,
      I3 => count_value_i(3),
      I4 => count_value_i(5),
      I5 => \^q\(0),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[6]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => count_value_i(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => count_value_i(0),
      O => \count_value_i[6]_i_2__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_value_i(5),
      I1 => \count_value_i[7]_i_2__1_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_value_i(4),
      I1 => count_value_i(2),
      I2 => count_value_i(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => count_value_i(1),
      I5 => count_value_i(3),
      O => \count_value_i[7]_i_2__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => count_value_i(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => count_value_i(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => count_value_i(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => count_value_i(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => count_value_i(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => count_value_i(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\,
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\,
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I3 => wr_pntr_plus1_pf_carry,
      O => going_afull
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_value_i(2),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(2),
      I2 => count_value_i(1),
      I3 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(1),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(0),
      I5 => count_value_i(0),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_4_n_0\
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_value_i(5),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(5),
      I2 => count_value_i(4),
      I3 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(4),
      I4 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(3),
      I5 => count_value_i(3),
      O => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized0\ is
  port (
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    leaving_afull : out STD_LOGIC;
    going_afull : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized0\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \^leaving_afull\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair70";
begin
  leaving_afull <= \^leaving_afull\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[4]\,
      I4 => \count_value_i_reg_n_0_[5]\,
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[5]\,
      I5 => \count_value_i_reg_n_0_[6]\,
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => wr_en,
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \count_value_i[7]_i_2_n_0\,
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => \count_value_i_reg_n_0_[7]\,
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \count_value_i_reg_n_0_[1]\,
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[7]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[6]\,
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[7]\,
      R => wrst_busy
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFE0000000E"
    )
        port map (
      I0 => \^leaving_afull\,
      I1 => going_afull,
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I3 => rst,
      I4 => clr_full,
      I5 => almost_full,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => Q(6),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\,
      I5 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\,
      O => \^leaving_afull\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => \count_value_i_reg_n_0_[4]\,
      I3 => Q(4),
      I4 => Q(3),
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized0_16\ is
  port (
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    leaving_afull : out STD_LOGIC;
    going_afull : in STD_LOGIC;
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    clr_full : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized0_16\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized0_16\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized0_16\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \^leaving_afull\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair30";
begin
  leaving_afull <= \^leaving_afull\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i[6]_i_2_n_0\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[4]\,
      I4 => \count_value_i_reg_n_0_[5]\,
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i[6]_i_2_n_0\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[5]\,
      I5 => \count_value_i_reg_n_0_[6]\,
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => wr_en,
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[6]_i_2_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \count_value_i[7]_i_2_n_0\,
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => \count_value_i_reg_n_0_[7]\,
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \count_value_i_reg_n_0_[1]\,
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[7]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[6]\,
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[7]\,
      R => wrst_busy
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFE0000000E"
    )
        port map (
      I0 => \^leaving_afull\,
      I1 => going_afull,
      I2 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\,
      I3 => rst,
      I4 => clr_full,
      I5 => almost_full,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[7]\,
      I1 => Q(7),
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => Q(6),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\,
      I5 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\,
      O => \^leaving_afull\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => \count_value_i_reg_n_0_[4]\,
      I3 => Q(4),
      I4 => Q(3),
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized1\ is
  port (
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_2\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized1\ is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \grdc.rd_data_count_i[3]_i_4\ : label is "lutpair1";
  attribute HLUTNM of \grdc.rd_data_count_i[3]_i_8\ : label is "lutpair1";
begin
  DI(0) <= \^di\(0);
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[0]_1\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_1\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[0]_2\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A8AA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[0]_1\(0),
      I2 => \count_value_i_reg[0]_1\(1),
      I3 => ram_empty_i,
      I4 => \count_value_i_reg[0]_2\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[0]_1\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_1\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_0\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_0\,
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      I2 => \^count_value_i_reg[1]_0\,
      I3 => Q(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      O => \^di\(0)
    );
\grdc.rd_data_count_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^count_value_i_reg[1]_0\,
      I2 => Q(1),
      I3 => \grdc.rd_data_count_i_reg[3]\(1),
      O => S(1)
    );
\grdc.rd_data_count_i[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      I2 => \grdc.rd_data_count_i_reg[3]\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized1_10\ is
  port (
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[0]_0\ : out STD_LOGIC;
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_2\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized1_10\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized1_10\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized1_10\ is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[0]_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  attribute HLUTNM : string;
  attribute HLUTNM of \grdc.rd_data_count_i[3]_i_4\ : label is "lutpair0";
  attribute HLUTNM of \grdc.rd_data_count_i[3]_i_8\ : label is "lutpair0";
begin
  DI(0) <= \^di\(0);
  \count_value_i_reg[0]_0\ <= \^count_value_i_reg[0]_0\;
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
\count_value_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A88A655"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[0]_1\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_1\(1),
      I4 => ram_empty_i,
      I5 => \count_value_i_reg[0]_2\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A8AA"
    )
        port map (
      I0 => \count_value_i[1]_i_2_n_0\,
      I1 => \count_value_i_reg[0]_1\(0),
      I2 => \count_value_i_reg[0]_1\(1),
      I3 => ram_empty_i,
      I4 => \count_value_i_reg[0]_2\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFF755500008AA"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => \count_value_i_reg[0]_1\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_1\(1),
      I4 => ram_empty_i,
      I5 => \^count_value_i_reg[1]_0\,
      O => \count_value_i[1]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^count_value_i_reg[0]_0\,
      R => '0'
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^count_value_i_reg[1]_0\,
      R => '0'
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      I2 => \^count_value_i_reg[1]_0\,
      I3 => Q(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      O => \^di\(0)
    );
\grdc.rd_data_count_i[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^count_value_i_reg[1]_0\,
      I2 => Q(1),
      I3 => \grdc.rd_data_count_i_reg[3]\(1),
      O => S(1)
    );
\grdc.rd_data_count_i[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^count_value_i_reg[0]_0\,
      I1 => Q(0),
      I2 => \grdc.rd_data_count_i_reg[3]\(0),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enb : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    leaving_empty : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \src_gray_ff_reg[2]\ : in STD_LOGIC;
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[8]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \^enb\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__4\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\ : label is "soft_lutpair62";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  enb <= \^enb\;
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__4_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__3_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[6]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__3_n_0\
    );
\count_value_i[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__3_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \count_value_i_reg_n_0_[8]\,
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^enb\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[4]_i_1__4_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[7]_i_1__3_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[8]\,
      R => \count_value_i_reg[8]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \count_value_i_reg_n_0_[8]\,
      O => src_in_bin(7)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFBBAFB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \^q\(1),
      I3 => \src_gray_ff_reg[2]\,
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[2]\,
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => src_in_bin(6)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => src_in_bin(5)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I2 => \^q\(5),
      O => src_in_bin(4)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\,
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[3]\,
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \^q\(1),
      I3 => \src_gray_ff_reg[2]\,
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[2]\,
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[3]\,
      I4 => \^q\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[2]\,
      O => src_in_bin(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\,
      CYINIT => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      DI(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      DI(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\,
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\,
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\,
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(2 downto 0),
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(3) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\,
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\,
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => S(3 downto 0)
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(7),
      I2 => \^q\(6),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(6),
      I4 => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\,
      I5 => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\,
      O => leaving_empty
    );
\gen_pf_ic_rc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(5),
      I2 => \^q\(4),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(4),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \^q\(3),
      O => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I2 => \^q\(1),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I5 => \^q\(0),
      O => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^enb\
    );
\grdc.rd_data_count_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \grdc.rd_data_count_i_reg[8]\(0),
      O => DI(0)
    );
\grdc.rd_data_count_i[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[8]\(1),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[8]\(2),
      O => \count_value_i_reg[2]_0\(0)
    );
\grdc.rd_data_count_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[8]\(5),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[8]\(6),
      O => \count_value_i_reg[6]_0\(3)
    );
\grdc.rd_data_count_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[8]\(4),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[8]\(5),
      O => \count_value_i_reg[6]_0\(2)
    );
\grdc.rd_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[8]\(3),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[8]\(4),
      O => \count_value_i_reg[6]_0\(1)
    );
\grdc.rd_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[8]\(2),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[8]\(3),
      O => \count_value_i_reg[6]_0\(0)
    );
\grdc.rd_data_count_i[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[8]\(6),
      I2 => \count_value_i_reg_n_0_[8]\,
      I3 => \grdc.rd_data_count_i_reg[8]\(7),
      O => \count_value_i_reg[7]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_11\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enb : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    leaving_empty : out STD_LOGIC;
    \count_value_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \src_gray_ff_reg[2]\ : in STD_LOGIC;
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[8]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_11\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_11\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_11\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \^enb\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\ : label is "soft_lutpair22";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  enb <= \^enb\;
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__4_n_0\
    );
\count_value_i[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__4_n_0\
    );
\count_value_i[4]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__4_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__3_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[6]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \count_value_i_reg[0]_0\(1),
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__3_n_0\
    );
\count_value_i[7]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__3_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \count_value_i_reg_n_0_[8]\,
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^enb\,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[2]_i_1__4_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[3]_i_1__4_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[4]_i_1__4_n_0\,
      Q => \^q\(4),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \^q\(5),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \^q\(6),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[7]_i_1__3_n_0\,
      Q => \^q\(7),
      R => \count_value_i_reg[8]_0\
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[8]\,
      R => \count_value_i_reg[8]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \count_value_i_reg_n_0_[8]\,
      O => src_in_bin(7)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFBBAFB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \^q\(1),
      I3 => \src_gray_ff_reg[2]\,
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[2]\,
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => src_in_bin(6)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => src_in_bin(5)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_10_n_0\,
      I2 => \^q\(5),
      O => src_in_bin(4)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_11_n_0\,
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[3]\,
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \^q\(1),
      I3 => \src_gray_ff_reg[2]\,
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[2]\,
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[3]\,
      I4 => \^q\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[2]\,
      O => src_in_bin(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAA5455"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => \count_value_i_reg[0]_0\(0),
      I3 => \count_value_i_reg[0]_0\(1),
      I4 => \^q\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_3\,
      CYINIT => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      DI(3) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      DI(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\,
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_4_n_0\,
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_5_n_0\,
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(2 downto 0),
      S(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_9_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]_i_1_n_0\,
      CO(3) => \NLW_gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_2_n_0\,
      DI(1) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_3_n_0\,
      DI(0) => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_4_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => S(3 downto 0)
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(7),
      I2 => \^q\(6),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(6),
      I4 => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\,
      I5 => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\,
      O => leaving_empty
    );
\gen_pf_ic_rc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(5),
      I2 => \^q\(4),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(4),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \^q\(3),
      O => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I2 => \^q\(1),
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I5 => \^q\(0),
      O => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^enb\
    );
\grdc.rd_data_count_i[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \grdc.rd_data_count_i_reg[8]\(0),
      O => DI(0)
    );
\grdc.rd_data_count_i[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[8]\(1),
      I2 => \^q\(3),
      I3 => \grdc.rd_data_count_i_reg[8]\(2),
      O => \count_value_i_reg[2]_0\(0)
    );
\grdc.rd_data_count_i[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[8]\(5),
      I2 => \^q\(7),
      I3 => \grdc.rd_data_count_i_reg[8]\(6),
      O => \count_value_i_reg[6]_0\(3)
    );
\grdc.rd_data_count_i[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[8]\(4),
      I2 => \^q\(6),
      I3 => \grdc.rd_data_count_i_reg[8]\(5),
      O => \count_value_i_reg[6]_0\(2)
    );
\grdc.rd_data_count_i[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[8]\(3),
      I2 => \^q\(5),
      I3 => \grdc.rd_data_count_i_reg[8]\(4),
      O => \count_value_i_reg[6]_0\(1)
    );
\grdc.rd_data_count_i[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[8]\(2),
      I2 => \^q\(4),
      I3 => \grdc.rd_data_count_i_reg[8]\(3),
      O => \count_value_i_reg[6]_0\(0)
    );
\grdc.rd_data_count_i[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(7),
      I1 => \grdc.rd_data_count_i_reg[8]\(6),
      I2 => \count_value_i_reg_n_0_[8]\,
      I3 => \grdc.rd_data_count_i_reg[8]\(7),
      O => \count_value_i_reg[7]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_14\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwdc.wr_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_14\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_14\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_14\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair25";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gwdc.wr_data_count_i_reg[8]\(3),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[8]\(2),
      O => \gwdc.wr_data_count_i[3]_i_3_n_0\
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gwdc.wr_data_count_i_reg[8]\(1),
      O => \gwdc.wr_data_count_i[3]_i_4_n_0\
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[8]\(0),
      O => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gwdc.wr_data_count_i_reg[8]\(7),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gwdc.wr_data_count_i_reg[8]\(6),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gwdc.wr_data_count_i_reg[8]\(5),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gwdc.wr_data_count_i_reg[8]\(4),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gwdc.wr_data_count_i_reg[8]\(8),
      O => \gwdc.wr_data_count_i[8]_i_2_n_0\
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[3]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[3]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => D(8),
      S(3 downto 1) => B"000",
      S(0) => \gwdc.wr_data_count_i[8]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwdc.wr_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_3\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_3\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \gwdc.wr_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair65";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__1_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__1_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[6]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[8]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gwdc.wr_data_count_i_reg[8]\(3),
      O => \gwdc.wr_data_count_i[3]_i_2_n_0\
    );
\gwdc.wr_data_count_i[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[8]\(2),
      O => \gwdc.wr_data_count_i[3]_i_3_n_0\
    );
\gwdc.wr_data_count_i[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gwdc.wr_data_count_i_reg[8]\(1),
      O => \gwdc.wr_data_count_i[3]_i_4_n_0\
    );
\gwdc.wr_data_count_i[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[8]\(0),
      O => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gwdc.wr_data_count_i_reg[8]\(7),
      O => \gwdc.wr_data_count_i[7]_i_2_n_0\
    );
\gwdc.wr_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gwdc.wr_data_count_i_reg[8]\(6),
      O => \gwdc.wr_data_count_i[7]_i_3_n_0\
    );
\gwdc.wr_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gwdc.wr_data_count_i_reg[8]\(5),
      O => \gwdc.wr_data_count_i[7]_i_4_n_0\
    );
\gwdc.wr_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gwdc.wr_data_count_i_reg[8]\(4),
      O => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \gwdc.wr_data_count_i_reg[8]\(8),
      O => \gwdc.wr_data_count_i[8]_i_2_n_0\
    );
\gwdc.wr_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => \gwdc.wr_data_count_i[3]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[3]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[3]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[3]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \gwdc.wr_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \gwdc.wr_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \gwdc.wr_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3) => \gwdc.wr_data_count_i[7]_i_2_n_0\,
      S(2) => \gwdc.wr_data_count_i[7]_i_3_n_0\,
      S(1) => \gwdc.wr_data_count_i[7]_i_4_n_0\,
      S(0) => \gwdc.wr_data_count_i[7]_i_5_n_0\
    );
\gwdc.wr_data_count_i_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gwdc.wr_data_count_i_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_gwdc.wr_data_count_i_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gwdc.wr_data_count_i_reg[8]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => D(8),
      S(3 downto 1) => B"000",
      S(0) => \gwdc.wr_data_count_i[8]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    leaving_empty : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3\ is
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__4_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal going_empty0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__3\ : label is "soft_lutpair63";
begin
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i[6]_i_2__4_n_0\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[4]\,
      I4 => \count_value_i_reg_n_0_[5]\,
      O => \count_value_i[5]_i_1__4_n_0\
    );
\count_value_i[6]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i[6]_i_2__4_n_0\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[5]\,
      I5 => \count_value_i_reg_n_0_[6]\,
      O => \count_value_i[6]_i_1__4_n_0\
    );
\count_value_i[6]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[6]_i_2__4_n_0\
    );
\count_value_i[7]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \count_value_i[7]_i_2__2_n_0\,
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => \count_value_i_reg_n_0_[7]\,
      O => \count_value_i[7]_i_1__4_n_0\
    );
\count_value_i[7]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => E(0),
      I4 => \count_value_i_reg_n_0_[1]\,
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[7]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__4_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__4_n_0\,
      Q => \count_value_i_reg_n_0_[6]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__4_n_0\,
      Q => \count_value_i_reg_n_0_[7]\,
      R => \count_value_i_reg[0]_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FD0000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => going_empty0,
      I5 => leaving_empty,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[7]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(7),
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(6),
      I4 => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\,
      I5 => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\,
      O => going_empty0
    );
\gen_pf_ic_rc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(5),
      I2 => \count_value_i_reg_n_0_[4]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(4),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_12\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    leaving_empty : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_12\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_12\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_12\ is
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__4_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__2_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal going_empty0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__3\ : label is "soft_lutpair23";
begin
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i[6]_i_2__4_n_0\,
      I2 => \count_value_i_reg_n_0_[2]\,
      I3 => \count_value_i_reg_n_0_[4]\,
      I4 => \count_value_i_reg_n_0_[5]\,
      O => \count_value_i[5]_i_1__4_n_0\
    );
\count_value_i[6]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i[6]_i_2__4_n_0\,
      I3 => \count_value_i_reg_n_0_[3]\,
      I4 => \count_value_i_reg_n_0_[5]\,
      I5 => \count_value_i_reg_n_0_[6]\,
      O => \count_value_i[6]_i_1__4_n_0\
    );
\count_value_i[6]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA200000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => rd_en,
      I4 => ram_empty_i,
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[6]_i_2__4_n_0\
    );
\count_value_i[7]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \count_value_i[7]_i_2__2_n_0\,
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => \count_value_i_reg_n_0_[7]\,
      O => \count_value_i[7]_i_1__4_n_0\
    );
\count_value_i[7]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[4]\,
      I1 => \count_value_i_reg_n_0_[2]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => E(0),
      I4 => \count_value_i_reg_n_0_[1]\,
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[7]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__4_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__4_n_0\,
      Q => \count_value_i_reg_n_0_[6]\,
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__4_n_0\,
      Q => \count_value_i_reg_n_0_[7]\,
      R => \count_value_i_reg[0]_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FD0000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      I4 => going_empty0,
      I5 => leaving_empty,
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[7]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(7),
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(6),
      I4 => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\,
      I5 => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\,
      O => going_empty0
    );
\gen_pf_ic_rc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(5),
      I2 => \count_value_i_reg_n_0_[4]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(4),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_15\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    d_out_reg : out STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leaving_afull : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_15\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_15\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_15\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal leaving_full : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair28";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEA00EA"
    )
        port map (
      I0 => leaving_full,
      I1 => leaving_afull,
      I2 => wr_pntr_plus1_pf_carry,
      I3 => rst_d1,
      I4 => rst,
      O => d_out_reg
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(7),
      I2 => \^q\(6),
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(6),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\,
      I5 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      O => leaving_full
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(5),
      I2 => \^q\(4),
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(4),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(3),
      I5 => \^q\(3),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(2),
      I2 => \^q\(1),
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(1),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(0),
      I5 => \^q\(0),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => wr_pntr_plus1_pf_carry,
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3) => D(0),
      O(2 downto 0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3 downto 0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(3 downto 0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(6 downto 4),
      O(3 downto 0) => D(4 downto 1),
      S(3 downto 0) => S(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    d_out_reg : out STD_LOGIC;
    wr_pntr_plus1_pf_carry : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[6]_0\ : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leaving_afull : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_4\ : entity is "xpm_counter_updn";
end \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_4\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal leaving_full : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair68";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \count_value_i[6]_i_2__0_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[6]_i_2__0_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_en,
      I2 => \count_value_i_reg[6]_0\,
      I3 => wrst_busy,
      I4 => rst_d1,
      I5 => \^q\(0),
      O => \count_value_i[6]_i_2__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[7]_i_2__0_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => wr_pntr_plus1_pf_carry,
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[7]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => wr_pntr_plus1_pf_carry,
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEA00EA"
    )
        port map (
      I0 => leaving_full,
      I1 => leaving_afull,
      I2 => wr_pntr_plus1_pf_carry,
      I3 => rst_d1,
      I4 => rst,
      O => d_out_reg
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(7),
      I2 => \^q\(6),
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(6),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\,
      I5 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      O => leaving_full
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(5),
      I2 => \^q\(4),
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(4),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(3),
      I5 => \^q\(3),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(2),
      I2 => \^q\(1),
      I3 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(1),
      I4 => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(0),
      I5 => \^q\(0),
      O => \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_3\,
      CYINIT => wr_pntr_plus1_pf_carry,
      DI(3 downto 0) => \^q\(3 downto 0),
      O(3) => D(0),
      O(2 downto 0) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3 downto 0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(3 downto 0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_i_1_n_0\,
      CO(3) => \NLW_gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_1\,
      CO(1) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_2\,
      CO(0) => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(6 downto 4),
      O(3 downto 0) => D(4 downto 1),
      S(3 downto 0) => S(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    d_out_reg_0 : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \gof.overflow_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end xlnx_axi_quad_spi_xpm_fifo_reg_bit;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair64";
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => wrst_busy,
      O => clr_full
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3A200A2"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I1 => \^rst_d1\,
      I2 => rst,
      I3 => \gof.overflow_i_reg\,
      I4 => prog_full,
      O => d_out_reg_0
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gof.overflow_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_reg_bit_13 is
  port (
    rst_d1 : out STD_LOGIC;
    d_out_reg_0 : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \gof.overflow_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_reg_bit_13 : entity is "xpm_fifo_reg_bit";
end xlnx_axi_quad_spi_xpm_fifo_reg_bit_13;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_reg_bit_13 is
  signal \^rst_d1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gof.overflow_i_i_1\ : label is "soft_lutpair24";
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => wrst_busy,
      O => clr_full
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3A200A2"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I1 => \^rst_d1\,
      I2 => rst,
      I3 => \gof.overflow_i_reg\,
      I4 => prog_full,
      O => d_out_reg_0
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gof.overflow_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_reg_vec is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_out_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[6]_0\ : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_reg_vec : entity is "xpm_fifo_reg_vec";
end xlnx_axi_quad_spi_xpm_fifo_reg_vec;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_reg_vec is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\(0),
      I2 => \^q\(7),
      I3 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\(1),
      O => \reg_out_i_reg[6]_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(3),
      O => \reg_out_i_reg[3]_0\(3)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(2),
      O => \reg_out_i_reg[3]_0\(2)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(1),
      O => \reg_out_i_reg[3]_0\(1)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(0),
      O => \reg_out_i_reg[3]_0\(0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(7),
      O => S(3)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(6),
      O => S(2)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(5),
      O => S(1)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(4),
      O => S(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_reg_vec_1 is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_out_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_reg_vec_1 : entity is "xpm_fifo_reg_vec";
end xlnx_axi_quad_spi_xpm_fifo_reg_vec_1;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_reg_vec_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(2),
      O => \reg_out_i_reg[3]_0\(2)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(1),
      O => \reg_out_i_reg[3]_0\(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(0),
      O => \reg_out_i_reg[3]_0\(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(6),
      O => S(3)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(5),
      O => S(2)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(4),
      O => S(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(3),
      O => S(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_reg_vec_6 is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_out_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[6]_0\ : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_reg_vec_6 : entity is "xpm_fifo_reg_vec";
end xlnx_axi_quad_spi_xpm_fifo_reg_vec_6;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_reg_vec_6 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\gen_pf_ic_rc.gaf_ic.ram_afull_i_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\(0),
      I2 => \^q\(7),
      I3 => \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\(1),
      O => \reg_out_i_reg[6]_0\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(3),
      O => \reg_out_i_reg[3]_0\(3)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(2),
      O => \reg_out_i_reg[3]_0\(2)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(1),
      O => \reg_out_i_reg[3]_0\(1)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(0),
      O => \reg_out_i_reg[3]_0\(0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(7),
      O => S(3)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(6),
      O => S(2)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(5),
      O => S(1)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(4),
      O => S(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_reg_vec_8 is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_out_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_reg_vec_8 : entity is "xpm_fifo_reg_vec";
end xlnx_axi_quad_spi_xpm_fifo_reg_vec_8;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_reg_vec_8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(2),
      O => \reg_out_i_reg[3]_0\(2)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(1),
      O => \reg_out_i_reg[3]_0\(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(0),
      O => \reg_out_i_reg[3]_0\(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(6),
      O => S(3)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(5),
      O => S(2)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(4),
      O => S(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(3),
      O => S(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0\ is
begin
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => wrst_busy
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_2\ is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \reg_out_i_reg[8]_0\ : in STD_LOGIC;
    \reg_out_i_reg[8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_2\ : entity is "xpm_fifo_reg_vec";
end \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_2\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \grdc.rd_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\grdc.rd_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(1),
      O => \grdc.rd_data_count_i[3]_i_2_n_0\
    );
\grdc.rd_data_count_i[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \grdc.rd_data_count_i_reg[7]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[7]_0\(1),
      I4 => \^q\(2),
      O => \grdc.rd_data_count_i[3]_i_6_n_0\
    );
\grdc.rd_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(5),
      O => \grdc.rd_data_count_i[7]_i_2_n_0\
    );
\grdc.rd_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(4),
      O => \grdc.rd_data_count_i[7]_i_3_n_0\
    );
\grdc.rd_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(3),
      O => \grdc.rd_data_count_i[7]_i_4_n_0\
    );
\grdc.rd_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(2),
      O => \grdc.rd_data_count_i[7]_i_5_n_0\
    );
\grdc.rd_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \grdc.rd_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \grdc.rd_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \grdc.rd_data_count_i[3]_i_2_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => S(2),
      S(2) => \grdc.rd_data_count_i[3]_i_6_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
\grdc.rd_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \grdc.rd_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \grdc.rd_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \grdc.rd_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \grdc.rd_data_count_i[7]_i_2_n_0\,
      DI(2) => \grdc.rd_data_count_i[7]_i_3_n_0\,
      DI(1) => \grdc.rd_data_count_i[7]_i_4_n_0\,
      DI(0) => \grdc.rd_data_count_i[7]_i_5_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \grdc.rd_data_count_i_reg[7]\(3 downto 0)
    );
\grdc.rd_data_count_i_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \grdc.rd_data_count_i_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => D(8),
      S(3 downto 1) => B"000",
      S(0) => \grdc.rd_data_count_i_reg[8]\(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(6),
      Q => \^q\(6),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(7),
      Q => \^q\(7),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(8),
      Q => \^q\(8),
      R => \reg_out_i_reg[8]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_7\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_7\ : entity is "xpm_fifo_reg_vec";
end \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_7\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_7\ is
begin
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => wrst_busy
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_9\ is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \grdc.rd_data_count_i_reg[3]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \reg_out_i_reg[8]_0\ : in STD_LOGIC;
    \reg_out_i_reg[8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_9\ : entity is "xpm_fifo_reg_vec";
end \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_9\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_9\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \grdc.rd_data_count_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_4_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \grdc.rd_data_count_i_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \grdc.rd_data_count_i_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\grdc.rd_data_count_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(1),
      O => \grdc.rd_data_count_i[3]_i_2_n_0\
    );
\grdc.rd_data_count_i[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[3]\,
      I2 => \grdc.rd_data_count_i_reg[7]_0\(0),
      I3 => \grdc.rd_data_count_i_reg[7]_0\(1),
      I4 => \^q\(2),
      O => \grdc.rd_data_count_i[3]_i_6_n_0\
    );
\grdc.rd_data_count_i[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(5),
      O => \grdc.rd_data_count_i[7]_i_2_n_0\
    );
\grdc.rd_data_count_i[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(4),
      O => \grdc.rd_data_count_i[7]_i_3_n_0\
    );
\grdc.rd_data_count_i[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(3),
      O => \grdc.rd_data_count_i[7]_i_4_n_0\
    );
\grdc.rd_data_count_i[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[7]_0\(2),
      O => \grdc.rd_data_count_i[7]_i_5_n_0\
    );
\grdc.rd_data_count_i_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \grdc.rd_data_count_i_reg[3]_i_1_n_0\,
      CO(2) => \grdc.rd_data_count_i_reg[3]_i_1_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[3]_i_1_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \grdc.rd_data_count_i[3]_i_2_n_0\,
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^q\(0),
      O(3 downto 0) => D(3 downto 0),
      S(3) => S(2),
      S(2) => \grdc.rd_data_count_i[3]_i_6_n_0\,
      S(1 downto 0) => S(1 downto 0)
    );
\grdc.rd_data_count_i_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \grdc.rd_data_count_i_reg[3]_i_1_n_0\,
      CO(3) => \grdc.rd_data_count_i_reg[7]_i_1_n_0\,
      CO(2) => \grdc.rd_data_count_i_reg[7]_i_1_n_1\,
      CO(1) => \grdc.rd_data_count_i_reg[7]_i_1_n_2\,
      CO(0) => \grdc.rd_data_count_i_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \grdc.rd_data_count_i[7]_i_2_n_0\,
      DI(2) => \grdc.rd_data_count_i[7]_i_3_n_0\,
      DI(1) => \grdc.rd_data_count_i[7]_i_4_n_0\,
      DI(0) => \grdc.rd_data_count_i[7]_i_5_n_0\,
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \grdc.rd_data_count_i_reg[7]\(3 downto 0)
    );
\grdc.rd_data_count_i_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \grdc.rd_data_count_i_reg[7]_i_1_n_0\,
      CO(3 downto 0) => \NLW_grdc.rd_data_count_i_reg[8]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_grdc.rd_data_count_i_reg[8]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => D(8),
      S(3 downto 1) => B"000",
      S(0) => \grdc.rd_data_count_i_reg[8]\(0)
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(5),
      Q => \^q\(5),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(6),
      Q => \^q\(6),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(7),
      Q => \^q\(7),
      R => \reg_out_i_reg[8]_0\
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[8]_1\(8),
      Q => \^q\(8),
      R => \reg_out_i_reg[8]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xlnx_axi_quad_spi_xpm_memory_base : entity is 1;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xlnx_axi_quad_spi_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xlnx_axi_quad_spi_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xlnx_axi_quad_spi_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xlnx_axi_quad_spi_xpm_memory_base : entity is 2048;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xlnx_axi_quad_spi_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of xlnx_axi_quad_spi_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xlnx_axi_quad_spi_xpm_memory_base : entity is 256;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xlnx_axi_quad_spi_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of xlnx_axi_quad_spi_xpm_memory_base : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xlnx_axi_quad_spi_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xlnx_axi_quad_spi_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is "SYNC";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xlnx_axi_quad_spi_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of xlnx_axi_quad_spi_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xlnx_axi_quad_spi_xpm_memory_base : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xlnx_axi_quad_spi_xpm_memory_base : entity is "TRUE";
end xlnx_axi_quad_spi_xpm_memory_base;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d8";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 4) => addra(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 4) => addrb(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 8) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\(15 downto 8),
      DOBDO(7 downto 0) => doutb(7 downto 0),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      WEA(1) => ena,
      WEA(0) => ena,
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_memory_base__2\ is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 1;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 2048;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "xpm_memory_base";
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 256;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "SYNC";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_memory_base__2\ : entity is "TRUE";
end \xlnx_axi_quad_spi_xpm_memory_base__2\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_memory_base__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d8";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d8";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 7;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 4) => addra(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 4) => addrb(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 8) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\(15 downto 8),
      DOBDO(7 downto 0) => doutb(7 downto 0),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => regceb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      WEA(1) => ena,
      WEA(0) => ena,
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_axi_qspi_enhanced_mode is
  port (
    p_2_in : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    p_5_in : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awready : out STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_13_out : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    burst_tr_int : out STD_LOGIC;
    s_axi4_rlast : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg_reg_1 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\ : out STD_LOGIC;
    wr_ce_or_reduce_core_cmb : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[2]_0\ : out STD_LOGIC;
    IP2Bus_WrAck_transmit_enable : out STD_LOGIC;
    Transmit_ip2bus_error0 : out STD_LOGIC;
    reset_trig0 : out STD_LOGIC;
    sw_rst_cond : out STD_LOGIC;
    bus2ip_wrce_int : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset2ip_reset_int : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[1]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[2]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[3]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[4]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[5]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[6]\ : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[7]\ : out STD_LOGIC;
    \bus2ip_BE_reg_reg[3]_0\ : out STD_LOGIC;
    rd_ce_or_reduce_core_cmb : out STD_LOGIC;
    intr_controller_rd_ce_or_reduce : out STD_LOGIC;
    Bus_RNW_reg_reg_2 : out STD_LOGIC;
    \s_axi4_wdata[31]\ : out STD_LOGIC;
    s_axi4_wdata_0_sp_1 : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : out STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi4_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_rready : in STD_LOGIC;
    ip2Bus_WrAck_core_reg : in STD_LOGIC;
    empty : in STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : in STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ : in STD_LOGIC;
    awready_i_reg_0 : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    ip2Bus_RdAck_core_reg : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[3]_0\ : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    Tx_FIFO_Full_int : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \s_axi4_rresp_i_reg[1]_0\ : in STD_LOGIC;
    sw_rst_cond_d1 : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    \s_axi4_rdata_i_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_1_in35_in : in STD_LOGIC;
    p_1_in32_in : in STD_LOGIC;
    p_1_in29_in : in STD_LOGIC;
    p_1_in26_in : in STD_LOGIC;
    p_1_in23_in : in STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : in STD_LOGIC;
    p_1_in20_in : in STD_LOGIC;
    p_1_in17_in : in STD_LOGIC;
    spicr_7_ss_frm_axi_clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    spicr_8_tr_inhibit_frm_axi_clk : in STD_LOGIC;
    p_1_in14_in : in STD_LOGIC;
    \s_axi4_rdata_i[0]_i_2\ : in STD_LOGIC;
    SPISSR_frm_axi_clk : in STD_LOGIC;
    spicr_0_loop_frm_axi_clk : in STD_LOGIC;
    rx_fifo_empty_i : in STD_LOGIC;
    spicr_1_spe_frm_axi_clk : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : in STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : in STD_LOGIC;
    sr_3_MODF_int : in STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : in STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : in STD_LOGIC;
    spisel_d1_reg_to_axi_clk : in STD_LOGIC;
    spicr_9_lsb_frm_axi_clk : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_axi_qspi_enhanced_mode : entity is "axi_qspi_enhanced_mode";
end xlnx_axi_quad_spi_axi_qspi_enhanced_mode;

architecture STRUCTURE of xlnx_axi_quad_spi_axi_qspi_enhanced_mode is
  signal \FSM_onehot_axi_full_sm_ps[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_axi_full_sm_ps_reg_n_0_[7]\ : STD_LOGIC;
  signal I_DECODER_n_14 : STD_LOGIC;
  signal I_DECODER_n_15 : STD_LOGIC;
  signal I_DECODER_n_16 : STD_LOGIC;
  signal I_DECODER_n_21 : STD_LOGIC;
  signal I_DECODER_n_22 : STD_LOGIC;
  signal I_DECODER_n_47 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/IP2Bus_SPICR_Data_int\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S_AXI4_BID_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI4_RID_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal arready_cmb : STD_LOGIC;
  signal awready_cmb : STD_LOGIC;
  signal awready_i_i_10_n_0 : STD_LOGIC;
  signal awready_i_i_5_n_0 : STD_LOGIC;
  signal awready_i_i_6_n_0 : STD_LOGIC;
  signal awready_i_i_7_n_0 : STD_LOGIC;
  signal awready_i_i_8_n_0 : STD_LOGIC;
  signal awready_i_i_9_n_0 : STD_LOGIC;
  signal axi_full_sm_ps_IDLE_cmb : STD_LOGIC;
  signal \^burst_tr_int\ : STD_LOGIC;
  signal burst_transfer_cmb : STD_LOGIC;
  signal burst_transfer_reg_i_1_n_0 : STD_LOGIC;
  signal \bus2ip_BE_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_BE_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal bus2ip_be_int : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clear : STD_LOGIC;
  signal last_data_acked_i_2_n_0 : STD_LOGIC;
  signal last_data_acked_i_3_n_0 : STD_LOGIC;
  signal last_data_acked_i_4_n_0 : STD_LOGIC;
  signal last_data_acked_i_5_n_0 : STD_LOGIC;
  signal last_data_acked_i_7_n_0 : STD_LOGIC;
  signal \length_cntr[2]_i_2_n_0\ : STD_LOGIC;
  signal \length_cntr[3]_i_2_n_0\ : STD_LOGIC;
  signal \length_cntr[6]_i_2_n_0\ : STD_LOGIC;
  signal \length_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \length_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \length_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \length_cntr[7]_i_5_n_0\ : STD_LOGIC;
  signal \length_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^p_13_out\ : STD_LOGIC;
  signal p_16_out : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \^reset2ip_reset_int\ : STD_LOGIC;
  signal rnw_cmb : STD_LOGIC;
  signal rnw_reg_i_2_n_0 : STD_LOGIC;
  signal rnw_reg_i_3_n_0 : STD_LOGIC;
  signal rnw_reg_reg_n_0 : STD_LOGIC;
  signal \^s_axi4_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi4_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi4_bvalid\ : STD_LOGIC;
  signal \^s_axi4_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi4_rlast\ : STD_LOGIC;
  signal \s_axi4_rresp_i[1]_i_2_n_0\ : STD_LOGIC;
  signal s_axi4_wdata_0_sn_1 : STD_LOGIC;
  signal \^s_axi4_wready\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rvalid_i_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_wready_i : STD_LOGIC;
  signal s_axi_wready_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_wready_i_i_2_n_0 : STD_LOGIC;
  signal store_axi_signal_cmb : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[1]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[2]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[4]_i_2\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_full_sm_ps[6]_i_1\ : label is "soft_lutpair125";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[0]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[1]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[2]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[3]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[4]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[5]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[6]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_full_sm_ps_reg[7]\ : label is "axi_wr:00010000,axi_single_wr:00100000,axi_rd:00000010,error_resp:1100,rd_resp_2:1011,rd_last:00001000,axi_single_rd:00000100,idle:00000001,wr_resp_1:01000000,wr_resp_2:10000000,check_axi_length_error:0101";
  attribute SOFT_HLUTNM of arready_i_i_1 : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of awready_i_i_10 : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[0]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \bus2ip_BE_reg[3]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of last_data_acked_i_2 : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of last_data_acked_i_7 : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \length_cntr[2]_i_2\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \length_cntr[7]_i_4\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \length_cntr[7]_i_5\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of rnw_reg_i_2 : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of rnw_reg_i_3 : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of s_axi_wready_i_i_2 : label is "soft_lutpair127";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  SR(0) <= \^sr\(0);
  burst_tr_int <= \^burst_tr_int\;
  p_13_out <= \^p_13_out\;
  reset2ip_reset_int <= \^reset2ip_reset_int\;
  s_axi4_bid(0) <= \^s_axi4_bid\(0);
  s_axi4_bresp(0) <= \^s_axi4_bresp\(0);
  s_axi4_bvalid <= \^s_axi4_bvalid\;
  s_axi4_rid(0) <= \^s_axi4_rid\(0);
  s_axi4_rlast <= \^s_axi4_rlast\;
  s_axi4_wdata_0_sp_1 <= s_axi4_wdata_0_sn_1;
  s_axi4_wready <= \^s_axi4_wready\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
Bus2IP_Reset_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => clear,
      Q => \^sr\(0),
      R => '0'
    );
\FSM_onehot_axi_full_sm_ps[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBA00"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\,
      I1 => I_DECODER_n_16,
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I3 => s_axi4_rready,
      I4 => \FSM_onehot_axi_full_sm_ps[0]_i_2_n_0\,
      O => \FSM_onehot_axi_full_sm_ps[0]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF007000700070"
    )
        port map (
      I0 => s_axi4_awvalid,
      I1 => s_axi4_wvalid,
      I2 => axi_full_sm_ps_IDLE_cmb,
      I3 => s_axi4_arvalid,
      I4 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[7]\,
      I5 => s_axi4_bready,
      O => \FSM_onehot_axi_full_sm_ps[0]_i_2_n_0\
    );
\FSM_onehot_axi_full_sm_ps[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => s_axi4_arvalid,
      I1 => axi_full_sm_ps_IDLE_cmb,
      I2 => burst_transfer_cmb,
      I3 => I_DECODER_n_16,
      I4 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      O => \FSM_onehot_axi_full_sm_ps[1]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF404040"
    )
        port map (
      I0 => burst_transfer_cmb,
      I1 => s_axi4_arvalid,
      I2 => axi_full_sm_ps_IDLE_cmb,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      I4 => \^q\(0),
      O => \FSM_onehot_axi_full_sm_ps[2]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55550004"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I2 => I_DECODER_n_21,
      I3 => I_DECODER_n_22,
      I4 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\,
      O => \FSM_onehot_axi_full_sm_ps[3]_i_4_n_0\
    );
\FSM_onehot_axi_full_sm_ps[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps[4]_i_2_n_0\,
      I1 => s_axi4_wvalid,
      I2 => s_axi4_awvalid,
      I3 => s_axi4_arvalid,
      I4 => axi_full_sm_ps_IDLE_cmb,
      I5 => burst_transfer_cmb,
      O => \FSM_onehot_axi_full_sm_ps[4]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => I_DECODER_n_16,
      I1 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      I2 => almost_full,
      O => \FSM_onehot_axi_full_sm_ps[4]_i_2_n_0\
    );
\FSM_onehot_axi_full_sm_ps[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200020"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps[5]_i_2_n_0\,
      I1 => s_axi4_arvalid,
      I2 => axi_full_sm_ps_IDLE_cmb,
      I3 => burst_transfer_cmb,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I5 => \^q\(1),
      O => \FSM_onehot_axi_full_sm_ps[5]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi4_awvalid,
      I1 => s_axi4_wvalid,
      O => \FSM_onehot_axi_full_sm_ps[5]_i_2_n_0\
    );
\FSM_onehot_axi_full_sm_ps[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888F88"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I1 => \^q\(1),
      I2 => I_DECODER_n_16,
      I3 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      I4 => almost_full,
      O => \FSM_onehot_axi_full_sm_ps[6]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[6]\,
      I1 => s_axi4_bready,
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[7]\,
      O => \FSM_onehot_axi_full_sm_ps[7]_i_1_n_0\
    );
\FSM_onehot_axi_full_sm_ps_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[0]_i_1_n_0\,
      Q => axi_full_sm_ps_IDLE_cmb,
      S => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[1]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[2]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => I_DECODER_n_15,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[4]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[5]_i_1_n_0\,
      Q => \^q\(1),
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[6]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\FSM_onehot_axi_full_sm_ps_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FSM_onehot_axi_full_sm_ps[7]_i_1_n_0\,
      Q => \FSM_onehot_axi_full_sm_ps_reg_n_0_[7]\,
      R => \^sr\(0)
    );
I_DECODER: entity work.xlnx_axi_quad_spi_qspi_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_2(0) => Bus_RNW_reg_reg_0(0),
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_4 => \^p_13_out\,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_2,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      D(0) => I_DECODER_n_15,
      \FSM_onehot_axi_full_sm_ps_reg[0]\ => I_DECODER_n_14,
      \FSM_onehot_axi_full_sm_ps_reg[2]\ => \FSM_onehot_axi_full_sm_ps_reg[2]_0\,
      \FSM_onehot_axi_full_sm_ps_reg[3]\ => \FSM_onehot_axi_full_sm_ps_reg[3]_0\,
      \FSM_onehot_axi_full_sm_ps_reg[3]_0\ => \FSM_onehot_axi_full_sm_ps[3]_i_4_n_0\,
      \FSM_onehot_axi_full_sm_ps_reg[5]\ => I_DECODER_n_47,
      \FSM_onehot_axi_full_sm_ps_reg[6]\(7 downto 0) => \length_cntr_reg__0\(7 downto 0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(5) => \^q\(1),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(4) => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(3) => \FSM_onehot_axi_full_sm_ps_reg_n_0_[3]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(2) => \^q\(0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(1) => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\(0) => axi_full_sm_ps_IDLE_cmb,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]_0\ => \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_0\ => p_5_in,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]_1\ => \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\,
      \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\ => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\ => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\(2) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/p_0_in\(0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\(1) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/IP2Bus_SPICR_Data_int\(0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\(0) => p_16_out(23),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_1\ => \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\,
      IP2Bus_WrAck_transmit_enable => IP2Bus_WrAck_transmit_enable,
      Q(0) => bus2ip_be_int(3),
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      Transmit_ip2bus_error0 => Transmit_ip2bus_error0,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      Tx_FIFO_Full_int => Tx_FIFO_Full_int,
      almost_full => almost_full,
      \bus2ip_BE_reg_reg[3]\ => \bus2ip_BE_reg_reg[3]_0\,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(0),
      data_valid => data_valid,
      empty => empty,
      \gwack.wr_ack_i_reg\ => \^burst_tr_int\,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg => ip2Bus_WrAck_core_reg,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      \ip_irpt_enable_reg_reg[1]\ => \ip_irpt_enable_reg_reg[1]\,
      \ip_irpt_enable_reg_reg[2]\ => \ip_irpt_enable_reg_reg[2]\,
      \ip_irpt_enable_reg_reg[3]\ => \ip_irpt_enable_reg_reg[3]\,
      \ip_irpt_enable_reg_reg[4]\ => \ip_irpt_enable_reg_reg[4]\,
      \ip_irpt_enable_reg_reg[5]\ => \ip_irpt_enable_reg_reg[5]\,
      \ip_irpt_enable_reg_reg[6]\ => \ip_irpt_enable_reg_reg[6]\,
      \ip_irpt_enable_reg_reg[7]\ => \ip_irpt_enable_reg_reg[7]\,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      last_data_acked_reg => last_data_acked_i_2_n_0,
      last_data_acked_reg_0 => last_data_acked_i_3_n_0,
      last_data_acked_reg_1 => last_data_acked_i_4_n_0,
      last_data_acked_reg_2 => last_data_acked_i_5_n_0,
      \length_cntr_reg[2]\ => I_DECODER_n_22,
      \length_cntr_reg[4]\ => I_DECODER_n_21,
      \length_cntr_reg[6]\ => I_DECODER_n_16,
      p_1_in => p_1_in,
      p_1_in14_in => p_1_in14_in,
      p_1_in17_in => p_1_in17_in,
      p_1_in20_in => p_1_in20_in,
      p_1_in23_in => p_1_in23_in,
      p_1_in26_in => p_1_in26_in,
      p_1_in29_in => p_1_in29_in,
      p_1_in32_in => p_1_in32_in,
      p_1_in35_in => p_1_in35_in,
      p_2_in => p_2_in,
      p_3_in => p_3_in,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      rd_en => rd_en,
      reset2ip_reset_int => \^reset2ip_reset_int\,
      reset_trig0 => reset_trig0,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(4 downto 0) => s_axi4_araddr(4 downto 0),
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(4 downto 0) => s_axi4_awaddr(4 downto 0),
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bresp(0) => \^s_axi4_bresp\(0),
      \s_axi4_rdata_i[0]_i_2_0\ => \s_axi4_rdata_i[0]_i_2\,
      \s_axi4_rdata_i_reg[7]\ => s_axi_rvalid_i_i_2_n_0,
      \s_axi4_rdata_i_reg[8]\(8 downto 0) => \s_axi4_rdata_i_reg[8]_0\(8 downto 0),
      s_axi4_rready => s_axi4_rready,
      \s_axi4_rresp_i_reg[1]\ => \s_axi4_rresp_i[1]_i_2_n_0\,
      \s_axi4_rresp_i_reg[1]_0\ => \s_axi4_rresp_i_reg[1]_0\,
      s_axi4_wdata(3 downto 1) => s_axi4_wdata(6 downto 4),
      s_axi4_wdata(0) => s_axi4_wdata(0),
      \s_axi4_wdata[31]\ => \s_axi4_wdata[31]\,
      s_axi4_wdata_0_sp_1 => s_axi4_wdata_0_sn_1,
      s_axi4_wready => \^s_axi4_wready\,
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_wready_i => s_axi_wready_i,
      scndry_out => scndry_out,
      spicr_0_loop_frm_axi_clk => spicr_0_loop_frm_axi_clk,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_7_ss_frm_axi_clk => spicr_7_ss_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spicr_9_lsb_frm_axi_clk => spicr_9_lsb_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      sr_3_MODF_int => sr_3_MODF_int,
      store_axi_signal_cmb => store_axi_signal_cmb,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
RESET_SYNC_AX2S_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sr\(0),
      I1 => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      O => \^reset2ip_reset_int\
    );
\S_AXI4_BID_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^s_axi4_bid\(0),
      I1 => store_axi_signal_cmb,
      I2 => s_axi4_awid(0),
      I3 => s_axi4_aresetn,
      O => \S_AXI4_BID_reg[0]_i_1_n_0\
    );
\S_AXI4_BID_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \S_AXI4_BID_reg[0]_i_1_n_0\,
      Q => \^s_axi4_bid\(0),
      R => '0'
    );
\S_AXI4_BRESP_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => I_DECODER_n_47,
      Q => \^s_axi4_bresp\(0),
      R => '0'
    );
\S_AXI4_RID_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^s_axi4_rid\(0),
      I1 => store_axi_signal_cmb,
      I2 => s_axi4_arid(0),
      I3 => s_axi4_aresetn,
      O => \S_AXI4_RID_reg[0]_i_1_n_0\
    );
\S_AXI4_RID_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \S_AXI4_RID_reg[0]_i_1_n_0\,
      Q => \^s_axi4_rid\(0),
      R => '0'
    );
arready_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axi_full_sm_ps_IDLE_cmb,
      I1 => s_axi4_arvalid,
      O => arready_cmb
    );
arready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => arready_cmb,
      Q => s_axi4_arready,
      R => \^sr\(0)
    );
awready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAAAAAAAA"
    )
        port map (
      I0 => awready_i_reg_0,
      I1 => s_axi4_wvalid,
      I2 => s_axi4_awvalid,
      I3 => s_axi4_arvalid,
      I4 => axi_full_sm_ps_IDLE_cmb,
      I5 => burst_transfer_cmb,
      O => awready_cmb
    );
awready_i_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi4_awvalid,
      I1 => axi_full_sm_ps_IDLE_cmb,
      I2 => s_axi4_arvalid,
      O => awready_i_i_10_n_0
    );
awready_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => awready_i_i_5_n_0,
      I1 => \length_cntr[3]_i_2_n_0\,
      I2 => awready_i_i_6_n_0,
      I3 => awready_i_i_7_n_0,
      I4 => awready_i_i_8_n_0,
      I5 => awready_i_i_9_n_0,
      O => burst_transfer_cmb
    );
awready_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBABBB8888A888"
    )
        port map (
      I0 => s_axi4_arlen(4),
      I1 => \length_cntr[7]_i_5_n_0\,
      I2 => s_axi4_arvalid,
      I3 => axi_full_sm_ps_IDLE_cmb,
      I4 => s_axi4_awvalid,
      I5 => s_axi4_awlen(4),
      O => awready_i_i_5_n_0
    );
awready_i_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBABBB8888A888"
    )
        port map (
      I0 => s_axi4_arlen(5),
      I1 => \length_cntr[7]_i_5_n_0\,
      I2 => s_axi4_arvalid,
      I3 => axi_full_sm_ps_IDLE_cmb,
      I4 => s_axi4_awvalid,
      I5 => s_axi4_awlen(5),
      O => awready_i_i_6_n_0
    );
awready_i_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBABBB8888A888"
    )
        port map (
      I0 => s_axi4_arlen(2),
      I1 => \length_cntr[7]_i_5_n_0\,
      I2 => s_axi4_arvalid,
      I3 => axi_full_sm_ps_IDLE_cmb,
      I4 => s_axi4_awvalid,
      I5 => s_axi4_awlen(2),
      O => awready_i_i_7_n_0
    );
awready_i_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFACCCCCCFA"
    )
        port map (
      I0 => s_axi4_awlen(6),
      I1 => s_axi4_arlen(6),
      I2 => s_axi4_awlen(1),
      I3 => awready_i_i_10_n_0,
      I4 => \length_cntr[7]_i_5_n_0\,
      I5 => s_axi4_arlen(1),
      O => awready_i_i_8_n_0
    );
awready_i_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFACCCCCCFA"
    )
        port map (
      I0 => s_axi4_awlen(7),
      I1 => s_axi4_arlen(7),
      I2 => s_axi4_awlen(0),
      I3 => awready_i_i_10_n_0,
      I4 => \length_cntr[7]_i_5_n_0\,
      I5 => s_axi4_arlen(0),
      O => awready_i_i_9_n_0
    );
awready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => awready_cmb,
      Q => s_axi4_awready,
      R => \^sr\(0)
    );
burst_transfer_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^burst_tr_int\,
      I1 => store_axi_signal_cmb,
      I2 => burst_transfer_cmb,
      I3 => s_axi4_aresetn,
      O => burst_transfer_reg_i_1_n_0
    );
burst_transfer_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => burst_transfer_reg_i_1_n_0,
      Q => \^burst_tr_int\,
      R => '0'
    );
\bus2ip_BE_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi4_wstrb(0),
      I1 => rnw_cmb,
      O => \bus2ip_BE_reg[0]_i_1_n_0\
    );
\bus2ip_BE_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi4_wstrb(1),
      I1 => rnw_cmb,
      O => \bus2ip_BE_reg[3]_i_1_n_0\
    );
\bus2ip_BE_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \bus2ip_BE_reg[0]_i_1_n_0\,
      Q => bus2ip_be_int(0),
      R => \^sr\(0)
    );
\bus2ip_BE_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \bus2ip_BE_reg[3]_i_1_n_0\,
      Q => bus2ip_be_int(3),
      R => \^sr\(0)
    );
last_data_acked_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^s_axi4_rlast\,
      O => last_data_acked_i_2_n_0
    );
last_data_acked_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => I_DECODER_n_21,
      I1 => last_data_acked_i_7_n_0,
      I2 => \length_cntr_reg__0\(0),
      I3 => \length_cntr_reg__0\(1),
      I4 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I5 => \^burst_tr_int\,
      O => last_data_acked_i_3_n_0
    );
last_data_acked_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^burst_tr_int\,
      I1 => \length_cntr_reg__0\(4),
      I2 => \length_cntr_reg__0\(7),
      I3 => \length_cntr_reg__0\(5),
      I4 => \length_cntr_reg__0\(6),
      I5 => I_DECODER_n_22,
      O => last_data_acked_i_4_n_0
    );
last_data_acked_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^s_axi4_rlast\,
      I2 => \^burst_tr_int\,
      O => last_data_acked_i_5_n_0
    );
last_data_acked_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \length_cntr_reg__0\(2),
      I1 => \length_cntr_reg__0\(3),
      I2 => \^s_axi_rvalid_i_reg_0\,
      I3 => s_axi4_rready,
      O => last_data_acked_i_7_n_0
    );
last_data_acked_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => I_DECODER_n_14,
      Q => \^s_axi4_rlast\,
      R => '0'
    );
\length_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => s_axi4_arlen(0),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(0),
      I3 => store_axi_signal_cmb,
      I4 => \length_cntr_reg__0\(0),
      O => p_0_in(0)
    );
\length_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi4_arlen(1),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(1),
      I3 => store_axi_signal_cmb,
      I4 => \length_cntr_reg__0\(1),
      I5 => \length_cntr_reg__0\(0),
      O => p_0_in(1)
    );
\length_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi4_arlen(2),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(2),
      I3 => store_axi_signal_cmb,
      I4 => \length_cntr_reg__0\(2),
      I5 => \length_cntr[2]_i_2_n_0\,
      O => p_0_in(2)
    );
\length_cntr[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \length_cntr_reg__0\(1),
      I1 => \length_cntr_reg__0\(0),
      O => \length_cntr[2]_i_2_n_0\
    );
\length_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => \length_cntr[3]_i_2_n_0\,
      I1 => store_axi_signal_cmb,
      I2 => \length_cntr_reg__0\(3),
      I3 => \length_cntr_reg__0\(2),
      I4 => \length_cntr_reg__0\(1),
      I5 => \length_cntr_reg__0\(0),
      O => p_0_in(3)
    );
\length_cntr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBABBB8888A888"
    )
        port map (
      I0 => s_axi4_arlen(3),
      I1 => \length_cntr[7]_i_5_n_0\,
      I2 => s_axi4_arvalid,
      I3 => axi_full_sm_ps_IDLE_cmb,
      I4 => s_axi4_awvalid,
      I5 => s_axi4_awlen(3),
      O => \length_cntr[3]_i_2_n_0\
    );
\length_cntr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => s_axi4_arlen(4),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(4),
      I3 => store_axi_signal_cmb,
      I4 => \length_cntr_reg__0\(4),
      I5 => I_DECODER_n_22,
      O => p_0_in(4)
    );
\length_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi4_arlen(5),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(5),
      I3 => store_axi_signal_cmb,
      I4 => \length_cntr_reg__0\(5),
      I5 => \length_cntr[7]_i_4_n_0\,
      O => p_0_in(5)
    );
\length_cntr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => s_axi4_arlen(6),
      I1 => rnw_cmb,
      I2 => s_axi4_awlen(6),
      I3 => store_axi_signal_cmb,
      I4 => \length_cntr_reg__0\(6),
      I5 => \length_cntr[6]_i_2_n_0\,
      O => p_0_in(6)
    );
\length_cntr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \length_cntr_reg__0\(2),
      I1 => \length_cntr_reg__0\(3),
      I2 => \length_cntr_reg__0\(0),
      I3 => \length_cntr_reg__0\(1),
      I4 => \length_cntr_reg__0\(4),
      I5 => \length_cntr_reg__0\(5),
      O => \length_cntr[6]_i_2_n_0\
    );
\length_cntr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => store_axi_signal_cmb,
      I1 => s_axi4_rready,
      I2 => \^s_axi_rvalid_i_reg_0\,
      I3 => s_axi4_wvalid,
      I4 => \^s_axi4_wready\,
      O => \length_cntr[7]_i_1_n_0\
    );
\length_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B88BB8"
    )
        port map (
      I0 => \length_cntr[7]_i_3_n_0\,
      I1 => store_axi_signal_cmb,
      I2 => \length_cntr_reg__0\(7),
      I3 => \length_cntr[7]_i_4_n_0\,
      I4 => \length_cntr_reg__0\(6),
      I5 => \length_cntr_reg__0\(5),
      O => p_0_in(7)
    );
\length_cntr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBABBB8888A888"
    )
        port map (
      I0 => s_axi4_arlen(7),
      I1 => \length_cntr[7]_i_5_n_0\,
      I2 => s_axi4_arvalid,
      I3 => axi_full_sm_ps_IDLE_cmb,
      I4 => s_axi4_awvalid,
      I5 => s_axi4_awlen(7),
      O => \length_cntr[7]_i_3_n_0\
    );
\length_cntr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \length_cntr_reg__0\(4),
      I1 => \length_cntr_reg__0\(1),
      I2 => \length_cntr_reg__0\(0),
      I3 => \length_cntr_reg__0\(3),
      I4 => \length_cntr_reg__0\(2),
      O => \length_cntr[7]_i_4_n_0\
    );
\length_cntr[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rnw_reg_reg_n_0,
      I1 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      I4 => \^q\(1),
      O => \length_cntr[7]_i_5_n_0\
    );
\length_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \length_cntr_reg__0\(0),
      R => clear
    );
\length_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \length_cntr_reg__0\(1),
      R => clear
    );
\length_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \length_cntr_reg__0\(2),
      R => clear
    );
\length_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \length_cntr_reg__0\(3),
      R => clear
    );
\length_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \length_cntr_reg__0\(4),
      R => clear
    );
\length_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \length_cntr_reg__0\(5),
      R => clear
    );
\length_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \length_cntr_reg__0\(6),
      R => clear
    );
\length_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => \length_cntr[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \length_cntr_reg__0\(7),
      R => clear
    );
rnw_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FD00FD00FFFF"
    )
        port map (
      I0 => rnw_reg_i_2_n_0,
      I1 => \^q\(0),
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I3 => rnw_reg_reg_n_0,
      I4 => rnw_reg_i_3_n_0,
      I5 => s_axi4_awvalid,
      O => rnw_cmb
    );
rnw_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      I1 => \^q\(1),
      O => rnw_reg_i_2_n_0
    );
rnw_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi4_arvalid,
      I1 => axi_full_sm_ps_IDLE_cmb,
      O => rnw_reg_i_3_n_0
    );
rnw_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => rnw_cmb,
      Q => rnw_reg_reg_n_0,
      R => \^sr\(0)
    );
\s_axi4_rdata_i[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi4_aresetn,
      O => clear
    );
\s_axi4_rdata_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(0),
      Q => s_axi4_rdata(0),
      R => clear
    );
\s_axi4_rdata_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(1),
      Q => s_axi4_rdata(1),
      R => clear
    );
\s_axi4_rdata_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(2),
      Q => s_axi4_rdata(2),
      R => clear
    );
\s_axi4_rdata_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/p_0_in\(0),
      Q => s_axi4_rdata(10),
      R => clear
    );
\s_axi4_rdata_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(3),
      Q => s_axi4_rdata(3),
      R => clear
    );
\s_axi4_rdata_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(4),
      Q => s_axi4_rdata(4),
      R => clear
    );
\s_axi4_rdata_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(5),
      Q => s_axi4_rdata(5),
      R => clear
    );
\s_axi4_rdata_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(6),
      Q => s_axi4_rdata(6),
      R => clear
    );
\s_axi4_rdata_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => D(7),
      Q => s_axi4_rdata(7),
      R => clear
    );
\s_axi4_rdata_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => p_16_out(23),
      Q => s_axi4_rdata(8),
      R => clear
    );
\s_axi4_rdata_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I/IP2Bus_SPICR_Data_int\(0),
      Q => s_axi4_rdata(9),
      R => clear
    );
\s_axi4_rresp_i[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => bus2ip_be_int(0),
      I1 => s_axi4_wdata(0),
      I2 => s_axi4_wdata(3),
      I3 => s_axi4_wdata(1),
      I4 => s_axi4_wdata(2),
      O => \s_axi4_rresp_i[1]_i_2_n_0\
    );
\s_axi4_rresp_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => E(0),
      D => \^p_13_out\,
      Q => s_axi4_rresp(0),
      R => clear
    );
s_axi4_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5C"
    )
        port map (
      I0 => almost_full,
      I1 => s_axi_wready_i,
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[4]\,
      O => \^s_axi4_wready\
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => \^s_axi4_bvalid\,
      I1 => s_axi4_bready,
      I2 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[6]\,
      I3 => s_axi4_aresetn,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi4_bvalid\,
      R => '0'
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF222F"
    )
        port map (
      I0 => \^s_axi_rvalid_i_reg_0\,
      I1 => s_axi4_rready,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      I3 => s_axi_rvalid_i_i_2_n_0,
      I4 => I_DECODER_n_15,
      I5 => axi_full_sm_ps_IDLE_cmb,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => \FSM_onehot_axi_full_sm_ps_reg_n_0_[1]\,
      I1 => \length_cntr_reg__0\(4),
      I2 => \length_cntr_reg__0\(7),
      I3 => \length_cntr_reg__0\(5),
      I4 => \length_cntr_reg__0\(6),
      I5 => I_DECODER_n_22,
      O => s_axi_rvalid_i_i_2_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => '0'
    );
s_axi_wready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F8800000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\,
      I1 => \^q\(1),
      I2 => s_axi_wready_i_i_2_n_0,
      I3 => burst_transfer_cmb,
      I4 => \FSM_onehot_axi_full_sm_ps[4]_i_2_n_0\,
      I5 => s_axi4_aresetn,
      O => s_axi_wready_i_i_1_n_0
    );
s_axi_wready_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => s_axi4_wvalid,
      I1 => s_axi4_awvalid,
      I2 => s_axi4_arvalid,
      I3 => axi_full_sm_ps_IDLE_cmb,
      O => s_axi_wready_i_i_2_n_0
    );
s_axi_wready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => s_axi_wready_i_i_1_n_0,
      Q => s_axi_wready_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    d_out_reg : out STD_LOGIC;
    wr_pntr_plus1_pf_carry : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \guf.underflow_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_rst : entity is "xpm_fifo_rst";
end xlnx_axi_quad_spi_xpm_fifo_rst;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_rst is
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\ : label is "soft_lutpair72";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute SOFT_HLUTNM of \__2/i_\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_rd_rst_ic_i_1\ : label is "soft_lutpair75";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \gen_rst_ic.wr_rst_busy_ic_i_2\ : label is "soft_lutpair73";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[8]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair74";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F40044"
    )
        port map (
      I0 => p_0_in,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEEEAFFFFEEEA"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F44444"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I2 => rst,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered\,
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__2/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.rst_seq_reentered\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.xlnx_axi_quad_spi_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I1 => \gen_rst_ic.rst_seq_reentered\,
      I2 => rst,
      I3 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFEFC"
    )
        port map (
      I0 => \rst_i__0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_sync_rst__6\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => wr_pntr_plus1_pf_carry
    );
\grdc.rd_data_count_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \guf.underflow_i_reg\,
      I1 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I2 => rd_en,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst_d1,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => wr_en,
      I3 => \^wrst_busy\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic\,
      I5 => rst,
      O => d_out_reg
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_fifo_rst__xdcDup__1\ is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    d_out_reg : out STD_LOGIC;
    wr_pntr_plus1_pf_carry : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    \gwack.wr_ack_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \guf.underflow_i_reg\ : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_fifo_rst__xdcDup__1\ : entity is "xpm_fifo_rst";
end \xlnx_axi_quad_spi_xpm_fifo_rst__xdcDup__1\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_fifo_rst__xdcDup__1\ is
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\ : label is "soft_lutpair32";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_IN:00010,WRST_OUT:00100,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute SOFT_HLUTNM of \__2/i_\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_rd_rst_ic_i_1\ : label is "soft_lutpair35";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_rst_ic.wr_rst_busy_ic_i_2\ : label is "soft_lutpair33";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \guf.underflow_i_i_1\ : label is "soft_lutpair34";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F40044"
    )
        port map (
      I0 => p_0_in,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEEEAFFFFEEEA"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F44444"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I2 => rst,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered\,
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__2/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.rst_seq_reentered\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_2_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_sync_rst__5\
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I1 => \gen_rst_ic.rst_seq_reentered\,
      I2 => rst,
      I3 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFEFC"
    )
        port map (
      I0 => \rst_i__0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_sync_rst__4\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => wr_pntr_plus1_pf_carry
    );
\grdc.rd_data_count_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => SR(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \guf.underflow_i_reg\,
      I1 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I2 => rd_en,
      O => underflow_i0
    );
\gwack.wr_ack_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rst_d1,
      I1 => \gwack.wr_ack_i_reg\,
      I2 => wr_en,
      I3 => \^wrst_busy\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic\,
      I5 => rst,
      O => d_out_reg
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xlnx_axi_quad_spi_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xlnx_axi_quad_spi_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xlnx_axi_quad_spi_xpm_fifo_base : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 256;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xlnx_axi_quad_spi_xpm_fifo_base : entity is 2048;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xlnx_axi_quad_spi_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xlnx_axi_quad_spi_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xlnx_axi_quad_spi_xpm_fifo_base : entity is 251;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xlnx_axi_quad_spi_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xlnx_axi_quad_spi_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xlnx_axi_quad_spi_xpm_fifo_base : entity is 251;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xlnx_axi_quad_spi_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 9;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xlnx_axi_quad_spi_xpm_fifo_base : entity is 9;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xlnx_axi_quad_spi_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xlnx_axi_quad_spi_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 8;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 8;
  attribute READ_MODE : integer;
  attribute READ_MODE of xlnx_axi_quad_spi_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of xlnx_axi_quad_spi_xpm_fifo_base : entity is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xlnx_axi_quad_spi_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xlnx_axi_quad_spi_xpm_fifo_base : entity is 9;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xlnx_axi_quad_spi_xpm_fifo_base : entity is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xlnx_axi_quad_spi_xpm_fifo_base : entity is 8;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xlnx_axi_quad_spi_xpm_fifo_base : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xlnx_axi_quad_spi_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xlnx_axi_quad_spi_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of xlnx_axi_quad_spi_xpm_fifo_base : entity is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xlnx_axi_quad_spi_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xlnx_axi_quad_spi_xpm_fifo_base : entity is 1;
end xlnx_axi_quad_spi_xpm_fifo_base;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_12\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_13\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_14\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_15\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_16\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_11\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_12\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_13\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_14\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_15\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_16\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_17\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_9\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_11\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_12\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_13\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_14\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_9\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_4\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_5\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal going_afull : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal leaving_afull : STD_LOGIC;
  signal leaving_empty : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdp_inst_n_27 : STD_LOGIC;
  signal rdp_inst_n_28 : STD_LOGIC;
  signal rdp_inst_n_29 : STD_LOGIC;
  signal rdp_inst_n_30 : STD_LOGIC;
  signal rdp_inst_n_31 : STD_LOGIC;
  signal rdp_inst_n_32 : STD_LOGIC;
  signal rdp_inst_n_8 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wrpp1_inst_n_13 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair76";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 9;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 8;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 9;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 8;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair76";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 1023;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 2048;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.xlnx_axi_quad_spi_xpm_counter_updn
     port map (
      Q(1 downto 0) => count_value_i(7 downto 6),
      \count_value_i_reg[6]_0\ => \^full\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(5 downto 0) => rd_pntr_wr(5 downto 0),
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \gen_cdc_pntr.rpw_gray_reg_n_16\,
      going_afull => going_afull,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(8 downto 0) => rd_pntr_wr_cdc_dc(8 downto 0),
      src_clk => rd_clk,
      src_in_bin(8) => rdp_inst_n_25,
      src_in_bin(7) => rdp_inst_n_26,
      src_in_bin(6) => rdp_inst_n_27,
      src_in_bin(5) => rdp_inst_n_28,
      src_in_bin(4) => rdp_inst_n_29,
      src_in_bin(3) => rdp_inst_n_30,
      src_in_bin(2) => rdp_inst_n_31,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_32
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.xlnx_axi_quad_spi_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(7 downto 0) => rd_pntr_wr_cdc(7 downto 0),
      src_clk => rd_clk,
      src_in_bin(7 downto 0) => rd_pntr_ext(7 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.xlnx_axi_quad_spi_xpm_fifo_reg_vec
     port map (
      D(7 downto 0) => rd_pntr_wr_cdc(7 downto 0),
      Q(7 downto 0) => rd_pntr_wr(7 downto 0),
      S(3) => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      S(2) => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      S(1) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      S(0) => \gen_cdc_pntr.rpw_gray_reg_n_3\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\(1 downto 0) => count_value_i(7 downto 6),
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(7 downto 0) => wr_pntr_plus1_pf(8 downto 1),
      \reg_out_i_reg[3]_0\(3) => \gen_cdc_pntr.rpw_gray_reg_n_12\,
      \reg_out_i_reg[3]_0\(2) => \gen_cdc_pntr.rpw_gray_reg_n_13\,
      \reg_out_i_reg[3]_0\(1) => \gen_cdc_pntr.rpw_gray_reg_n_14\,
      \reg_out_i_reg[3]_0\(0) => \gen_cdc_pntr.rpw_gray_reg_n_15\,
      \reg_out_i_reg[6]_0\ => \gen_cdc_pntr.rpw_gray_reg_n_16\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(8 downto 0) => rd_pntr_wr_cdc_dc(8 downto 0),
      Q(8) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      Q(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_8\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.xlnx_axi_quad_spi_xpm_fifo_reg_vec_1
     port map (
      D(7 downto 0) => wr_pntr_rd_cdc(7 downto 0),
      Q(7) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_10\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_11\,
      S(3) => \gen_cdc_pntr.wpr_gray_reg_n_0\,
      S(2) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      S(1) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      S(0) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(6 downto 0) => rd_pntr_ext(7 downto 1),
      rd_clk => rd_clk,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[3]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_n_12\,
      \reg_out_i_reg[3]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_n_13\,
      \reg_out_i_reg[3]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_n_14\
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_2\
     port map (
      D(8 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(8 downto 0),
      DI(1) => rdp_inst_n_9,
      DI(0) => \gen_fwft.rdpp1_inst_n_5\,
      Q(8) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      Q(7) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_11\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_12\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_13\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_14\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_15\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_17\,
      S(2) => rdp_inst_n_20,
      S(1) => \gen_fwft.rdpp1_inst_n_3\,
      S(0) => \gen_fwft.rdpp1_inst_n_4\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[7]\(3) => rdp_inst_n_21,
      \grdc.rd_data_count_i_reg[7]\(2) => rdp_inst_n_22,
      \grdc.rd_data_count_i_reg[7]\(1) => rdp_inst_n_23,
      \grdc.rd_data_count_i_reg[7]\(0) => rdp_inst_n_24,
      \grdc.rd_data_count_i_reg[7]_0\(5 downto 0) => rd_pntr_ext(6 downto 1),
      \grdc.rd_data_count_i_reg[8]\(0) => rdp_inst_n_10,
      rd_clk => rd_clk,
      \reg_out_i_reg[8]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[8]_1\(8 downto 0) => wr_pntr_rd_cdc_dc(8 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(8 downto 0) => wr_pntr_rd_cdc_dc(8 downto 0),
      src_clk => wr_clk,
      src_in_bin(8 downto 0) => wr_pntr_ext(8 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_gray__4\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(7 downto 0) => wr_pntr_rd_cdc(7 downto 0),
      src_clk => wr_clk,
      src_in_bin(7 downto 0) => wr_pntr_ext(7 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \^empty\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized1\
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_5\,
      Q(1 downto 0) => rd_pntr_ext(1 downto 0),
      S(1) => \gen_fwft.rdpp1_inst_n_3\,
      S(0) => \gen_fwft.rdpp1_inst_n_4\,
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[0]_1\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_2\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[3]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      \grdc.rd_data_count_i_reg[3]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_17\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrpp2_inst_n_0,
      Q => \^almost_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrpp1_inst_n_13,
      Q => \^full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => diff_pntr_pf_q(5),
      I1 => diff_pntr_pf_q(8),
      I2 => diff_pntr_pf_q(4),
      I3 => diff_pntr_pf_q(6),
      I4 => diff_pntr_pf_q(7),
      O => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.xlnx_axi_quad_spi_xpm_memory_base
     port map (
      addra(7 downto 0) => wr_pntr_ext(7 downto 0),
      addrb(7 downto 0) => rd_pntr_ext(7 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(7 downto 0) => din(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(7 downto 0),
      doutb(7 downto 0) => dout(7 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => rdp_inst_n_8,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(0),
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(5),
      Q => wr_data_count(5),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(6),
      Q => wr_data_count(6),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(7),
      Q => wr_data_count(7),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(8),
      Q => wr_data_count(8),
      R => wrst_busy
    );
rdp_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized2\
     port map (
      D(7 downto 0) => diff_pntr_pe(7 downto 0),
      DI(0) => rdp_inst_n_9,
      Q(7 downto 0) => rd_pntr_ext(7 downto 0),
      S(3) => \gen_cdc_pntr.wpr_gray_reg_n_0\,
      S(2) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      S(1) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      S(0) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[2]_0\(0) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_21,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_22,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_23,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_24,
      \count_value_i_reg[7]_0\(0) => rdp_inst_n_10,
      \count_value_i_reg[8]_0\ => \^rd_rst_busy\,
      enb => rdp_inst_n_8,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(2) => \gen_cdc_pntr.wpr_gray_reg_n_12\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(1) => \gen_cdc_pntr.wpr_gray_reg_n_13\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_14\,
      \gen_pf_ic_rc.ram_empty_i_reg\(7) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.ram_empty_i_reg\(6) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.ram_empty_i_reg\(5) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \gen_pf_ic_rc.ram_empty_i_reg\(4) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      \gen_pf_ic_rc.ram_empty_i_reg\(3) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      \gen_pf_ic_rc.ram_empty_i_reg\(2) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      \gen_pf_ic_rc.ram_empty_i_reg\(1) => \gen_cdc_pntr.wpr_gray_reg_n_10\,
      \gen_pf_ic_rc.ram_empty_i_reg\(0) => \gen_cdc_pntr.wpr_gray_reg_n_11\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[8]\(7) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      \grdc.rd_data_count_i_reg[8]\(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      \grdc.rd_data_count_i_reg[8]\(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_11\,
      \grdc.rd_data_count_i_reg[8]\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_12\,
      \grdc.rd_data_count_i_reg[8]\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_13\,
      \grdc.rd_data_count_i_reg[8]\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_14\,
      \grdc.rd_data_count_i_reg[8]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_15\,
      \grdc.rd_data_count_i_reg[8]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      leaving_empty => leaving_empty,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \src_gray_ff_reg[2]\ => \gen_fwft.rdpp1_inst_n_1\,
      src_in_bin(7) => rdp_inst_n_25,
      src_in_bin(6) => rdp_inst_n_26,
      src_in_bin(5) => rdp_inst_n_27,
      src_in_bin(4) => rdp_inst_n_28,
      src_in_bin(3) => rdp_inst_n_29,
      src_in_bin(2) => rdp_inst_n_30,
      src_in_bin(1) => rdp_inst_n_31,
      src_in_bin(0) => rdp_inst_n_32
    );
rdpp1_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized3\
     port map (
      E(0) => rdp_inst_n_8,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \gen_pf_ic_rc.ram_empty_i_reg\(7) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.ram_empty_i_reg\(6) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.ram_empty_i_reg\(5) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \gen_pf_ic_rc.ram_empty_i_reg\(4) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      \gen_pf_ic_rc.ram_empty_i_reg\(3) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      \gen_pf_ic_rc.ram_empty_i_reg\(2) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      \gen_pf_ic_rc.ram_empty_i_reg\(1) => \gen_cdc_pntr.wpr_gray_reg_n_10\,
      \gen_pf_ic_rc.ram_empty_i_reg\(0) => \gen_cdc_pntr.wpr_gray_reg_n_11\,
      leaving_empty => leaving_empty,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.xlnx_axi_quad_spi_xpm_fifo_reg_bit
     port map (
      clr_full => clr_full,
      d_out_reg_0 => rst_d1_inst_n_1,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\,
      \gof.overflow_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_3\
     port map (
      D(8 downto 0) => \gwdc.diff_wr_rd_pntr1_out\(8 downto 0),
      Q(8 downto 0) => wr_pntr_ext(8 downto 0),
      \count_value_i_reg[6]_0\ => \^full\,
      \gwdc.wr_data_count_i_reg[8]\(8) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      \gwdc.wr_data_count_i_reg[8]\(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      \gwdc.wr_data_count_i_reg[8]\(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      \gwdc.wr_data_count_i_reg[8]\(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[8]\(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[8]\(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[8]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      \gwdc.wr_data_count_i_reg[8]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      \gwdc.wr_data_count_i_reg[8]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_8\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_4\
     port map (
      D(4 downto 0) => diff_pntr_pf_q0(8 downto 4),
      Q(7 downto 0) => wr_pntr_plus1_pf(8 downto 1),
      S(3) => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      S(2) => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      S(1) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      S(0) => \gen_cdc_pntr.rpw_gray_reg_n_3\,
      \count_value_i_reg[6]_0\ => \^full\,
      d_out_reg => wrpp1_inst_n_13,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(7 downto 0) => rd_pntr_wr(7 downto 0),
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(3) => \gen_cdc_pntr.rpw_gray_reg_n_12\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(2) => \gen_cdc_pntr.rpw_gray_reg_n_13\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(1) => \gen_cdc_pntr.rpw_gray_reg_n_14\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(0) => \gen_cdc_pntr.rpw_gray_reg_n_15\,
      leaving_afull => leaving_afull,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized0\
     port map (
      Q(7 downto 0) => rd_pntr_wr(7 downto 0),
      almost_full => \^almost_full\,
      clr_full => clr_full,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \^full\,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ => wrpp2_inst_n_0,
      going_afull => going_afull,
      leaving_afull => leaving_afull,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.xlnx_axi_quad_spi_xpm_fifo_rst
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      d_out_reg => xpm_fifo_rst_inst_n_2,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 256;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 2048;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 251;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 251;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 9;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 9;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute READ_MODE : integer;
  attribute READ_MODE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 9;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 8;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 3;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 3;
  attribute invalid : integer;
  attribute invalid of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ : entity is 1;
end \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal \^almost_empty\ : STD_LOGIC;
  signal \^almost_full\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal diff_pntr_pf_q : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 8 downto 4 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_12\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_13\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_14\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_15\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_16\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_11\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_12\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_13\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_14\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_15\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_16\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_17\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_9\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_10\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_11\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_12\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_13\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_14\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_8\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_9\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_1\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_2\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_4\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_5\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\ : STD_LOGIC;
  signal going_afull : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal leaving_afull : STD_LOGIC;
  signal leaving_empty : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_20 : STD_LOGIC;
  signal rdp_inst_n_21 : STD_LOGIC;
  signal rdp_inst_n_22 : STD_LOGIC;
  signal rdp_inst_n_23 : STD_LOGIC;
  signal rdp_inst_n_24 : STD_LOGIC;
  signal rdp_inst_n_25 : STD_LOGIC;
  signal rdp_inst_n_26 : STD_LOGIC;
  signal rdp_inst_n_27 : STD_LOGIC;
  signal rdp_inst_n_28 : STD_LOGIC;
  signal rdp_inst_n_29 : STD_LOGIC;
  signal rdp_inst_n_30 : STD_LOGIC;
  signal rdp_inst_n_31 : STD_LOGIC;
  signal rdp_inst_n_32 : STD_LOGIC;
  signal rdp_inst_n_8 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wrpp1_inst_n_13 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_2 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair36";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 9;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 8;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 9;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 8;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair36";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 7;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 1023;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 2048;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 256;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 8;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
begin
  almost_empty <= \^almost_empty\;
  almost_full <= \^almost_full\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gaf_wptr_p3.wrpp3_inst\: entity work.xlnx_axi_quad_spi_xpm_counter_updn_5
     port map (
      Q(1 downto 0) => count_value_i(7 downto 6),
      \count_value_i_reg[6]_0\ => \^full\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2_0\(5 downto 0) => rd_pntr_wr(5 downto 0),
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \gen_cdc_pntr.rpw_gray_reg_n_16\,
      going_afull => going_afull,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_gray__parameterized1__2\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(8 downto 0) => rd_pntr_wr_cdc_dc(8 downto 0),
      src_clk => rd_clk,
      src_in_bin(8) => rdp_inst_n_25,
      src_in_bin(7) => rdp_inst_n_26,
      src_in_bin(6) => rdp_inst_n_27,
      src_in_bin(5) => rdp_inst_n_28,
      src_in_bin(4) => rdp_inst_n_29,
      src_in_bin(3) => rdp_inst_n_30,
      src_in_bin(2) => rdp_inst_n_31,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_32
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_gray__3\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(7 downto 0) => rd_pntr_wr_cdc(7 downto 0),
      src_clk => rd_clk,
      src_in_bin(7 downto 0) => rd_pntr_ext(7 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.xlnx_axi_quad_spi_xpm_fifo_reg_vec_6
     port map (
      D(7 downto 0) => rd_pntr_wr_cdc(7 downto 0),
      Q(7 downto 0) => rd_pntr_wr(7 downto 0),
      S(3) => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      S(2) => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      S(1) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      S(0) => \gen_cdc_pntr.rpw_gray_reg_n_3\,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_i_2\(1 downto 0) => count_value_i(7 downto 6),
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\(7 downto 0) => wr_pntr_plus1_pf(8 downto 1),
      \reg_out_i_reg[3]_0\(3) => \gen_cdc_pntr.rpw_gray_reg_n_12\,
      \reg_out_i_reg[3]_0\(2) => \gen_cdc_pntr.rpw_gray_reg_n_13\,
      \reg_out_i_reg[3]_0\(1) => \gen_cdc_pntr.rpw_gray_reg_n_14\,
      \reg_out_i_reg[3]_0\(0) => \gen_cdc_pntr.rpw_gray_reg_n_15\,
      \reg_out_i_reg[6]_0\ => \gen_cdc_pntr.rpw_gray_reg_n_16\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_7\
     port map (
      D(8 downto 0) => rd_pntr_wr_cdc_dc(8 downto 0),
      Q(8) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      Q(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_8\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.xlnx_axi_quad_spi_xpm_fifo_reg_vec_8
     port map (
      D(7 downto 0) => wr_pntr_rd_cdc(7 downto 0),
      Q(7) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_10\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_11\,
      S(3) => \gen_cdc_pntr.wpr_gray_reg_n_0\,
      S(2) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      S(1) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      S(0) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\(6 downto 0) => rd_pntr_ext(7 downto 1),
      rd_clk => rd_clk,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[3]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_n_12\,
      \reg_out_i_reg[3]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_n_13\,
      \reg_out_i_reg[3]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_n_14\
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\xlnx_axi_quad_spi_xpm_fifo_reg_vec__parameterized0_9\
     port map (
      D(8 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(8 downto 0),
      DI(1) => rdp_inst_n_9,
      DI(0) => \gen_fwft.rdpp1_inst_n_5\,
      Q(8) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      Q(7) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      Q(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_11\,
      Q(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_12\,
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_13\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_14\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_15\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_17\,
      S(2) => rdp_inst_n_20,
      S(1) => \gen_fwft.rdpp1_inst_n_3\,
      S(0) => \gen_fwft.rdpp1_inst_n_4\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[7]\(3) => rdp_inst_n_21,
      \grdc.rd_data_count_i_reg[7]\(2) => rdp_inst_n_22,
      \grdc.rd_data_count_i_reg[7]\(1) => rdp_inst_n_23,
      \grdc.rd_data_count_i_reg[7]\(0) => rdp_inst_n_24,
      \grdc.rd_data_count_i_reg[7]_0\(5 downto 0) => rd_pntr_ext(6 downto 1),
      \grdc.rd_data_count_i_reg[8]\(0) => rdp_inst_n_11,
      rd_clk => rd_clk,
      \reg_out_i_reg[8]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[8]_1\(8 downto 0) => wr_pntr_rd_cdc_dc(8 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_gray__parameterized0__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(8 downto 0) => wr_pntr_rd_cdc_dc(8 downto 0),
      src_clk => wr_clk,
      src_in_bin(8 downto 0) => wr_pntr_ext(8 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\xlnx_axi_quad_spi_xpm_cdc_gray__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(7 downto 0) => wr_pntr_rd_cdc(7 downto 0),
      src_clk => wr_clk,
      src_in_bin(7 downto 0) => wr_pntr_ext(7 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gae_fwft.aempty_fwft_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD4000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => ram_empty_i,
      I2 => curr_fwft_state(1),
      I3 => rd_en,
      I4 => \^almost_empty\,
      O => aempty_fwft_i0
    );
\gen_fwft.gae_fwft.aempty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => aempty_fwft_i0,
      Q => \^almost_empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \^empty\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized1_10\
     port map (
      DI(0) => \gen_fwft.rdpp1_inst_n_5\,
      Q(1 downto 0) => rd_pntr_ext(1 downto 0),
      S(1) => \gen_fwft.rdpp1_inst_n_3\,
      S(0) => \gen_fwft.rdpp1_inst_n_4\,
      \count_value_i_reg[0]_0\ => \gen_fwft.rdpp1_inst_n_1\,
      \count_value_i_reg[0]_1\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_2\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[3]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      \grdc.rd_data_count_i_reg[3]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_17\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrpp2_inst_n_0,
      Q => \^almost_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrpp1_inst_n_13,
      Q => \^full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(4),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(5),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(6),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(7),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[5]\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[4]\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[7]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[6]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_3_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => diff_pntr_pf_q(4),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(5),
      Q => diff_pntr_pf_q(5),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(6),
      Q => diff_pntr_pf_q(6),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(7),
      Q => diff_pntr_pf_q(7),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(8),
      Q => diff_pntr_pf_q(8),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => diff_pntr_pf_q(5),
      I1 => diff_pntr_pf_q(8),
      I2 => diff_pntr_pf_q(4),
      I3 => diff_pntr_pf_q(6),
      I4 => diff_pntr_pf_q(7),
      O => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      S => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.\xlnx_axi_quad_spi_xpm_memory_base__2\
     port map (
      addra(7 downto 0) => wr_pntr_ext(7 downto 0),
      addrb(7 downto 0) => rd_pntr_ext(7 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(7 downto 0) => din(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(7 downto 0),
      doutb(7 downto 0) => dout(7 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => rdp_inst_n_8,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(0),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(4),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(5),
      Q => rd_data_count(5),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(6),
      Q => rd_data_count(6),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(7),
      Q => rd_data_count(7),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(8),
      Q => rd_data_count(8),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwack.wr_ack_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => xpm_fifo_rst_inst_n_2,
      Q => wr_ack,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(0),
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(3),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(5),
      Q => wr_data_count(5),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(6),
      Q => wr_data_count(6),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(7),
      Q => wr_data_count(7),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(8),
      Q => wr_data_count(8),
      R => wrst_busy
    );
rdp_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_11\
     port map (
      D(7 downto 0) => diff_pntr_pe(7 downto 0),
      DI(0) => rdp_inst_n_9,
      Q(7 downto 0) => rd_pntr_ext(7 downto 0),
      S(3) => \gen_cdc_pntr.wpr_gray_reg_n_0\,
      S(2) => \gen_cdc_pntr.wpr_gray_reg_n_1\,
      S(1) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      S(0) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[2]_0\(0) => rdp_inst_n_20,
      \count_value_i_reg[6]_0\(3) => rdp_inst_n_21,
      \count_value_i_reg[6]_0\(2) => rdp_inst_n_22,
      \count_value_i_reg[6]_0\(1) => rdp_inst_n_23,
      \count_value_i_reg[6]_0\(0) => rdp_inst_n_24,
      \count_value_i_reg[7]_0\(0) => rdp_inst_n_11,
      \count_value_i_reg[8]_0\ => \^rd_rst_busy\,
      enb => rdp_inst_n_8,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(2) => \gen_cdc_pntr.wpr_gray_reg_n_12\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(1) => \gen_cdc_pntr.wpr_gray_reg_n_13\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_14\,
      \gen_pf_ic_rc.ram_empty_i_reg\(7) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.ram_empty_i_reg\(6) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.ram_empty_i_reg\(5) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \gen_pf_ic_rc.ram_empty_i_reg\(4) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      \gen_pf_ic_rc.ram_empty_i_reg\(3) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      \gen_pf_ic_rc.ram_empty_i_reg\(2) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      \gen_pf_ic_rc.ram_empty_i_reg\(1) => \gen_cdc_pntr.wpr_gray_reg_n_10\,
      \gen_pf_ic_rc.ram_empty_i_reg\(0) => \gen_cdc_pntr.wpr_gray_reg_n_11\,
      \grdc.rd_data_count_i_reg[3]\ => \gen_fwft.rdpp1_inst_n_2\,
      \grdc.rd_data_count_i_reg[8]\(7) => \gen_cdc_pntr.wpr_gray_reg_dc_n_9\,
      \grdc.rd_data_count_i_reg[8]\(6) => \gen_cdc_pntr.wpr_gray_reg_dc_n_10\,
      \grdc.rd_data_count_i_reg[8]\(5) => \gen_cdc_pntr.wpr_gray_reg_dc_n_11\,
      \grdc.rd_data_count_i_reg[8]\(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_12\,
      \grdc.rd_data_count_i_reg[8]\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_13\,
      \grdc.rd_data_count_i_reg[8]\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_14\,
      \grdc.rd_data_count_i_reg[8]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_15\,
      \grdc.rd_data_count_i_reg[8]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_16\,
      leaving_empty => leaving_empty,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \src_gray_ff_reg[2]\ => \gen_fwft.rdpp1_inst_n_1\,
      src_in_bin(7) => rdp_inst_n_25,
      src_in_bin(6) => rdp_inst_n_26,
      src_in_bin(5) => rdp_inst_n_27,
      src_in_bin(4) => rdp_inst_n_28,
      src_in_bin(3) => rdp_inst_n_29,
      src_in_bin(2) => rdp_inst_n_30,
      src_in_bin(1) => rdp_inst_n_31,
      src_in_bin(0) => rdp_inst_n_32
    );
rdpp1_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_12\
     port map (
      E(0) => rdp_inst_n_8,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \gen_pf_ic_rc.ram_empty_i_reg\(7) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.ram_empty_i_reg\(6) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \gen_pf_ic_rc.ram_empty_i_reg\(5) => \gen_cdc_pntr.wpr_gray_reg_n_6\,
      \gen_pf_ic_rc.ram_empty_i_reg\(4) => \gen_cdc_pntr.wpr_gray_reg_n_7\,
      \gen_pf_ic_rc.ram_empty_i_reg\(3) => \gen_cdc_pntr.wpr_gray_reg_n_8\,
      \gen_pf_ic_rc.ram_empty_i_reg\(2) => \gen_cdc_pntr.wpr_gray_reg_n_9\,
      \gen_pf_ic_rc.ram_empty_i_reg\(1) => \gen_cdc_pntr.wpr_gray_reg_n_10\,
      \gen_pf_ic_rc.ram_empty_i_reg\(0) => \gen_cdc_pntr.wpr_gray_reg_n_11\,
      leaving_empty => leaving_empty,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.xlnx_axi_quad_spi_xpm_fifo_reg_bit_13
     port map (
      clr_full => clr_full,
      d_out_reg_0 => rst_d1_inst_n_1,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \gen_pf_ic_rc.gpf_ic.prog_full_i_i_2_n_0\,
      \gof.overflow_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized2_14\
     port map (
      D(8 downto 0) => \gwdc.diff_wr_rd_pntr1_out\(8 downto 0),
      Q(8 downto 0) => wr_pntr_ext(8 downto 0),
      \count_value_i_reg[6]_0\ => \^full\,
      \gwdc.wr_data_count_i_reg[8]\(8) => \gen_cdc_pntr.rpw_gray_reg_dc_n_0\,
      \gwdc.wr_data_count_i_reg[8]\(7) => \gen_cdc_pntr.rpw_gray_reg_dc_n_1\,
      \gwdc.wr_data_count_i_reg[8]\(6) => \gen_cdc_pntr.rpw_gray_reg_dc_n_2\,
      \gwdc.wr_data_count_i_reg[8]\(5) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[8]\(4) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[8]\(3) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[8]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_6\,
      \gwdc.wr_data_count_i_reg[8]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_7\,
      \gwdc.wr_data_count_i_reg[8]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_8\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized3_15\
     port map (
      D(4 downto 0) => diff_pntr_pf_q0(8 downto 4),
      Q(7 downto 0) => wr_pntr_plus1_pf(8 downto 1),
      S(3) => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      S(2) => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      S(1) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      S(0) => \gen_cdc_pntr.rpw_gray_reg_n_3\,
      \count_value_i_reg[6]_0\ => \^full\,
      d_out_reg => wrpp1_inst_n_13,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\(7 downto 0) => rd_pntr_wr(7 downto 0),
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(3) => \gen_cdc_pntr.rpw_gray_reg_n_12\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(2) => \gen_cdc_pntr.rpw_gray_reg_n_13\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(1) => \gen_cdc_pntr.rpw_gray_reg_n_14\,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(0) => \gen_cdc_pntr.rpw_gray_reg_n_15\,
      leaving_afull => leaving_afull,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\xlnx_axi_quad_spi_xpm_counter_updn__parameterized0_16\
     port map (
      Q(7 downto 0) => rd_pntr_wr(7 downto 0),
      almost_full => \^almost_full\,
      clr_full => clr_full,
      \gen_pf_ic_rc.gaf_ic.ram_afull_i_reg\ => \^full\,
      \gen_pf_ic_rc.gen_full_rst_val.ram_full_i_reg\ => wrpp2_inst_n_0,
      going_afull => going_afull,
      leaving_afull => leaving_afull,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.\xlnx_axi_quad_spi_xpm_fifo_rst__xdcDup__1\
     port map (
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \grdc.rd_data_count_i0\,
      d_out_reg => xpm_fifo_rst_inst_n_2,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \guf.underflow_i_reg\ => \^empty\,
      \gwack.wr_ack_i_reg\ => \^full\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_pntr_plus1_pf_carry => wr_pntr_plus1_pf_carry,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of xlnx_axi_quad_spi_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xlnx_axi_quad_spi_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of xlnx_axi_quad_spi_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of xlnx_axi_quad_spi_xpm_fifo_async : entity is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of xlnx_axi_quad_spi_xpm_fifo_async : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xlnx_axi_quad_spi_xpm_fifo_async : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xlnx_axi_quad_spi_xpm_fifo_async : entity is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xlnx_axi_quad_spi_xpm_fifo_async : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_xpm_fifo_async : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xlnx_axi_quad_spi_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xlnx_axi_quad_spi_xpm_fifo_async : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of xlnx_axi_quad_spi_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xlnx_axi_quad_spi_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of xlnx_axi_quad_spi_xpm_fifo_async : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of xlnx_axi_quad_spi_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of xlnx_axi_quad_spi_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xlnx_axi_quad_spi_xpm_fifo_async : entity is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xlnx_axi_quad_spi_xpm_fifo_async : entity is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of xlnx_axi_quad_spi_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xlnx_axi_quad_spi_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of xlnx_axi_quad_spi_xpm_fifo_async : entity is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xlnx_axi_quad_spi_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xlnx_axi_quad_spi_xpm_fifo_async : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xlnx_axi_quad_spi_xpm_fifo_async : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xlnx_axi_quad_spi_xpm_fifo_async : entity is "TRUE";
end xlnx_axi_quad_spi_xpm_fifo_async;

architecture STRUCTURE of xlnx_axi_quad_spi_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 256;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2048;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 256;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 251;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 251;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.xlnx_axi_quad_spi_xpm_fifo_base
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(8 downto 0) => rd_data_count(8 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(8 downto 0) => wr_data_count(8 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ : entity is "TRUE";
end \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\;

architecture STRUCTURE of \xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 256;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2048;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 256;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 251;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 251;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.\xlnx_axi_quad_spi_xpm_fifo_base__xdcDup__1\
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      data_valid => data_valid,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(8 downto 0) => rd_data_count(8 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => wr_ack,
      wr_clk => wr_clk,
      wr_data_count(8 downto 0) => wr_data_count(8 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_async_fifo_fg is
  port (
    almost_full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[8]\ : out STD_LOGIC;
    \gwdc.wr_data_count_i_reg[8]_0\ : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    IP2Bus_WrAck_transmit_enable : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ext_spi_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi4_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[0]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[1]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[1]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[2]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_1\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_2\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_3\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \s_axi4_rdata_i_reg[6]\ : in STD_LOGIC;
    spicr_9_lsb_to_spi_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_async_fifo_fg : entity is "async_fifo_fg";
end xlnx_axi_quad_spi_async_fifo_fg;

architecture STRUCTURE of xlnx_axi_quad_spi_async_fifo_fg is
  signal Tx_FIFO_occ_Reversed : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^dout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal full : STD_LOGIC;
  signal \s_axi4_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[7]_i_8_n_0\ : STD_LOGIC;
  signal wr_rst_busy : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_14\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_25\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_26\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_27\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_28\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_29\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_30\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_31\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_32\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_33\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_36\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_37\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[2]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[3]_i_6\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[4]_i_6\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[4]_i_7\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[5]_i_6\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[6]_i_5\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[7]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[7]_i_8\ : label is "soft_lutpair79";
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "TRUE";
begin
  dout(7 downto 0) <= \^dout\(7 downto 0);
\OTHER_RATIO_GENERATE.Serial_Dout_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^dout\(0),
      I1 => spicr_9_lsb_to_spi_clk,
      I2 => \^dout\(7),
      O => \gen_wr_a.gen_word_narrow.mem_reg\
    );
\s_axi4_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(0),
      I1 => \s_axi4_rdata_i[7]_i_3_n_0\,
      I2 => \s_axi4_rdata_i_reg[7]\,
      I3 => \s_axi4_rdata_i_reg[7]_0\(0),
      I4 => \s_axi4_rdata_i_reg[0]\,
      I5 => \s_axi4_rdata_i_reg[0]_0\,
      O => D(0)
    );
\s_axi4_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_axi4_rdata_i[1]_i_2_n_0\,
      I1 => \s_axi4_rdata_i[7]_i_3_n_0\,
      I2 => \s_axi4_rdata_i_reg[7]\,
      I3 => \s_axi4_rdata_i_reg[7]_0\(1),
      I4 => \s_axi4_rdata_i_reg[1]\,
      I5 => \s_axi4_rdata_i_reg[1]_0\,
      O => D(1)
    );
\s_axi4_rdata_i[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(0),
      I1 => Tx_FIFO_occ_Reversed(1),
      O => \s_axi4_rdata_i[1]_i_2_n_0\
    );
\s_axi4_rdata_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_axi4_rdata_i[2]_i_2_n_0\,
      I1 => \s_axi4_rdata_i[7]_i_3_n_0\,
      I2 => \s_axi4_rdata_i_reg[7]\,
      I3 => \s_axi4_rdata_i_reg[7]_0\(2),
      I4 => \s_axi4_rdata_i_reg[2]\,
      I5 => \s_axi4_rdata_i_reg[2]_0\,
      O => D(2)
    );
\s_axi4_rdata_i[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(2),
      I1 => Tx_FIFO_occ_Reversed(1),
      I2 => Tx_FIFO_occ_Reversed(0),
      O => \s_axi4_rdata_i[2]_i_2_n_0\
    );
\s_axi4_rdata_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000002000"
    )
        port map (
      I0 => p_3_in,
      I1 => \s_axi4_rdata_i_reg[7]_3\,
      I2 => Bus_RNW_reg,
      I3 => \s_axi4_rdata_i[4]_i_6_n_0\,
      I4 => \s_axi4_rdata_i[3]_i_6_n_0\,
      I5 => Tx_FIFO_occ_Reversed(3),
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\
    );
\s_axi4_rdata_i[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(2),
      I1 => Tx_FIFO_occ_Reversed(1),
      I2 => Tx_FIFO_occ_Reversed(0),
      O => \s_axi4_rdata_i[3]_i_6_n_0\
    );
\s_axi4_rdata_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000002000"
    )
        port map (
      I0 => p_3_in,
      I1 => \s_axi4_rdata_i_reg[7]_3\,
      I2 => Bus_RNW_reg,
      I3 => \s_axi4_rdata_i[4]_i_6_n_0\,
      I4 => \s_axi4_rdata_i[4]_i_7_n_0\,
      I5 => Tx_FIFO_occ_Reversed(4),
      O => \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\
    );
\s_axi4_rdata_i[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(8),
      I1 => Tx_FIFO_occ_Reversed(6),
      I2 => \s_axi4_rdata_i[7]_i_7_n_0\,
      I3 => Tx_FIFO_occ_Reversed(7),
      O => \s_axi4_rdata_i[4]_i_6_n_0\
    );
\s_axi4_rdata_i[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(3),
      I1 => Tx_FIFO_occ_Reversed(0),
      I2 => Tx_FIFO_occ_Reversed(1),
      I3 => Tx_FIFO_occ_Reversed(2),
      O => \s_axi4_rdata_i[4]_i_7_n_0\
    );
\s_axi4_rdata_i[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000000005554"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[6]\,
      I1 => Tx_FIFO_occ_Reversed(8),
      I2 => Tx_FIFO_occ_Reversed(6),
      I3 => Tx_FIFO_occ_Reversed(7),
      I4 => \s_axi4_rdata_i[5]_i_6_n_0\,
      I5 => Tx_FIFO_occ_Reversed(5),
      O => \gwdc.wr_data_count_i_reg[8]\
    );
\s_axi4_rdata_i[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(4),
      I1 => Tx_FIFO_occ_Reversed(2),
      I2 => Tx_FIFO_occ_Reversed(1),
      I3 => Tx_FIFO_occ_Reversed(0),
      I4 => Tx_FIFO_occ_Reversed(3),
      O => \s_axi4_rdata_i[5]_i_6_n_0\
    );
\s_axi4_rdata_i[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55000054"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[6]\,
      I1 => Tx_FIFO_occ_Reversed(8),
      I2 => Tx_FIFO_occ_Reversed(7),
      I3 => \s_axi4_rdata_i[7]_i_7_n_0\,
      I4 => Tx_FIFO_occ_Reversed(6),
      O => \gwdc.wr_data_count_i_reg[8]_0\
    );
\s_axi4_rdata_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_axi4_rdata_i[7]_i_2_n_0\,
      I1 => \s_axi4_rdata_i[7]_i_3_n_0\,
      I2 => \s_axi4_rdata_i_reg[7]\,
      I3 => \s_axi4_rdata_i_reg[7]_0\(3),
      I4 => \s_axi4_rdata_i_reg[7]_1\,
      I5 => \s_axi4_rdata_i_reg[7]_2\,
      O => D(3)
    );
\s_axi4_rdata_i[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(7),
      I1 => \s_axi4_rdata_i[7]_i_7_n_0\,
      I2 => Tx_FIFO_occ_Reversed(6),
      O => \s_axi4_rdata_i[7]_i_2_n_0\
    );
\s_axi4_rdata_i[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FB0000000000"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(7),
      I1 => \s_axi4_rdata_i[7]_i_8_n_0\,
      I2 => Tx_FIFO_occ_Reversed(8),
      I3 => Bus_RNW_reg,
      I4 => \s_axi4_rdata_i_reg[7]_3\,
      I5 => p_3_in,
      O => \s_axi4_rdata_i[7]_i_3_n_0\
    );
\s_axi4_rdata_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(5),
      I1 => Tx_FIFO_occ_Reversed(3),
      I2 => Tx_FIFO_occ_Reversed(0),
      I3 => Tx_FIFO_occ_Reversed(1),
      I4 => Tx_FIFO_occ_Reversed(2),
      I5 => Tx_FIFO_occ_Reversed(4),
      O => \s_axi4_rdata_i[7]_i_7_n_0\
    );
\s_axi4_rdata_i[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Tx_FIFO_occ_Reversed(6),
      I1 => \s_axi4_rdata_i[7]_i_7_n_0\,
      O => \s_axi4_rdata_i[7]_i_8_n_0\
    );
\xpm_fifo_instance.xpm_fifo_async_inst\: entity work.xlnx_axi_quad_spi_xpm_fifo_async
     port map (
      almost_empty => \xpm_fifo_instance.xpm_fifo_async_inst_n_36\,
      almost_full => almost_full,
      data_valid => \xpm_fifo_instance.xpm_fifo_async_inst_n_37\,
      dbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => s_axi4_wdata(7 downto 0),
      dout(7 downto 0) => \^dout\(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\,
      prog_full => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\,
      rd_clk => ext_spi_clk,
      rd_data_count(8) => \xpm_fifo_instance.xpm_fifo_async_inst_n_25\,
      rd_data_count(7) => \xpm_fifo_instance.xpm_fifo_async_inst_n_26\,
      rd_data_count(6) => \xpm_fifo_instance.xpm_fifo_async_inst_n_27\,
      rd_data_count(5) => \xpm_fifo_instance.xpm_fifo_async_inst_n_28\,
      rd_data_count(4) => \xpm_fifo_instance.xpm_fifo_async_inst_n_29\,
      rd_data_count(3) => \xpm_fifo_instance.xpm_fifo_async_inst_n_30\,
      rd_data_count(2) => \xpm_fifo_instance.xpm_fifo_async_inst_n_31\,
      rd_data_count(1) => \xpm_fifo_instance.xpm_fifo_async_inst_n_32\,
      rd_data_count(0) => \xpm_fifo_instance.xpm_fifo_async_inst_n_33\,
      rd_en => rd_en,
      rd_rst_busy => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\,
      rst => rst,
      sbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\,
      wr_ack => \xpm_fifo_instance.xpm_fifo_async_inst_n_14\,
      wr_clk => s_axi4_aclk,
      wr_data_count(8 downto 0) => Tx_FIFO_occ_Reversed(8 downto 0),
      wr_en => IP2Bus_WrAck_transmit_enable,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \xlnx_axi_quad_spi_async_fifo_fg__xdcDup__1\ is
  port (
    almost_full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ : out STD_LOGIC;
    Receive_ip2bus_error0 : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\ : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[8]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_1\ : out STD_LOGIC;
    Rx_FIFO_Full_Fifo : out STD_LOGIC;
    rst : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    spiXfer_done_int : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_aclk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \s_axi4_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[4]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[5]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[6]_1\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    \s_axi4_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi4_rdata_i_reg[31]_0\ : in STD_LOGIC;
    intr_ip2bus_rdack : in STD_LOGIC;
    \s_axi4_rdata_i_reg[31]_1\ : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole : in STD_LOGIC;
    p_13_out : in STD_LOGIC;
    Receive_ip2bus_error_reg : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \s_axi4_rdata_i_reg[0]\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \xlnx_axi_quad_spi_async_fifo_fg__xdcDup__1\ : entity is "async_fifo_fg";
end \xlnx_axi_quad_spi_async_fifo_fg__xdcDup__1\;

architecture STRUCTURE of \xlnx_axi_quad_spi_async_fifo_fg__xdcDup__1\ is
  signal Rx_FIFO_occ_Reversed : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^almost_full\ : STD_LOGIC;
  signal data_from_rx_fifo : STD_LOGIC_VECTOR ( 1 to 4 );
  signal \^data_valid\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal full : STD_LOGIC;
  signal \^gen_fwft.gdvld_fwft.data_valid_fwft_reg\ : STD_LOGIC;
  signal \s_axi4_rdata_i[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi4_rdata_i[7]_i_9_n_0\ : STD_LOGIC;
  signal wr_rst_busy : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_10\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_14\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_2\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_3\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_36\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_4\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_5\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_6\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_7\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_8\ : STD_LOGIC;
  signal \xpm_fifo_instance.xpm_fifo_async_inst_n_9\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[2]_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[3]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[4]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi4_rdata_i[7]_i_9\ : label is "soft_lutpair38";
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "auto";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 256;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 8;
  attribute READ_MODE : string;
  attribute READ_MODE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 8;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \xpm_fifo_instance.xpm_fifo_async_inst\ : label is "TRUE";
begin
  almost_full <= \^almost_full\;
  data_valid <= \^data_valid\;
  empty <= \^empty\;
  \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ <= \^gen_fwft.gdvld_fwft.data_valid_fwft_reg\;
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^almost_full\,
      I1 => scndry_out,
      O => Rx_FIFO_Full_Fifo
    );
Receive_ip2bus_error_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => Receive_ip2bus_error_reg,
      I1 => \^empty\,
      I2 => p_5_in,
      I3 => Bus_RNW_reg,
      O => Receive_ip2bus_error0
    );
\s_axi4_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[0]\,
      I1 => Rx_FIFO_occ_Reversed(8),
      I2 => Rx_FIFO_occ_Reversed(6),
      I3 => \s_axi4_rdata_i[6]_i_6_n_0\,
      I4 => Rx_FIFO_occ_Reversed(7),
      I5 => Rx_FIFO_occ_Reversed(0),
      O => \grdc.rd_data_count_i_reg[8]\
    );
\s_axi4_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000002000"
    )
        port map (
      I0 => p_2_in,
      I1 => \^empty\,
      I2 => Bus_RNW_reg,
      I3 => \s_axi4_rdata_i[2]_i_6_n_0\,
      I4 => Rx_FIFO_occ_Reversed(1),
      I5 => Rx_FIFO_occ_Reversed(0),
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_1\
    );
\s_axi4_rdata_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000002000"
    )
        port map (
      I0 => p_2_in,
      I1 => \^empty\,
      I2 => Bus_RNW_reg,
      I3 => \s_axi4_rdata_i[2]_i_6_n_0\,
      I4 => \s_axi4_rdata_i[2]_i_7_n_0\,
      I5 => Rx_FIFO_occ_Reversed(2),
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\
    );
\s_axi4_rdata_i[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(8),
      I1 => Rx_FIFO_occ_Reversed(6),
      I2 => \s_axi4_rdata_i[6]_i_6_n_0\,
      I3 => Rx_FIFO_occ_Reversed(7),
      O => \s_axi4_rdata_i[2]_i_6_n_0\
    );
\s_axi4_rdata_i[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(0),
      I1 => Rx_FIFO_occ_Reversed(1),
      O => \s_axi4_rdata_i[2]_i_7_n_0\
    );
\s_axi4_rdata_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => s_axi4_rready,
      I1 => \^gen_fwft.gdvld_fwft.data_valid_fwft_reg\,
      I2 => \s_axi4_rdata_i_reg[31]\(0),
      O => E(0)
    );
\s_axi4_rdata_i[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => \s_axi4_rdata_i_reg[31]_0\,
      I1 => \^data_valid\,
      I2 => intr_ip2bus_rdack,
      I3 => \s_axi4_rdata_i_reg[31]_1\,
      I4 => ip2Bus_RdAck_intr_reg_hole,
      I5 => p_13_out,
      O => \^gen_fwft.gdvld_fwft.data_valid_fwft_reg\
    );
\s_axi4_rdata_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_axi4_rdata_i[3]_i_2_n_0\,
      I1 => \s_axi4_rdata_i[6]_i_3_n_0\,
      I2 => \s_axi4_rdata_i_reg[6]\,
      I3 => data_from_rx_fifo(4),
      I4 => \s_axi4_rdata_i_reg[3]\,
      I5 => \s_axi4_rdata_i_reg[3]_0\,
      O => D(0)
    );
\s_axi4_rdata_i[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(3),
      I1 => Rx_FIFO_occ_Reversed(0),
      I2 => Rx_FIFO_occ_Reversed(1),
      I3 => Rx_FIFO_occ_Reversed(2),
      O => \s_axi4_rdata_i[3]_i_2_n_0\
    );
\s_axi4_rdata_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_axi4_rdata_i[4]_i_2_n_0\,
      I1 => \s_axi4_rdata_i[6]_i_3_n_0\,
      I2 => \s_axi4_rdata_i_reg[6]\,
      I3 => data_from_rx_fifo(3),
      I4 => \s_axi4_rdata_i_reg[4]\,
      I5 => \s_axi4_rdata_i_reg[4]_0\,
      O => D(1)
    );
\s_axi4_rdata_i[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(4),
      I1 => Rx_FIFO_occ_Reversed(2),
      I2 => Rx_FIFO_occ_Reversed(1),
      I3 => Rx_FIFO_occ_Reversed(0),
      I4 => Rx_FIFO_occ_Reversed(3),
      O => \s_axi4_rdata_i[4]_i_2_n_0\
    );
\s_axi4_rdata_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_axi4_rdata_i[5]_i_2_n_0\,
      I1 => \s_axi4_rdata_i[6]_i_3_n_0\,
      I2 => \s_axi4_rdata_i_reg[6]\,
      I3 => data_from_rx_fifo(2),
      I4 => \s_axi4_rdata_i_reg[5]\,
      I5 => \s_axi4_rdata_i_reg[5]_0\,
      O => D(2)
    );
\s_axi4_rdata_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(5),
      I1 => Rx_FIFO_occ_Reversed(3),
      I2 => Rx_FIFO_occ_Reversed(0),
      I3 => Rx_FIFO_occ_Reversed(1),
      I4 => Rx_FIFO_occ_Reversed(2),
      I5 => Rx_FIFO_occ_Reversed(4),
      O => \s_axi4_rdata_i[5]_i_2_n_0\
    );
\s_axi4_rdata_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_axi4_rdata_i[6]_i_2_n_0\,
      I1 => \s_axi4_rdata_i[6]_i_3_n_0\,
      I2 => \s_axi4_rdata_i_reg[6]\,
      I3 => data_from_rx_fifo(1),
      I4 => \s_axi4_rdata_i_reg[6]_0\,
      I5 => \s_axi4_rdata_i_reg[6]_1\,
      O => D(3)
    );
\s_axi4_rdata_i[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(6),
      I1 => \s_axi4_rdata_i[6]_i_6_n_0\,
      O => \s_axi4_rdata_i[6]_i_2_n_0\
    );
\s_axi4_rdata_i[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FB0000000000"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(7),
      I1 => \s_axi4_rdata_i[7]_i_9_n_0\,
      I2 => Rx_FIFO_occ_Reversed(8),
      I3 => Bus_RNW_reg,
      I4 => \^empty\,
      I5 => p_2_in,
      O => \s_axi4_rdata_i[6]_i_3_n_0\
    );
\s_axi4_rdata_i[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(5),
      I1 => Rx_FIFO_occ_Reversed(3),
      I2 => Rx_FIFO_occ_Reversed(0),
      I3 => Rx_FIFO_occ_Reversed(1),
      I4 => Rx_FIFO_occ_Reversed(2),
      I5 => Rx_FIFO_occ_Reversed(4),
      O => \s_axi4_rdata_i[6]_i_6_n_0\
    );
\s_axi4_rdata_i[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000202020000000"
    )
        port map (
      I0 => p_2_in,
      I1 => \^empty\,
      I2 => Bus_RNW_reg,
      I3 => Rx_FIFO_occ_Reversed(8),
      I4 => \s_axi4_rdata_i[7]_i_9_n_0\,
      I5 => Rx_FIFO_occ_Reversed(7),
      O => \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\
    );
\s_axi4_rdata_i[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Rx_FIFO_occ_Reversed(6),
      I1 => \s_axi4_rdata_i[6]_i_6_n_0\,
      O => \s_axi4_rdata_i[7]_i_9_n_0\
    );
\xpm_fifo_instance.xpm_fifo_async_inst\: entity work.\xlnx_axi_quad_spi_xpm_fifo_async__xdcDup__1\
     port map (
      almost_empty => \xpm_fifo_instance.xpm_fifo_async_inst_n_36\,
      almost_full => \^almost_full\,
      data_valid => \^data_valid\,
      dbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_dbiterr_UNCONNECTED\,
      din(7 downto 0) => Q(7 downto 0),
      dout(7) => dout(3),
      dout(6) => data_from_rx_fifo(1),
      dout(5) => data_from_rx_fifo(2),
      dout(4) => data_from_rx_fifo(3),
      dout(3) => data_from_rx_fifo(4),
      dout(2 downto 0) => dout(2 downto 0),
      empty => \^empty\,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_empty_UNCONNECTED\,
      prog_full => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_prog_full_UNCONNECTED\,
      rd_clk => s_axi4_aclk,
      rd_data_count(8 downto 0) => Rx_FIFO_occ_Reversed(8 downto 0),
      rd_en => rd_en,
      rd_rst_busy => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED\,
      rst => rst,
      sbiterr => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_sbiterr_UNCONNECTED\,
      sleep => '0',
      underflow => \NLW_xpm_fifo_instance.xpm_fifo_async_inst_underflow_UNCONNECTED\,
      wr_ack => \xpm_fifo_instance.xpm_fifo_async_inst_n_14\,
      wr_clk => ext_spi_clk,
      wr_data_count(8) => \xpm_fifo_instance.xpm_fifo_async_inst_n_2\,
      wr_data_count(7) => \xpm_fifo_instance.xpm_fifo_async_inst_n_3\,
      wr_data_count(6) => \xpm_fifo_instance.xpm_fifo_async_inst_n_4\,
      wr_data_count(5) => \xpm_fifo_instance.xpm_fifo_async_inst_n_5\,
      wr_data_count(4) => \xpm_fifo_instance.xpm_fifo_async_inst_n_6\,
      wr_data_count(3) => \xpm_fifo_instance.xpm_fifo_async_inst_n_7\,
      wr_data_count(2) => \xpm_fifo_instance.xpm_fifo_async_inst_n_8\,
      wr_data_count(1) => \xpm_fifo_instance.xpm_fifo_async_inst_n_9\,
      wr_data_count(0) => \xpm_fifo_instance.xpm_fifo_async_inst_n_10\,
      wr_en => spiXfer_done_int,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_qspi_core_interface is
  port (
    spisel_d1_reg_to_axi_clk : out STD_LOGIC;
    Tx_FIFO_Empty_SPISR_to_axi_clk : out STD_LOGIC;
    spicr_0_loop_frm_axi_clk : out STD_LOGIC;
    spicr_1_spe_frm_axi_clk : out STD_LOGIC;
    spicr_2_mst_n_slv_frm_axi_clk : out STD_LOGIC;
    spicr_3_cpol_frm_axi_clk : out STD_LOGIC;
    spicr_4_cpha_frm_axi_clk : out STD_LOGIC;
    spicr_7_ss_frm_axi_clk : out STD_LOGIC;
    spicr_8_tr_inhibit_frm_axi_clk : out STD_LOGIC;
    spicr_9_lsb_frm_axi_clk : out STD_LOGIC;
    sr_3_MODF_int : out STD_LOGIC;
    SPISSR_frm_axi_clk : out STD_LOGIC;
    empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    sw_rst_cond_d1 : out STD_LOGIC;
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ : out STD_LOGIC;
    p_1_in35_in : out STD_LOGIC;
    p_1_in32_in : out STD_LOGIC;
    p_1_in29_in : out STD_LOGIC;
    p_1_in26_in : out STD_LOGIC;
    p_1_in23_in : out STD_LOGIC;
    p_1_in20_in : out STD_LOGIC;
    p_1_in17_in : out STD_LOGIC;
    p_1_in14_in : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    Receive_ip2bus_error_reg : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    ip2Bus_WrAck_core_reg_d1 : out STD_LOGIC;
    ip2Bus_WrAck_core_reg : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1 : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : out STD_LOGIC;
    ip2Bus_RdAck_core_reg : out STD_LOGIC;
    \RESET_FLOPS[15].RST_FLOPS\ : out STD_LOGIC;
    spicr_5_txfifo_rst_frm_axi_clk : out STD_LOGIC;
    spicr_6_rxfifo_rst_frm_axi_clk : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_FIFO_Full_int : out STD_LOGIC;
    rx_fifo_empty_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ : out STD_LOGIC;
    \FSM_onehot_axi_full_sm_ps_reg[5]\ : out STD_LOGIC;
    intr2bus_wrack_reg : out STD_LOGIC;
    intr2bus_rdack_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    reset2ip_reset_int : in STD_LOGIC;
    bus2ip_wrce_int : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi4_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    IP2Bus_WrAck_transmit_enable : in STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ : in STD_LOGIC;
    bus2ip_reset_ipif_inverted : in STD_LOGIC;
    sw_rst_cond : in STD_LOGIC;
    reset_trig0 : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    Transmit_ip2bus_error0 : in STD_LOGIC;
    wr_ce_or_reduce_core_cmb : in STD_LOGIC;
    \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg_0\ : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole_d1_reg_0 : in STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : in STD_LOGIC;
    intr_controller_rd_ce_or_reduce : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : in STD_LOGIC;
    rd_ce_or_reduce_core_cmb : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ : in STD_LOGIC;
    \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg : in STD_LOGIC;
    \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[0]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[1]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[2]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[3]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[4]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[5]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[6]\ : in STD_LOGIC;
    \s_axi4_rdata_i_reg[7]_0\ : in STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s_axi4_rdata_i_reg[31]\ : in STD_LOGIC;
    p_13_out : in STD_LOGIC;
    burst_tr_int : in STD_LOGIC;
    modf_reg : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \s_axi4_rdata_i_reg[0]_0\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    \s_axi4_rdata_i_reg[6]_0\ : in STD_LOGIC;
    \ip_irpt_enable_reg_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    io1_i_sync : in STD_LOGIC;
    io0_i_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_qspi_core_interface : entity is "qspi_core_interface";
end xlnx_axi_quad_spi_qspi_core_interface;

architecture STRUCTURE of xlnx_axi_quad_spi_qspi_core_interface is
  signal Allow_MODF_Strobe : STD_LOGIC;
  signal Allow_Slave_MODF_Strobe : STD_LOGIC;
  signal CONTROL_REG_I_n_12 : STD_LOGIC;
  signal Count_trigger : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_1\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_12\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_14\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_15\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_16\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_17\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_18\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_19\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_2\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_20\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_21\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_22\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_23\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_28\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_31\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_32\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_34\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_37\ : STD_LOGIC;
  signal \FIFO_EXISTS.CLK_CROSS_I_n_4\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_II_n_14\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_II_n_15\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_II_n_16\ : STD_LOGIC;
  signal \FIFO_EXISTS.RX_FIFO_II_n_17\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_1\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_3\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_5\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_6\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_14\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_15\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_16\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_17\ : STD_LOGIC;
  signal \FIFO_EXISTS.TX_FIFO_II_n_18\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26\ : STD_LOGIC;
  signal \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_9\ : STD_LOGIC;
  signal MODF_strobe0 : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \^reset_flops[15].rst_flops\ : STD_LOGIC;
  signal RESET_SYNC_AXI_SPI_CLK_INST_n_0 : STD_LOGIC;
  signal Ratio_Count : STD_LOGIC;
  signal Receive_ip2bus_error0 : STD_LOGIC;
  signal Rx_FIFO_Empty_Synced_in_SPI_domain : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1 : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_synced_i : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_org : STD_LOGIC;
  signal SOFT_RESET_I_n_3 : STD_LOGIC;
  signal SPICR_2_MST_N_SLV_to_spi_clk : STD_LOGIC;
  signal SPISEL_sync : STD_LOGIC;
  signal \^spissr_frm_axi_clk\ : STD_LOGIC;
  signal SPIXfer_done_rd_tx_en : STD_LOGIC;
  signal Slave_MODF_strobe0 : STD_LOGIC;
  signal TX_one_less_than_full : STD_LOGIC;
  signal \^tx_fifo_empty_spisr_to_axi_clk\ : STD_LOGIC;
  signal Tx_FIFO_Empty_intr : STD_LOGIC;
  signal Tx_FIFO_Full_i : STD_LOGIC;
  signal \^tx_fifo_full_int\ : STD_LOGIC;
  signal awready_i_i_4_n_0 : STD_LOGIC;
  signal bus2IP_Data_for_interrupt_core : STD_LOGIC_VECTOR ( 23 to 23 );
  signal data_Exists_RcFIFO_int_d1 : STD_LOGIC;
  signal data_Exists_RcFIFO_pulse033_in : STD_LOGIC;
  signal data_from_rx_fifo : STD_LOGIC_VECTOR ( 0 to 7 );
  signal data_from_txfifo : STD_LOGIC_VECTOR ( 0 to 7 );
  signal data_in : STD_LOGIC;
  signal data_to_rx_fifo : STD_LOGIC_VECTOR ( 0 to 7 );
  signal dtr_underrun_d1 : STD_LOGIC;
  signal dtr_underrun_int : STD_LOGIC;
  signal dtr_underrun_to_axi_clk : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal intr_ip2bus_rdack : STD_LOGIC;
  signal \^ip2bus_rdack_core_reg\ : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole : STD_LOGIC;
  signal \^ip2bus_wrack_core_reg\ : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole : STD_LOGIC;
  signal modf_strobe_int : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal \^p_1_in14_in\ : STD_LOGIC;
  signal \^p_1_in17_in\ : STD_LOGIC;
  signal \^p_1_in23_in\ : STD_LOGIC;
  signal \^p_1_in35_in\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal rc_FIFO_Full_d1 : STD_LOGIC;
  signal read_ack_delay_1 : STD_LOGIC;
  signal read_ack_delay_2 : STD_LOGIC;
  signal read_ack_delay_3 : STD_LOGIC;
  signal read_ack_delay_4 : STD_LOGIC;
  signal read_ack_delay_5 : STD_LOGIC;
  signal read_ack_delay_6 : STD_LOGIC;
  signal read_ack_delay_7 : STD_LOGIC;
  signal register_Data_slvsel_int : STD_LOGIC;
  signal reset_TxFIFO_ptr_int : STD_LOGIC;
  signal rst_to_spi_int : STD_LOGIC;
  signal \^rx_fifo_empty_i\ : STD_LOGIC;
  signal rx_fifo_reset : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  signal serial_dout_int : STD_LOGIC;
  signal slave_MODF_strobe_int : STD_LOGIC;
  signal spiXfer_done_int : STD_LOGIC;
  signal spiXfer_done_to_axi_1 : STD_LOGIC;
  signal spiXfer_done_to_axi_d1 : STD_LOGIC;
  signal \^spicr_0_loop_frm_axi_clk\ : STD_LOGIC;
  signal spicr_0_loop_to_spi_clk : STD_LOGIC;
  signal \^spicr_1_spe_frm_axi_clk\ : STD_LOGIC;
  signal spicr_1_spe_to_spi_clk : STD_LOGIC;
  signal \^spicr_2_mst_n_slv_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_3_cpol_frm_axi_clk\ : STD_LOGIC;
  signal spicr_3_cpol_to_spi_clk : STD_LOGIC;
  signal \^spicr_4_cpha_frm_axi_clk\ : STD_LOGIC;
  signal spicr_4_cpha_to_spi_clk : STD_LOGIC;
  signal \^spicr_5_txfifo_rst_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_6_rxfifo_rst_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_7_ss_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_8_tr_inhibit_frm_axi_clk\ : STD_LOGIC;
  signal \^spicr_9_lsb_frm_axi_clk\ : STD_LOGIC;
  signal spicr_9_lsb_to_spi_clk : STD_LOGIC;
  signal spicr_bits_7_8_frm_axi_clk : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spisel_d1_reg : STD_LOGIC;
  signal \^spisel_d1_reg_to_axi_clk\ : STD_LOGIC;
  signal \^sr_3_modf_int\ : STD_LOGIC;
  signal transfer_start_d1 : STD_LOGIC;
  signal tx_FIFO_Empty_d1 : STD_LOGIC;
  signal tx_FIFO_Occpncy_MSB_d1 : STD_LOGIC;
  signal tx_fifo_count : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tx_fifo_count_d1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_fifo_count_d2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_fifo_empty : STD_LOGIC;
  signal tx_occ_msb : STD_LOGIC;
  signal tx_occ_msb_1 : STD_LOGIC;
  signal tx_occ_msb_4 : STD_LOGIC;
  signal wrack : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]\;
  \RESET_FLOPS[15].RST_FLOPS\ <= \^reset_flops[15].rst_flops\;
  SPISSR_frm_axi_clk <= \^spissr_frm_axi_clk\;
  Tx_FIFO_Empty_SPISR_to_axi_clk <= \^tx_fifo_empty_spisr_to_axi_clk\;
  Tx_FIFO_Full_int <= \^tx_fifo_full_int\;
  empty <= \^empty\;
  ip2Bus_RdAck_core_reg <= \^ip2bus_rdack_core_reg\;
  ip2Bus_WrAck_core_reg <= \^ip2bus_wrack_core_reg\;
  p_1_in14_in <= \^p_1_in14_in\;
  p_1_in17_in <= \^p_1_in17_in\;
  p_1_in23_in <= \^p_1_in23_in\;
  p_1_in35_in <= \^p_1_in35_in\;
  rx_fifo_empty_i <= \^rx_fifo_empty_i\;
  scndry_out <= \^scndry_out\;
  spicr_0_loop_frm_axi_clk <= \^spicr_0_loop_frm_axi_clk\;
  spicr_1_spe_frm_axi_clk <= \^spicr_1_spe_frm_axi_clk\;
  spicr_2_mst_n_slv_frm_axi_clk <= \^spicr_2_mst_n_slv_frm_axi_clk\;
  spicr_3_cpol_frm_axi_clk <= \^spicr_3_cpol_frm_axi_clk\;
  spicr_4_cpha_frm_axi_clk <= \^spicr_4_cpha_frm_axi_clk\;
  spicr_5_txfifo_rst_frm_axi_clk <= \^spicr_5_txfifo_rst_frm_axi_clk\;
  spicr_6_rxfifo_rst_frm_axi_clk <= \^spicr_6_rxfifo_rst_frm_axi_clk\;
  spicr_7_ss_frm_axi_clk <= \^spicr_7_ss_frm_axi_clk\;
  spicr_8_tr_inhibit_frm_axi_clk <= \^spicr_8_tr_inhibit_frm_axi_clk\;
  spicr_9_lsb_frm_axi_clk <= \^spicr_9_lsb_frm_axi_clk\;
  spisel_d1_reg_to_axi_clk <= \^spisel_d1_reg_to_axi_clk\;
  sr_3_MODF_int <= \^sr_3_modf_int\;
CONTROL_REG_I: entity work.xlnx_axi_quad_spi_qspi_cntrl_reg
     port map (
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]_0\ => \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_0\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]_1\ => \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\,
      \CONTROL_REG_5_9_GENERATE[7].SPICR_data_int_reg[7]_0\ => \^spicr_2_mst_n_slv_frm_axi_clk\,
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]_0\ => \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\,
      D(0) => bus2IP_Data_for_interrupt_core(23),
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ => \^rx_fifo_empty_i\,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(0),
      data_Exists_RcFIFO_int_d1 => data_Exists_RcFIFO_int_d1,
      \ip_irpt_enable_reg_reg[8]\ => \^spisel_d1_reg_to_axi_clk\,
      p_1_in14_in => \^p_1_in14_in\,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_wdata(7 downto 5) => s_axi4_wdata(9 downto 7),
      s_axi4_wdata(4 downto 0) => s_axi4_wdata(4 downto 0),
      \s_axi4_wdata[8]\ => CONTROL_REG_I_n_12,
      spicr_0_loop_frm_axi_clk => \^spicr_0_loop_frm_axi_clk\,
      spicr_1_spe_frm_axi_clk => \^spicr_1_spe_frm_axi_clk\,
      spicr_3_cpol_frm_axi_clk => \^spicr_3_cpol_frm_axi_clk\,
      spicr_4_cpha_frm_axi_clk => \^spicr_4_cpha_frm_axi_clk\,
      spicr_6_rxfifo_rst_frm_axi_clk => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      spicr_7_ss_frm_axi_clk => \^spicr_7_ss_frm_axi_clk\,
      spicr_8_tr_inhibit_frm_axi_clk => \^spicr_8_tr_inhibit_frm_axi_clk\,
      spicr_9_lsb_frm_axi_clk => \^spicr_9_lsb_frm_axi_clk\,
      spicr_bits_7_8_frm_axi_clk(1 downto 0) => spicr_bits_7_8_frm_axi_clk(1 downto 0)
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_ack_delay_6,
      I1 => read_ack_delay_7,
      O => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0\
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_i_1_n_0\,
      Q => \^ip2bus_rdack_core_reg\,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => wr_ce_or_reduce_core_cmb,
      Q => ip2Bus_WrAck_core_reg_d1,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg_0\,
      Q => \^ip2bus_wrack_core_reg\,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => rd_ce_or_reduce_core_cmb,
      Q => read_ack_delay_1,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_1,
      Q => read_ack_delay_2,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_3_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_2,
      Q => read_ack_delay_3,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_3,
      Q => read_ack_delay_4,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_5_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_4,
      Q => read_ack_delay_5,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_6_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_5,
      Q => read_ack_delay_6,
      R => reset2ip_reset_int
    );
\ENHANCED_MD_WR_RD_ACK_GEN.read_ack_delay_7_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => read_ack_delay_6,
      Q => read_ack_delay_7,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.CLK_CROSS_I\: entity work.xlnx_axi_quad_spi_cross_clk_sync_fifo_1
     port map (
      Allow_MODF_Strobe => Allow_MODF_Strobe,
      Allow_Slave_MODF_Strobe => Allow_Slave_MODF_Strobe,
      Count_trigger => Count_trigger,
      D(0) => data_in,
      D_0 => D_0,
      \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_RdAck_core_reg_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_19\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\ => \^reset_flops[15].rst_flops\,
      \FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg_0\ => \^rx_fifo_empty_i\,
      \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]\,
      IP2Bus_WrAck_transmit_enable => IP2Bus_WrAck_transmit_enable,
      \LOGIC_GENERATION_FDR.MODF_STROBE_S2AX_3_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_23\,
      \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_16\,
      \LOGIC_GENERATION_FDR.SPICR_2_MST_N_SLV_AX2S_2_1\ => \FIFO_EXISTS.CLK_CROSS_I_n_28\,
      \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_31\,
      \LOGIC_GENERATION_FDR.SPICR_3_CPOL_AX2S_2_1\ => \FIFO_EXISTS.CLK_CROSS_I_n_32\,
      \LOGIC_GENERATION_FDR.SPICR_7_SS_AX2S_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_34\,
      \LOGIC_GENERATION_FDR.SPICR_BITS_7_8_SYNC_GEN[0].SPICR_BITS_7_8_AX2S_2_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_37\,
      \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_15\,
      \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_1\ => \FIFO_EXISTS.CLK_CROSS_I_n_17\,
      \LOGIC_GENERATION_FDR.SYNC_SPIXFER_DONE_S2AX_3_2\ => \FIFO_EXISTS.CLK_CROSS_I_n_18\,
      \LOGIC_GENERATION_FDR.TX_EMPT_4_SPISR_S2AX_2_0\ => \^tx_fifo_empty_spisr_to_axi_clk\,
      \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_12\,
      \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_2\,
      \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_4\,
      \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_1\,
      MODF_strobe0 => MODF_strobe0,
      R => R,
      Ratio_Count => Ratio_Count,
      Rst_to_spi => rst_to_spi_int,
      S(0) => \FIFO_EXISTS.CLK_CROSS_I_n_14\,
      SPICR_2_MST_N_SLV_to_spi_clk => SPICR_2_MST_N_SLV_to_spi_clk,
      SPISEL_sync => SPISEL_sync,
      SPISSR_frm_axi_clk => \^spissr_frm_axi_clk\,
      Slave_MODF_strobe0 => Slave_MODF_strobe0,
      Tx_FIFO_Empty_intr => Tx_FIFO_Empty_intr,
      Tx_FIFO_Full_i => Tx_FIFO_Full_i,
      Tx_FIFO_Full_int => \^tx_fifo_full_int\,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      dtr_underrun_int => dtr_underrun_int,
      dtr_underrun_to_axi_clk => dtr_underrun_to_axi_clk,
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      icount_out0_carry => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_3\,
      io0_i_sync => io0_i_sync,
      io1_i_sync => io1_i_sync,
      modf_reg => \^ip2bus_rdack_core_reg\,
      modf_reg_0 => modf_reg,
      modf_strobe_int => modf_strobe_int,
      p_0_out => p_0_out,
      p_1_in17_in => \^p_1_in17_in\,
      p_1_in23_in => \^p_1_in23_in\,
      p_1_in35_in => \^p_1_in35_in\,
      p_2_out => p_2_out,
      p_5_out => p_5_out,
      p_9_out => p_9_out,
      register_Data_slvsel_int => register_Data_slvsel_int,
      reset2ip_reset_int => reset2ip_reset_int,
      rst => rx_fifo_reset,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_wdata(3) => s_axi4_wdata(7),
      s_axi4_wdata(2) => s_axi4_wdata(5),
      s_axi4_wdata(1 downto 0) => s_axi4_wdata(1 downto 0),
      \s_axi4_wdata[5]\ => \FIFO_EXISTS.CLK_CROSS_I_n_21\,
      \s_axi4_wdata[7]\ => \FIFO_EXISTS.CLK_CROSS_I_n_20\,
      s_axi4_wdata_1_sp_1 => \FIFO_EXISTS.CLK_CROSS_I_n_22\,
      serial_dout_int => serial_dout_int,
      slave_MODF_strobe_int => slave_MODF_strobe_int,
      spiXfer_done_to_axi_1 => spiXfer_done_to_axi_1,
      spiXfer_done_to_axi_d1 => spiXfer_done_to_axi_d1,
      spicr_0_loop_frm_axi_clk => \^spicr_0_loop_frm_axi_clk\,
      spicr_0_loop_to_spi_clk => spicr_0_loop_to_spi_clk,
      spicr_1_spe_frm_axi_clk => \^spicr_1_spe_frm_axi_clk\,
      spicr_1_spe_to_spi_clk => spicr_1_spe_to_spi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => \^spicr_2_mst_n_slv_frm_axi_clk\,
      spicr_3_cpol_frm_axi_clk => \^spicr_3_cpol_frm_axi_clk\,
      spicr_3_cpol_to_spi_clk => spicr_3_cpol_to_spi_clk,
      spicr_4_cpha_frm_axi_clk => \^spicr_4_cpha_frm_axi_clk\,
      spicr_4_cpha_to_spi_clk => spicr_4_cpha_to_spi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => \^spicr_6_rxfifo_rst_frm_axi_clk\,
      spicr_7_ss_frm_axi_clk => \^spicr_7_ss_frm_axi_clk\,
      spicr_8_tr_inhibit_frm_axi_clk => \^spicr_8_tr_inhibit_frm_axi_clk\,
      spicr_9_lsb_frm_axi_clk => \^spicr_9_lsb_frm_axi_clk\,
      spicr_9_lsb_to_spi_clk => spicr_9_lsb_to_spi_clk,
      spicr_bits_7_8_frm_axi_clk(1 downto 0) => spicr_bits_7_8_frm_axi_clk(1 downto 0),
      spisel_d1_reg => spisel_d1_reg,
      spisel_d1_reg_to_axi_clk => \^spisel_d1_reg_to_axi_clk\,
      sr_3_MODF_int => \^sr_3_modf_int\,
      transfer_start_d1 => transfer_start_d1,
      transfer_start_reg => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26\,
      transfer_start_reg_0 => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_9\,
      tx_fifo_count_d2(7 downto 0) => tx_fifo_count_d2(7 downto 0),
      tx_occ_msb => tx_occ_msb,
      tx_occ_msb_4 => tx_occ_msb_4
    );
\FIFO_EXISTS.FIFO_IF_MODULE_I\: entity work.xlnx_axi_quad_spi_qspi_fifo_ifmodule
     port map (
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      Receive_ip2bus_error_reg_0 => Receive_ip2bus_error_reg,
      Rx_FIFO_Full_Fifo_d1_synced_i => Rx_FIFO_Full_Fifo_d1_synced_i,
      Transmit_ip2bus_error0 => Transmit_ip2bus_error0,
      Tx_FIFO_Empty_intr => Tx_FIFO_Empty_intr,
      dtr_underrun_d1 => dtr_underrun_d1,
      dtr_underrun_to_axi_clk => dtr_underrun_to_axi_clk,
      p_1_in => p_1_in,
      rc_FIFO_Full_d1 => rc_FIFO_Full_d1,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi4_aclk => s_axi4_aclk,
      tx_FIFO_Empty_d1 => tx_FIFO_Empty_d1,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_occ_msb => tx_occ_msb
    );
\FIFO_EXISTS.RX_FIFO_EMPTY_SYNC_AXI_2_SPI_CDC\: entity work.xlnx_axi_quad_spi_cdc_sync
     port map (
      ext_spi_clk => ext_spi_clk,
      prmry_in => \^empty\,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain
    );
\FIFO_EXISTS.RX_FIFO_FULL_SYNCED_SPI_2_AXI_CDC\: entity work.xlnx_axi_quad_spi_cdc_sync_0
     port map (
      Rx_FIFO_Full_Fifo_d1_synced_i => Rx_FIFO_Full_Fifo_d1_synced_i,
      empty => \^empty\,
      prmry_in => Rx_FIFO_Full_Fifo_d1,
      s_axi4_aclk => s_axi4_aclk,
      scndry_out => \^scndry_out\
    );
\FIFO_EXISTS.RX_FIFO_II\: entity work.\xlnx_axi_quad_spi_async_fifo_fg__xdcDup__1\
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(3 downto 0) => D(6 downto 3),
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\ => \FIFO_EXISTS.RX_FIFO_II_n_14\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_0\ => \FIFO_EXISTS.RX_FIFO_II_n_15\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]_1\ => \FIFO_EXISTS.RX_FIFO_II_n_17\,
      Q(7) => data_to_rx_fifo(0),
      Q(6) => data_to_rx_fifo(1),
      Q(5) => data_to_rx_fifo(2),
      Q(4) => data_to_rx_fifo(3),
      Q(3) => data_to_rx_fifo(4),
      Q(2) => data_to_rx_fifo(5),
      Q(1) => data_to_rx_fifo(6),
      Q(0) => data_to_rx_fifo(7),
      Receive_ip2bus_error0 => Receive_ip2bus_error0,
      Receive_ip2bus_error_reg => \^rx_fifo_empty_i\,
      Rx_FIFO_Full_Fifo => Rx_FIFO_Full_Fifo,
      almost_full => Rx_FIFO_Full_Fifo_org,
      data_valid => data_valid,
      dout(3) => data_from_rx_fifo(0),
      dout(2) => data_from_rx_fifo(5),
      dout(1) => data_from_rx_fifo(6),
      dout(0) => data_from_rx_fifo(7),
      empty => \^empty\,
      ext_spi_clk => ext_spi_clk,
      \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ => \gen_fwft.gdvld_fwft.data_valid_fwft_reg\,
      \grdc.rd_data_count_i_reg[8]\ => \FIFO_EXISTS.RX_FIFO_II_n_16\,
      intr_ip2bus_rdack => intr_ip2bus_rdack,
      ip2Bus_RdAck_intr_reg_hole => ip2Bus_RdAck_intr_reg_hole,
      p_13_out => p_13_out,
      p_2_in => p_2_in,
      p_5_in => p_5_in,
      rd_en => rd_en,
      rst => rx_fifo_reset,
      s_axi4_aclk => s_axi4_aclk,
      \s_axi4_rdata_i_reg[0]\ => \s_axi4_rdata_i_reg[0]_0\,
      \s_axi4_rdata_i_reg[31]\(0) => Q(0),
      \s_axi4_rdata_i_reg[31]_0\ => \s_axi4_rdata_i_reg[31]\,
      \s_axi4_rdata_i_reg[31]_1\ => \^ip2bus_rdack_core_reg\,
      \s_axi4_rdata_i_reg[3]\ => \s_axi4_rdata_i_reg[3]\,
      \s_axi4_rdata_i_reg[3]_0\ => \FIFO_EXISTS.TX_FIFO_II_n_14\,
      \s_axi4_rdata_i_reg[4]\ => \s_axi4_rdata_i_reg[4]\,
      \s_axi4_rdata_i_reg[4]_0\ => \FIFO_EXISTS.TX_FIFO_II_n_15\,
      \s_axi4_rdata_i_reg[5]\ => \s_axi4_rdata_i_reg[5]\,
      \s_axi4_rdata_i_reg[5]_0\ => \FIFO_EXISTS.TX_FIFO_II_n_16\,
      \s_axi4_rdata_i_reg[6]\ => \s_axi4_rdata_i_reg[7]\,
      \s_axi4_rdata_i_reg[6]_0\ => \s_axi4_rdata_i_reg[6]\,
      \s_axi4_rdata_i_reg[6]_1\ => \FIFO_EXISTS.TX_FIFO_II_n_17\,
      s_axi4_rready => s_axi4_rready,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain,
      spiXfer_done_int => spiXfer_done_int
    );
\FIFO_EXISTS.RX_FULL_EMP_MD_0_GEN.rx_fifo_empty_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.CLK_CROSS_I_n_17\,
      Q => \^rx_fifo_empty_i\,
      R => '0'
    );
\FIFO_EXISTS.Rx_FIFO_Full_Fifo_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => ext_spi_clk,
      CE => '1',
      D => Rx_FIFO_Full_Fifo,
      Q => Rx_FIFO_Full_Fifo_d1,
      R => rst_to_spi_int
    );
\FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I\: entity work.xlnx_axi_quad_spi_counter_f
     port map (
      IP2Bus_WrAck_transmit_enable => IP2Bus_WrAck_transmit_enable,
      S(0) => \FIFO_EXISTS.CLK_CROSS_I_n_14\,
      TX_one_less_than_full => TX_one_less_than_full,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      \icount_out_reg[0]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_15\,
      \icount_out_reg[1]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_3\,
      \icount_out_reg[2]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2\,
      \icount_out_reg[3]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_1\,
      \icount_out_reg[4]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_5\,
      \icount_out_reg[5]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4\,
      \icount_out_reg[6]_0\ => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_6\,
      \icount_out_reg[7]_0\ => \^reset_flops[15].rst_flops\,
      \icount_out_reg[7]_1\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      s_axi4_aclk => s_axi4_aclk,
      tx_fifo_count(0) => tx_fifo_count(0),
      tx_occ_msb_1 => tx_occ_msb_1
    );
\FIFO_EXISTS.TX_FIFO_II\: entity work.xlnx_axi_quad_spi_async_fifo_fg
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      D(3) => D(7),
      D(2 downto 0) => D(2 downto 0),
      \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\ => \FIFO_EXISTS.TX_FIFO_II_n_14\,
      \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]_0\ => \FIFO_EXISTS.TX_FIFO_II_n_15\,
      IP2Bus_WrAck_transmit_enable => IP2Bus_WrAck_transmit_enable,
      almost_full => almost_full,
      dout(7) => data_from_txfifo(0),
      dout(6) => data_from_txfifo(1),
      dout(5) => data_from_txfifo(2),
      dout(4) => data_from_txfifo(3),
      dout(3) => data_from_txfifo(4),
      dout(2) => data_from_txfifo(5),
      dout(1) => data_from_txfifo(6),
      dout(0) => data_from_txfifo(7),
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      \gen_wr_a.gen_word_narrow.mem_reg\ => \FIFO_EXISTS.TX_FIFO_II_n_18\,
      \gwdc.wr_data_count_i_reg[8]\ => \FIFO_EXISTS.TX_FIFO_II_n_16\,
      \gwdc.wr_data_count_i_reg[8]_0\ => \FIFO_EXISTS.TX_FIFO_II_n_17\,
      p_3_in => p_3_in,
      rd_en => SPIXfer_done_rd_tx_en,
      rst => reset_TxFIFO_ptr_int,
      s_axi4_aclk => s_axi4_aclk,
      \s_axi4_rdata_i_reg[0]\ => \s_axi4_rdata_i_reg[0]\,
      \s_axi4_rdata_i_reg[0]_0\ => \FIFO_EXISTS.RX_FIFO_II_n_16\,
      \s_axi4_rdata_i_reg[1]\ => \s_axi4_rdata_i_reg[1]\,
      \s_axi4_rdata_i_reg[1]_0\ => \FIFO_EXISTS.RX_FIFO_II_n_17\,
      \s_axi4_rdata_i_reg[2]\ => \s_axi4_rdata_i_reg[2]\,
      \s_axi4_rdata_i_reg[2]_0\ => \FIFO_EXISTS.RX_FIFO_II_n_14\,
      \s_axi4_rdata_i_reg[6]\ => \s_axi4_rdata_i_reg[6]_0\,
      \s_axi4_rdata_i_reg[7]\ => \s_axi4_rdata_i_reg[7]\,
      \s_axi4_rdata_i_reg[7]_0\(3) => data_from_rx_fifo(0),
      \s_axi4_rdata_i_reg[7]_0\(2) => data_from_rx_fifo(5),
      \s_axi4_rdata_i_reg[7]_0\(1) => data_from_rx_fifo(6),
      \s_axi4_rdata_i_reg[7]_0\(0) => data_from_rx_fifo(7),
      \s_axi4_rdata_i_reg[7]_1\ => \s_axi4_rdata_i_reg[7]_0\,
      \s_axi4_rdata_i_reg[7]_2\ => \FIFO_EXISTS.RX_FIFO_II_n_15\,
      \s_axi4_rdata_i_reg[7]_3\ => \^tx_fifo_empty_spisr_to_axi_clk\,
      s_axi4_wdata(7 downto 0) => s_axi4_wdata(7 downto 0),
      spicr_9_lsb_to_spi_clk => spicr_9_lsb_to_spi_clk
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => SOFT_RESET_I_n_3,
      Q => Tx_FIFO_Full_i,
      R => '0'
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_int_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.CLK_CROSS_I_n_18\,
      Q => \^tx_fifo_full_int\,
      R => '0'
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.spiXfer_done_to_axi_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => spiXfer_done_to_axi_1,
      Q => spiXfer_done_to_axi_d1,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count(0),
      Q => tx_fifo_count_d1(0),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_3\,
      Q => tx_fifo_count_d1(1),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_2\,
      Q => tx_fifo_count_d1(2),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_1\,
      Q => tx_fifo_count_d1(3),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_5\,
      Q => tx_fifo_count_d1(4),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_4\,
      Q => tx_fifo_count_d1(5),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => \FIFO_EXISTS.TX_FIFO_EMPTY_CNTR_I_n_6\,
      Q => tx_fifo_count_d1(6),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_occ_msb_1,
      Q => tx_fifo_count_d1(7),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d1(0),
      Q => tx_fifo_count_d2(0),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d1(1),
      Q => tx_fifo_count_d2(1),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d1(2),
      Q => tx_fifo_count_d2(2),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d1(3),
      Q => tx_fifo_count_d2(3),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d1(4),
      Q => tx_fifo_count_d2(4),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d1(5),
      Q => tx_fifo_count_d2(5),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d1(6),
      Q => tx_fifo_count_d2(6),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.tx_fifo_count_d2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d1(7),
      Q => tx_fifo_count_d2(7),
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.data_Exists_RcFIFO_int_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_fifo_empty_i\,
      O => data_Exists_RcFIFO_pulse033_in
    );
\FIFO_EXISTS.data_Exists_RcFIFO_int_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => data_Exists_RcFIFO_pulse033_in,
      Q => data_Exists_RcFIFO_int_d1,
      R => reset2ip_reset_int
    );
\FIFO_EXISTS.tx_occ_msb_4_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => tx_fifo_count_d2(7),
      Q => tx_occ_msb_4,
      R => reset2ip_reset_int
    );
INTERRUPT_CONTROL_I: entity work.xlnx_axi_quad_spi_interrupt_control
     port map (
      D(8) => bus2IP_Data_for_interrupt_core(23),
      D(7 downto 0) => s_axi4_wdata(7 downto 0),
      \FSM_onehot_axi_full_sm_ps_reg[3]\ => \^ip2bus_rdack_core_reg\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_1\ => \FIFO_EXISTS.CLK_CROSS_I_n_23\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_22\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]_0\ => \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\,
      \GEN_IP_IRPT_STATUS_REG[5].GEN_REG_STATUS.ip_irpt_status_reg_reg[5]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_21\,
      \GEN_IP_IRPT_STATUS_REG[7].GEN_REG_STATUS.ip_irpt_status_reg_reg[7]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_20\,
      \GEN_IP_IRPT_STATUS_REG[8].GEN_REG_STATUS.ip_irpt_status_reg_reg[8]_0\ => CONTROL_REG_I_n_12,
      Tx_FIFO_Empty_SPISR_to_axi_clk => \^tx_fifo_empty_spisr_to_axi_clk\,
      Tx_FIFO_Empty_intr => Tx_FIFO_Empty_intr,
      burst_tr_int => burst_tr_int,
      dtr_underrun_d1 => dtr_underrun_d1,
      dtr_underrun_to_axi_clk => dtr_underrun_to_axi_clk,
      empty => \^empty\,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr2bus_rdack_reg_0 => intr2bus_rdack_reg,
      intr2bus_wrack_reg_0 => intr2bus_wrack_reg,
      intr_ip2bus_rdack => intr_ip2bus_rdack,
      ip2Bus_RdAck_intr_reg_hole => ip2Bus_RdAck_intr_reg_hole,
      ip2Bus_WrAck_core_reg => \^ip2bus_wrack_core_reg\,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      ip2intc_irpt => ip2intc_irpt,
      \ip_irpt_enable_reg_reg[8]_0\(8 downto 0) => \ip_irpt_enable_reg_reg[8]\(8 downto 0),
      \ip_irpt_enable_reg_reg[8]_1\(0) => \ip_irpt_enable_reg_reg[8]_0\(0),
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg_0 => ipif_glbl_irpt_enable_reg_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_13_out => p_13_out,
      p_1_in14_in => \^p_1_in14_in\,
      p_1_in17_in => \^p_1_in17_in\,
      p_1_in20_in => p_1_in20_in,
      p_1_in23_in => \^p_1_in23_in\,
      p_1_in26_in => p_1_in26_in,
      p_1_in29_in => p_1_in29_in,
      p_1_in32_in => p_1_in32_in,
      p_1_in35_in => \^p_1_in35_in\,
      p_7_in => p_7_in,
      rc_FIFO_Full_d1 => rc_FIFO_Full_d1,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi4_aclk => s_axi4_aclk,
      scndry_out => \^scndry_out\,
      tx_FIFO_Empty_d1 => tx_FIFO_Empty_d1,
      tx_FIFO_Occpncy_MSB_d1 => tx_FIFO_Occpncy_MSB_d1,
      tx_occ_msb_4 => tx_occ_msb_4,
      wrack => wrack
    );
\LOGIC_FOR_MD_0_GEN.SPI_MODULE_I\: entity work.xlnx_axi_quad_spi_qspi_mode_0_module
     port map (
      Allow_MODF_Strobe => Allow_MODF_Strobe,
      Allow_MODF_Strobe_reg_0 => RESET_SYNC_AXI_SPI_CLK_INST_n_0,
      Allow_Slave_MODF_Strobe => Allow_Slave_MODF_Strobe,
      Allow_Slave_MODF_Strobe_reg_0 => \FIFO_EXISTS.CLK_CROSS_I_n_16\,
      Count_trigger => Count_trigger,
      D(0) => data_in,
      D_0 => D_0,
      \LOGIC_GENERATION_FDR.SPICR_0_LOOP_AX2S_2\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_26\,
      \LOGIC_GENERATION_FDR.drr_Overrun_int_cdc_from_spi_int_2_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_12\,
      \LOGIC_GENERATION_FDR.modf_strobe_cdc_from_spi_int_2_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_2\,
      \LOGIC_GENERATION_FDR.spiXfer_done_cdc_from_spi_int_2_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_4\,
      \LOGIC_GENERATION_FDR.spisel_pulse_cdc_from_spi_int_2_reg\ => \FIFO_EXISTS.CLK_CROSS_I_n_1\,
      MODF_strobe0 => MODF_strobe0,
      \OTHER_RATIO_GENERATE.Serial_Dout_reg_0\ => \FIFO_EXISTS.TX_FIFO_II_n_18\,
      \OTHER_RATIO_GENERATE.sck_o_int_reg_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_32\,
      Q(7) => data_to_rx_fifo(0),
      Q(6) => data_to_rx_fifo(1),
      Q(5) => data_to_rx_fifo(2),
      Q(4) => data_to_rx_fifo(3),
      Q(3) => data_to_rx_fifo(4),
      Q(2) => data_to_rx_fifo(5),
      Q(1) => data_to_rx_fifo(6),
      Q(0) => data_to_rx_fifo(7),
      R => R,
      \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_0\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_9\,
      \RX_DATA_GEN_OTHER_SCK_RATIOS.FIFO_PRESENT_GEN.SPIXfer_done_int_reg_1\ => \FIFO_EXISTS.CLK_CROSS_I_n_31\,
      Ratio_Count => Ratio_Count,
      Rst_to_spi => rst_to_spi_int,
      SPICR_2_MST_N_SLV_to_spi_clk => SPICR_2_MST_N_SLV_to_spi_clk,
      SPISEL_sync => SPISEL_sync,
      SPI_TRISTATE_CONTROL_V_0 => \FIFO_EXISTS.CLK_CROSS_I_n_37\,
      \SS_O_reg[0]_0\ => \FIFO_EXISTS.CLK_CROSS_I_n_34\,
      Slave_MODF_strobe0 => Slave_MODF_strobe0,
      almost_full => Rx_FIFO_Full_Fifo_org,
      dout(7) => data_from_txfifo(0),
      dout(6) => data_from_txfifo(1),
      dout(5) => data_from_txfifo(2),
      dout(4) => data_from_txfifo(3),
      dout(3) => data_from_txfifo(4),
      dout(2) => data_from_txfifo(5),
      dout(1) => data_from_txfifo(6),
      dout(0) => data_from_txfifo(7),
      dtr_underrun_int => dtr_underrun_int,
      empty => tx_fifo_empty,
      ext_spi_clk => ext_spi_clk,
      io0_t => io0_t,
      io1_o => io1_o,
      io1_t => io1_t,
      modf_strobe_int => modf_strobe_int,
      p_0_out => p_0_out,
      p_2_out => p_2_out,
      p_5_out => p_5_out,
      p_6_out => p_6_out,
      p_9_out => p_9_out,
      rd_en => SPIXfer_done_rd_tx_en,
      register_Data_slvsel_int => register_Data_slvsel_int,
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      scndry_out => Rx_FIFO_Empty_Synced_in_SPI_domain,
      serial_dout_int => serial_dout_int,
      slave_MODF_strobe_int => slave_MODF_strobe_int,
      spiXfer_done_int => spiXfer_done_int,
      spicr_0_loop_to_spi_clk => spicr_0_loop_to_spi_clk,
      spicr_1_spe_to_spi_clk => spicr_1_spe_to_spi_clk,
      spicr_3_cpol_to_spi_clk => spicr_3_cpol_to_spi_clk,
      spicr_4_cpha_to_spi_clk => spicr_4_cpha_to_spi_clk,
      spicr_9_lsb_to_spi_clk => spicr_9_lsb_to_spi_clk,
      spisel => spisel,
      spisel_d1_reg => spisel_d1_reg,
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      transfer_start_d1 => transfer_start_d1,
      transfer_start_reg_0 => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12\,
      transfer_start_reg_1 => \FIFO_EXISTS.CLK_CROSS_I_n_28\
    );
RESET_SYNC_AXI_SPI_CLK_INST: entity work.xlnx_axi_quad_spi_reset_sync_module
     port map (
      \OTHER_RATIO_GENERATE.rx_shft_reg_s_reg[7]\ => \LOGIC_FOR_MD_0_GEN.SPI_MODULE_I_n_12\,
      RESET_SYNC_AX2S_2_0 => RESET_SYNC_AXI_SPI_CLK_INST_n_0,
      Rst_to_spi => rst_to_spi_int,
      SPISEL_sync => SPISEL_sync,
      ext_spi_clk => ext_spi_clk,
      p_6_out => p_6_out,
      reset2ip_reset_int => reset2ip_reset_int
    );
SOFT_RESET_I: entity work.xlnx_axi_quad_spi_soft_reset
     port map (
      Bus2IP_Reset_i_reg => SOFT_RESET_I_n_3,
      \FIFO_EXISTS.TX_FULL_EMP_INTR_MD_0_GEN.Tx_FIFO_Full_i_reg\ => \^spicr_5_txfifo_rst_frm_axi_clk\,
      \FSM_onehot_axi_full_sm_ps_reg[5]\ => \FSM_onehot_axi_full_sm_ps_reg[5]\,
      Q(0) => Q(1),
      \RESET_FLOPS[15].RST_FLOPS_0\ => \^reset_flops[15].rst_flops\,
      TX_one_less_than_full => TX_one_less_than_full,
      Tx_FIFO_Full_i => Tx_FIFO_Full_i,
      Tx_FIFO_Full_int => \^tx_fifo_full_int\,
      awready_i_reg => awready_i_i_4_n_0,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      p_13_out => p_13_out,
      p_7_in => p_7_in,
      reset_trig0 => reset_trig0,
      rst => reset_TxFIFO_ptr_int,
      s_axi4_aclk => s_axi4_aclk,
      sw_rst_cond => sw_rst_cond,
      sw_rst_cond_d1 => sw_rst_cond_d1,
      wrack => wrack
    );
\STATUS_REG_MODE_0_GEN.STATUS_SLAVE_SEL_REG_I\: entity work.xlnx_axi_quad_spi_qspi_status_slave_sel_reg
     port map (
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]_0\ => \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\,
      SPISSR_frm_axi_clk => \^spissr_frm_axi_clk\,
      modf_reg_0 => \FIFO_EXISTS.CLK_CROSS_I_n_19\,
      reset2ip_reset_int => reset2ip_reset_int,
      s_axi4_aclk => s_axi4_aclk,
      sr_3_MODF_int => \^sr_3_modf_int\
    );
awready_i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ip2bus_wrack_core_reg\,
      I1 => burst_tr_int,
      O => awready_i_i_4_n_0
    );
ip2Bus_RdAck_intr_reg_hole_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => intr_controller_rd_ce_or_reduce,
      Q => ip2Bus_RdAck_intr_reg_hole_d1,
      R => reset2ip_reset_int
    );
ip2Bus_RdAck_intr_reg_hole_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ip2Bus_RdAck_intr_reg_hole0,
      Q => ip2Bus_RdAck_intr_reg_hole,
      R => reset2ip_reset_int
    );
ip2Bus_WrAck_intr_reg_hole_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole_d1_reg_0,
      Q => ip2Bus_WrAck_intr_reg_hole_d1,
      R => reset2ip_reset_int
    );
ip2Bus_WrAck_intr_reg_hole_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi4_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole0,
      Q => ip2Bus_WrAck_intr_reg_hole,
      R => reset2ip_reset_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_axi_quad_spi_top is
  port (
    s_axi4_rlast : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    ss_t : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_o : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_wready : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    io1_o : out STD_LOGIC;
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi4_rready : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    ext_spi_clk : in STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io1_i : in STD_LOGIC;
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_aresetn : in STD_LOGIC;
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_axi_quad_spi_top : entity is "axi_quad_spi_top";
end xlnx_axi_quad_spi_axi_quad_spi_top;

architecture STRUCTURE of xlnx_axi_quad_spi_axi_quad_spi_top is
  signal \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/interrupt_wrce_strb\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/intr2bus_rdack0\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_rdack\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_rdack_d1\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/irpt_wrack_d1\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in10_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in13_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in16_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in19_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in1_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in4_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_0_in7_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in14_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in17_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in20_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in23_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in26_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in29_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in32_in\ : STD_LOGIC;
  signal \INTERRUPT_CONTROL_I/p_1_in35_in\ : STD_LOGIC;
  signal IP2Bus_RdAck_receive_enable : STD_LOGIC;
  signal IP2Bus_WrAck_transmit_enable : STD_LOGIC;
  signal \I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_DECODER/p_2_in\ : STD_LOGIC;
  signal \I_DECODER/p_3_in\ : STD_LOGIC;
  signal \I_DECODER/p_5_in\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_22\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_32\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_39\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_56\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_57\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_58\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_59\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_70\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_15\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_16\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_17\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_18\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_19\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_20\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_24\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_25\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_28\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_30\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_41\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_42\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_43\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_44\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_45\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_46\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_47\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_48\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_49\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_52\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_53\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_54\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_55\ : STD_LOGIC;
  signal \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_56\ : STD_LOGIC;
  signal Rx_FIFO_Empty : STD_LOGIC;
  signal Rx_FIFO_Full_Fifo_d1_synced : STD_LOGIC;
  signal \SOFT_RESET_I/reset_trig0\ : STD_LOGIC;
  signal \SOFT_RESET_I/sw_rst_cond\ : STD_LOGIC;
  signal \SOFT_RESET_I/sw_rst_cond_d1\ : STD_LOGIC;
  signal SPISSR_frm_axi_clk : STD_LOGIC;
  signal TX_Fifo_full_indication : STD_LOGIC;
  signal Tx_FIFO_Empty_SPISR_to_axi_clk : STD_LOGIC;
  signal Tx_FIFO_Full_int : STD_LOGIC;
  signal burst_tr_int : STD_LOGIC;
  signal bus2ip_reset_ipif_inverted : STD_LOGIC;
  signal bus2ip_wrce_int : STD_LOGIC_VECTOR ( 7 to 7 );
  signal intr_controller_rd_ce_or_reduce : STD_LOGIC;
  signal io0_i_sync : STD_LOGIC;
  signal io1_i_sync : STD_LOGIC;
  signal ip2Bus_RdAck_core_reg : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg : STD_LOGIC;
  signal ip2Bus_WrAck_core_reg_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1 : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_16_out : STD_LOGIC_VECTOR ( 24 to 31 );
  signal p_1_in : STD_LOGIC;
  signal p_21_out : STD_LOGIC;
  signal rd_ce_or_reduce_core_cmb : STD_LOGIC;
  signal reset2ip_reset_int : STD_LOGIC;
  signal rx_fifo_empty_i : STD_LOGIC;
  signal s_axi4_rresp_i0 : STD_LOGIC;
  signal spicr_0_loop_frm_axi_clk : STD_LOGIC;
  signal spicr_1_spe_frm_axi_clk : STD_LOGIC;
  signal spicr_2_mst_n_slv_frm_axi_clk : STD_LOGIC;
  signal spicr_3_cpol_frm_axi_clk : STD_LOGIC;
  signal spicr_4_cpha_frm_axi_clk : STD_LOGIC;
  signal spicr_5_txfifo_rst_frm_axi_clk : STD_LOGIC;
  signal spicr_6_rxfifo_rst_frm_axi_clk : STD_LOGIC;
  signal spicr_7_ss_frm_axi_clk : STD_LOGIC;
  signal spicr_8_tr_inhibit_frm_axi_clk : STD_LOGIC;
  signal spicr_9_lsb_frm_axi_clk : STD_LOGIC;
  signal spisel_d1_reg_to_axi_clk : STD_LOGIC;
  signal sr_3_MODF_int : STD_LOGIC;
  signal wr_ce_or_reduce_core_cmb : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of IO0_I_REG : label is "FD";
  attribute box_type : string;
  attribute box_type of IO0_I_REG : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of IO1_I_REG : label is "FD";
  attribute box_type of IO1_I_REG : label is "PRIMITIVE";
begin
IO0_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io0_i,
      Q => io0_i_sync,
      R => '0'
    );
IO1_I_REG: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ext_spi_clk,
      CE => '1',
      D => io1_i,
      Q => io1_i_sync,
      R => '0'
    );
\QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I\: entity work.xlnx_axi_quad_spi_qspi_core_interface
     port map (
      Bus_RNW_reg => \I_DECODER/Bus_RNW_reg\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_55\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_56\,
      \CONTROL_REG_5_9_GENERATE[9].SPICR_data_int_reg[9]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_15\,
      D(7) => p_16_out(24),
      D(6) => p_16_out(25),
      D(5) => p_16_out(26),
      D(4) => p_16_out(27),
      D(3) => p_16_out(28),
      D(2) => p_16_out(29),
      D(1) => p_16_out(30),
      D(0) => p_16_out(31),
      E(0) => s_axi4_rresp_i0,
      \ENHANCED_MD_WR_RD_ACK_GEN.ip2Bus_WrAck_core_reg_reg_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_20\,
      \FSM_onehot_axi_full_sm_ps_reg[5]\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_57\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_22\,
      \GEN_IP_IRPT_STATUS_REG[2].GEN_REG_STATUS.ip_irpt_status_reg_reg[2]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_49\,
      IP2Bus_WrAck_transmit_enable => IP2Bus_WrAck_transmit_enable,
      Q(1) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_24\,
      Q(0) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_25\,
      \RESET_FLOPS[15].RST_FLOPS\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_39\,
      Receive_ip2bus_error_reg => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_32\,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_54\,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      Transmit_ip2bus_error0 => \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      Tx_FIFO_Full_int => Tx_FIFO_Full_int,
      almost_full => TX_Fifo_full_indication,
      burst_tr_int => burst_tr_int,
      bus2ip_reset_ipif_inverted => bus2ip_reset_ipif_inverted,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(7),
      data_valid => p_21_out,
      empty => Rx_FIFO_Empty,
      ext_spi_clk => ext_spi_clk,
      \gen_fwft.gdvld_fwft.data_valid_fwft_reg\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_56\,
      interrupt_wrce_strb => \INTERRUPT_CONTROL_I/interrupt_wrce_strb\,
      intr2bus_rdack0 => \INTERRUPT_CONTROL_I/intr2bus_rdack0\,
      intr2bus_rdack_reg => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_59\,
      intr2bus_wrack_reg => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_58\,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      io0_i_sync => io0_i_sync,
      io0_t => io0_t,
      io1_i_sync => io1_i_sync,
      io1_o => io1_o,
      io1_t => io1_t,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg => ip2Bus_WrAck_core_reg,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole_d1_reg_0 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_17\,
      ip2intc_irpt => ip2intc_irpt,
      \ip_irpt_enable_reg_reg[8]\(8) => \INTERRUPT_CONTROL_I/p_0_in19_in\,
      \ip_irpt_enable_reg_reg[8]\(7) => \INTERRUPT_CONTROL_I/p_0_in16_in\,
      \ip_irpt_enable_reg_reg[8]\(6) => \INTERRUPT_CONTROL_I/p_0_in13_in\,
      \ip_irpt_enable_reg_reg[8]\(5) => \INTERRUPT_CONTROL_I/p_0_in10_in\,
      \ip_irpt_enable_reg_reg[8]\(4) => \INTERRUPT_CONTROL_I/p_0_in7_in\,
      \ip_irpt_enable_reg_reg[8]\(3) => \INTERRUPT_CONTROL_I/p_0_in4_in\,
      \ip_irpt_enable_reg_reg[8]\(2) => \INTERRUPT_CONTROL_I/p_0_in1_in\,
      \ip_irpt_enable_reg_reg[8]\(1) => \INTERRUPT_CONTROL_I/p_0_in\,
      \ip_irpt_enable_reg_reg[8]\(0) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_70\,
      \ip_irpt_enable_reg_reg[8]_0\(0) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_16\,
      ipif_glbl_irpt_enable_reg => \INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg\,
      ipif_glbl_irpt_enable_reg_reg => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_53\,
      irpt_rdack => \INTERRUPT_CONTROL_I/irpt_rdack\,
      irpt_rdack_d1 => \INTERRUPT_CONTROL_I/irpt_rdack_d1\,
      irpt_wrack => \INTERRUPT_CONTROL_I/irpt_wrack\,
      irpt_wrack_d1 => \INTERRUPT_CONTROL_I/irpt_wrack_d1\,
      modf_reg => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_52\,
      p_13_out => p_13_out,
      p_1_in => p_1_in,
      p_1_in14_in => \INTERRUPT_CONTROL_I/p_1_in14_in\,
      p_1_in17_in => \INTERRUPT_CONTROL_I/p_1_in17_in\,
      p_1_in20_in => \INTERRUPT_CONTROL_I/p_1_in20_in\,
      p_1_in23_in => \INTERRUPT_CONTROL_I/p_1_in23_in\,
      p_1_in26_in => \INTERRUPT_CONTROL_I/p_1_in26_in\,
      p_1_in29_in => \INTERRUPT_CONTROL_I/p_1_in29_in\,
      p_1_in32_in => \INTERRUPT_CONTROL_I/p_1_in32_in\,
      p_1_in35_in => \INTERRUPT_CONTROL_I/p_1_in35_in\,
      p_2_in => \I_DECODER/p_2_in\,
      p_3_in => \I_DECODER/p_3_in\,
      p_5_in => \I_DECODER/p_5_in\,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      rd_en => IP2Bus_RdAck_receive_enable,
      reset2ip_reset_int => reset2ip_reset_int,
      reset_trig0 => \SOFT_RESET_I/reset_trig0\,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi4_aclk => s_axi4_aclk,
      \s_axi4_rdata_i_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_41\,
      \s_axi4_rdata_i_reg[0]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_18\,
      \s_axi4_rdata_i_reg[1]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_42\,
      \s_axi4_rdata_i_reg[2]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_43\,
      \s_axi4_rdata_i_reg[31]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_30\,
      \s_axi4_rdata_i_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_44\,
      \s_axi4_rdata_i_reg[4]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_45\,
      \s_axi4_rdata_i_reg[5]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_46\,
      \s_axi4_rdata_i_reg[6]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_47\,
      \s_axi4_rdata_i_reg[6]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_19\,
      \s_axi4_rdata_i_reg[7]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_28\,
      \s_axi4_rdata_i_reg[7]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_48\,
      s_axi4_rready => s_axi4_rready,
      s_axi4_wdata(9 downto 0) => s_axi4_wdata(9 downto 0),
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      scndry_out => Rx_FIFO_Full_Fifo_d1_synced,
      spicr_0_loop_frm_axi_clk => spicr_0_loop_frm_axi_clk,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_7_ss_frm_axi_clk => spicr_7_ss_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spicr_9_lsb_frm_axi_clk => spicr_9_lsb_frm_axi_clk,
      spisel => spisel,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      sr_3_MODF_int => sr_3_MODF_int,
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      sw_rst_cond => \SOFT_RESET_I/sw_rst_cond\,
      sw_rst_cond_d1 => \SOFT_RESET_I/sw_rst_cond_d1\,
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
\QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I\: entity work.xlnx_axi_quad_spi_axi_qspi_enhanced_mode
     port map (
      Bus_RNW_reg => \I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_15\,
      Bus_RNW_reg_reg_0(0) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_16\,
      Bus_RNW_reg_reg_1 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_17\,
      Bus_RNW_reg_reg_2 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_52\,
      \CONTROL_REG_3_4_GENERATE[3].SPICR_data_int_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_55\,
      \CONTROL_REG_3_4_GENERATE[4].SPICR_data_int_reg[4]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_56\,
      D(7) => p_16_out(24),
      D(6) => p_16_out(25),
      D(5) => p_16_out(26),
      D(4) => p_16_out(27),
      D(3) => p_16_out(28),
      D(2) => p_16_out(29),
      D(1) => p_16_out(30),
      D(0) => p_16_out(31),
      E(0) => s_axi4_rresp_i0,
      \FSM_onehot_axi_full_sm_ps_reg[2]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_30\,
      \FSM_onehot_axi_full_sm_ps_reg[3]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_59\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_58\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_56\,
      \GEN_BKEND_CE_REGISTERS[25].ce_out_i_reg[25]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_20\,
      \GEN_BKEND_CE_REGISTERS[27].ce_out_i_reg[27]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_28\,
      \GEN_BKEND_CE_REGISTERS[29].ce_out_i_reg[29]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_19\,
      \GEN_BKEND_CE_REGISTERS[30].ce_out_i_reg[30]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_18\,
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_41\,
      IP2Bus_WrAck_transmit_enable => IP2Bus_WrAck_transmit_enable,
      Q(1) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_24\,
      Q(0) => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_25\,
      \SPISSR_WR_GEN[0].SPISSR_Data_reg_reg[0]\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_39\,
      SPISSR_frm_axi_clk => SPISSR_frm_axi_clk,
      SR(0) => bus2ip_reset_ipif_inverted,
      Transmit_ip2bus_error0 => \FIFO_EXISTS.FIFO_IF_MODULE_I/Transmit_ip2bus_error0\,
      Tx_FIFO_Empty_SPISR_to_axi_clk => Tx_FIFO_Empty_SPISR_to_axi_clk,
      Tx_FIFO_Full_int => Tx_FIFO_Full_int,
      almost_full => TX_Fifo_full_indication,
      awready_i_reg_0 => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_57\,
      burst_tr_int => burst_tr_int,
      \bus2ip_BE_reg_reg[3]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_49\,
      bus2ip_wrce_int(0) => bus2ip_wrce_int(7),
      data_valid => p_21_out,
      empty => Rx_FIFO_Empty,
      interrupt_wrce_strb => \INTERRUPT_CONTROL_I/interrupt_wrce_strb\,
      intr2bus_rdack0 => \INTERRUPT_CONTROL_I/intr2bus_rdack0\,
      intr_controller_rd_ce_or_reduce => intr_controller_rd_ce_or_reduce,
      ip2Bus_RdAck_core_reg => ip2Bus_RdAck_core_reg,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_core_reg => ip2Bus_WrAck_core_reg,
      ip2Bus_WrAck_core_reg_d1 => ip2Bus_WrAck_core_reg_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      \ip_irpt_enable_reg_reg[1]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_42\,
      \ip_irpt_enable_reg_reg[2]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_43\,
      \ip_irpt_enable_reg_reg[3]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_44\,
      \ip_irpt_enable_reg_reg[4]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_45\,
      \ip_irpt_enable_reg_reg[5]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_46\,
      \ip_irpt_enable_reg_reg[6]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_47\,
      \ip_irpt_enable_reg_reg[7]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_48\,
      ipif_glbl_irpt_enable_reg => \INTERRUPT_CONTROL_I/ipif_glbl_irpt_enable_reg\,
      irpt_rdack => \INTERRUPT_CONTROL_I/irpt_rdack\,
      irpt_rdack_d1 => \INTERRUPT_CONTROL_I/irpt_rdack_d1\,
      irpt_wrack => \INTERRUPT_CONTROL_I/irpt_wrack\,
      irpt_wrack_d1 => \INTERRUPT_CONTROL_I/irpt_wrack_d1\,
      p_13_out => p_13_out,
      p_1_in => p_1_in,
      p_1_in14_in => \INTERRUPT_CONTROL_I/p_1_in14_in\,
      p_1_in17_in => \INTERRUPT_CONTROL_I/p_1_in17_in\,
      p_1_in20_in => \INTERRUPT_CONTROL_I/p_1_in20_in\,
      p_1_in23_in => \INTERRUPT_CONTROL_I/p_1_in23_in\,
      p_1_in26_in => \INTERRUPT_CONTROL_I/p_1_in26_in\,
      p_1_in29_in => \INTERRUPT_CONTROL_I/p_1_in29_in\,
      p_1_in32_in => \INTERRUPT_CONTROL_I/p_1_in32_in\,
      p_1_in35_in => \INTERRUPT_CONTROL_I/p_1_in35_in\,
      p_2_in => \I_DECODER/p_2_in\,
      p_3_in => \I_DECODER/p_3_in\,
      p_5_in => \I_DECODER/p_5_in\,
      rd_ce_or_reduce_core_cmb => rd_ce_or_reduce_core_cmb,
      rd_en => IP2Bus_RdAck_receive_enable,
      reset2ip_reset_int => reset2ip_reset_int,
      reset_trig0 => \SOFT_RESET_I/reset_trig0\,
      rx_fifo_empty_i => rx_fifo_empty_i,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(4 downto 0) => s_axi4_araddr(4 downto 0),
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arid(0) => s_axi4_arid(0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arready => s_axi4_arready,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(4 downto 0) => s_axi4_awaddr(4 downto 0),
      s_axi4_awid(0) => s_axi4_awid(0),
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awready => s_axi4_awready,
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bid(0) => s_axi4_bid(0),
      s_axi4_bready => s_axi4_bready,
      s_axi4_bresp(0) => s_axi4_bresp(0),
      s_axi4_bvalid => s_axi4_bvalid,
      s_axi4_rdata(10 downto 0) => s_axi4_rdata(10 downto 0),
      \s_axi4_rdata_i[0]_i_2\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_22\,
      \s_axi4_rdata_i_reg[8]_0\(8) => \INTERRUPT_CONTROL_I/p_0_in19_in\,
      \s_axi4_rdata_i_reg[8]_0\(7) => \INTERRUPT_CONTROL_I/p_0_in16_in\,
      \s_axi4_rdata_i_reg[8]_0\(6) => \INTERRUPT_CONTROL_I/p_0_in13_in\,
      \s_axi4_rdata_i_reg[8]_0\(5) => \INTERRUPT_CONTROL_I/p_0_in10_in\,
      \s_axi4_rdata_i_reg[8]_0\(4) => \INTERRUPT_CONTROL_I/p_0_in7_in\,
      \s_axi4_rdata_i_reg[8]_0\(3) => \INTERRUPT_CONTROL_I/p_0_in4_in\,
      \s_axi4_rdata_i_reg[8]_0\(2) => \INTERRUPT_CONTROL_I/p_0_in1_in\,
      \s_axi4_rdata_i_reg[8]_0\(1) => \INTERRUPT_CONTROL_I/p_0_in\,
      \s_axi4_rdata_i_reg[8]_0\(0) => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_70\,
      s_axi4_rid(0) => s_axi4_rid(0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(0) => s_axi4_rresp(0),
      \s_axi4_rresp_i_reg[1]_0\ => \QSPI_ENHANCED_MD_GEN.QSPI_CORE_INTERFACE_I_n_32\,
      s_axi4_wdata(6) => s_axi4_wdata(10),
      s_axi4_wdata(5 downto 4) => s_axi4_wdata(6 downto 5),
      s_axi4_wdata(3 downto 0) => s_axi4_wdata(3 downto 0),
      \s_axi4_wdata[31]\ => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_53\,
      s_axi4_wdata_0_sp_1 => \QSPI_ENHANCED_MD_GEN.QSPI_ENHANCED_MD_IPIF_I_n_54\,
      s_axi4_wready => s_axi4_wready,
      s_axi4_wstrb(1 downto 0) => s_axi4_wstrb(1 downto 0),
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      scndry_out => Rx_FIFO_Full_Fifo_d1_synced,
      spicr_0_loop_frm_axi_clk => spicr_0_loop_frm_axi_clk,
      spicr_1_spe_frm_axi_clk => spicr_1_spe_frm_axi_clk,
      spicr_2_mst_n_slv_frm_axi_clk => spicr_2_mst_n_slv_frm_axi_clk,
      spicr_3_cpol_frm_axi_clk => spicr_3_cpol_frm_axi_clk,
      spicr_4_cpha_frm_axi_clk => spicr_4_cpha_frm_axi_clk,
      spicr_5_txfifo_rst_frm_axi_clk => spicr_5_txfifo_rst_frm_axi_clk,
      spicr_6_rxfifo_rst_frm_axi_clk => spicr_6_rxfifo_rst_frm_axi_clk,
      spicr_7_ss_frm_axi_clk => spicr_7_ss_frm_axi_clk,
      spicr_8_tr_inhibit_frm_axi_clk => spicr_8_tr_inhibit_frm_axi_clk,
      spicr_9_lsb_frm_axi_clk => spicr_9_lsb_frm_axi_clk,
      spisel_d1_reg_to_axi_clk => spisel_d1_reg_to_axi_clk,
      sr_3_MODF_int => sr_3_MODF_int,
      sw_rst_cond => \SOFT_RESET_I/sw_rst_cond\,
      sw_rst_cond_d1 => \SOFT_RESET_I/sw_rst_cond_d1\,
      wr_ce_or_reduce_core_cmb => wr_ce_or_reduce_core_cmb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi_axi_quad_spi is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi4_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    io2_i : in STD_LOGIC;
    io2_o : out STD_LOGIC;
    io2_t : out STD_LOGIC;
    io3_i : in STD_LOGIC;
    io3_o : out STD_LOGIC;
    io3_t : out STD_LOGIC;
    io0_1_i : in STD_LOGIC;
    io0_1_o : out STD_LOGIC;
    io0_1_t : out STD_LOGIC;
    io1_1_i : in STD_LOGIC;
    io1_1_o : out STD_LOGIC;
    io1_1_t : out STD_LOGIC;
    io2_1_i : in STD_LOGIC;
    io2_1_o : out STD_LOGIC;
    io2_1_t : out STD_LOGIC;
    io3_1_i : in STD_LOGIC;
    io3_1_o : out STD_LOGIC;
    io3_1_t : out STD_LOGIC;
    spisel : in STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ss_1_i : in STD_LOGIC;
    ss_1_o : out STD_LOGIC;
    ss_1_t : out STD_LOGIC;
    cfgclk : out STD_LOGIC;
    cfgmclk : out STD_LOGIC;
    eos : out STD_LOGIC;
    preq : out STD_LOGIC;
    clk : in STD_LOGIC;
    gsr : in STD_LOGIC;
    gts : in STD_LOGIC;
    keyclearb : in STD_LOGIC;
    usrcclkts : in STD_LOGIC;
    usrdoneo : in STD_LOGIC;
    usrdonets : in STD_LOGIC;
    pack : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute Async_Clk : integer;
  attribute Async_Clk of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of xlnx_axi_quad_spi_axi_quad_spi : entity is "kintex7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of xlnx_axi_quad_spi_axi_quad_spi : entity is 256;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of xlnx_axi_quad_spi_axi_quad_spi : entity is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of xlnx_axi_quad_spi_axi_quad_spi : entity is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of xlnx_axi_quad_spi_axi_quad_spi : entity is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of xlnx_axi_quad_spi_axi_quad_spi : entity is 4;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of xlnx_axi_quad_spi_axi_quad_spi : entity is 1;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of xlnx_axi_quad_spi_axi_quad_spi : entity is 1;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of xlnx_axi_quad_spi_axi_quad_spi : entity is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of xlnx_axi_quad_spi_axi_quad_spi : entity is "kintex7";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of xlnx_axi_quad_spi_axi_quad_spi : entity is 24;
  attribute C_S_AXI4_BASEADDR : integer;
  attribute C_S_AXI4_BASEADDR of xlnx_axi_quad_spi_axi_quad_spi : entity is -1;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of xlnx_axi_quad_spi_axi_quad_spi : entity is 32;
  attribute C_S_AXI4_HIGHADDR : integer;
  attribute C_S_AXI4_HIGHADDR of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of xlnx_axi_quad_spi_axi_quad_spi : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of xlnx_axi_quad_spi_axi_quad_spi : entity is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of xlnx_axi_quad_spi_axi_quad_spi : entity is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of xlnx_axi_quad_spi_axi_quad_spi : entity is 1;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of xlnx_axi_quad_spi_axi_quad_spi : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of xlnx_axi_quad_spi_axi_quad_spi : entity is "axi_quad_spi";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xlnx_axi_quad_spi_axi_quad_spi : entity is "yes";
end xlnx_axi_quad_spi_axi_quad_spi;

architecture STRUCTURE of xlnx_axi_quad_spi_axi_quad_spi is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^io1_o\ : STD_LOGIC;
  signal \^s_axi4_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi4_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi4_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute initialval : string;
  attribute initialval of spisel : signal is "VCC";
begin
  cfgclk <= \<const0>\;
  cfgmclk <= \<const0>\;
  eos <= \<const0>\;
  io0_1_o <= \<const0>\;
  io0_1_t <= \<const0>\;
  io0_o <= \^io1_o\;
  io1_1_o <= \<const0>\;
  io1_1_t <= \<const0>\;
  io1_o <= \^io1_o\;
  io2_1_o <= \<const0>\;
  io2_1_t <= \<const0>\;
  io2_o <= \<const0>\;
  io2_t <= \<const1>\;
  io3_1_o <= \<const0>\;
  io3_1_t <= \<const0>\;
  io3_o <= \<const0>\;
  io3_t <= \<const1>\;
  preq <= \<const0>\;
  s_axi4_bresp(1) <= \^s_axi4_bresp\(1);
  s_axi4_bresp(0) <= \<const0>\;
  s_axi4_rdata(31) <= \^s_axi4_rdata\(31);
  s_axi4_rdata(30) <= \<const0>\;
  s_axi4_rdata(29) <= \<const0>\;
  s_axi4_rdata(28) <= \<const0>\;
  s_axi4_rdata(27) <= \<const0>\;
  s_axi4_rdata(26) <= \<const0>\;
  s_axi4_rdata(25) <= \<const0>\;
  s_axi4_rdata(24) <= \<const0>\;
  s_axi4_rdata(23) <= \<const0>\;
  s_axi4_rdata(22) <= \<const0>\;
  s_axi4_rdata(21) <= \<const0>\;
  s_axi4_rdata(20) <= \<const0>\;
  s_axi4_rdata(19) <= \<const0>\;
  s_axi4_rdata(18) <= \<const0>\;
  s_axi4_rdata(17) <= \<const0>\;
  s_axi4_rdata(16) <= \<const0>\;
  s_axi4_rdata(15) <= \<const0>\;
  s_axi4_rdata(14) <= \<const0>\;
  s_axi4_rdata(13) <= \<const0>\;
  s_axi4_rdata(12) <= \<const0>\;
  s_axi4_rdata(11) <= \<const0>\;
  s_axi4_rdata(10) <= \<const0>\;
  s_axi4_rdata(9 downto 0) <= \^s_axi4_rdata\(9 downto 0);
  s_axi4_rresp(1) <= \^s_axi4_rresp\(1);
  s_axi4_rresp(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  ss_1_o <= \<const0>\;
  ss_1_t <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\NO_DUAL_QUAD_MODE.QSPI_NORMAL\: entity work.xlnx_axi_quad_spi_axi_quad_spi_top
     port map (
      ext_spi_clk => ext_spi_clk,
      io0_i => io0_i,
      io0_t => io0_t,
      io1_i => io1_i,
      io1_o => \^io1_o\,
      io1_t => io1_t,
      ip2intc_irpt => ip2intc_irpt,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(4 downto 0) => s_axi4_araddr(6 downto 2),
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arid(0) => s_axi4_arid(0),
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arready => s_axi4_arready,
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(4 downto 0) => s_axi4_awaddr(6 downto 2),
      s_axi4_awid(0) => s_axi4_awid(0),
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awready => s_axi4_awready,
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bid(0) => s_axi4_bid(0),
      s_axi4_bready => s_axi4_bready,
      s_axi4_bresp(0) => \^s_axi4_bresp\(1),
      s_axi4_bvalid => s_axi4_bvalid,
      s_axi4_rdata(10) => \^s_axi4_rdata\(31),
      s_axi4_rdata(9 downto 0) => \^s_axi4_rdata\(9 downto 0),
      s_axi4_rid(0) => s_axi4_rid(0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(0) => \^s_axi4_rresp\(1),
      s_axi4_wdata(10) => s_axi4_wdata(31),
      s_axi4_wdata(9 downto 0) => s_axi4_wdata(9 downto 0),
      s_axi4_wready => s_axi4_wready,
      s_axi4_wstrb(1) => s_axi4_wstrb(3),
      s_axi4_wstrb(0) => s_axi4_wstrb(0),
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_rvalid_i_reg => s_axi4_rvalid,
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      spisel => spisel,
      ss_o(0) => ss_o(0),
      ss_t => ss_t
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xlnx_axi_quad_spi is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi4_aclk : in STD_LOGIC;
    s_axi4_aresetn : in STD_LOGIC;
    s_axi4_awaddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_awlock : in STD_LOGIC;
    s_axi4_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_awvalid : in STD_LOGIC;
    s_axi4_awready : out STD_LOGIC;
    s_axi4_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_wlast : in STD_LOGIC;
    s_axi4_wvalid : in STD_LOGIC;
    s_axi4_wready : out STD_LOGIC;
    s_axi4_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_bvalid : out STD_LOGIC;
    s_axi4_bready : in STD_LOGIC;
    s_axi4_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi4_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi4_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_arlock : in STD_LOGIC;
    s_axi4_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi4_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi4_arvalid : in STD_LOGIC;
    s_axi4_arready : out STD_LOGIC;
    s_axi4_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi4_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi4_rlast : out STD_LOGIC;
    s_axi4_rvalid : out STD_LOGIC;
    s_axi4_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of xlnx_axi_quad_spi : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of xlnx_axi_quad_spi : entity is "xlnx_axi_quad_spi,axi_quad_spi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of xlnx_axi_quad_spi : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of xlnx_axi_quad_spi : entity is "axi_quad_spi,Vivado 2018.3";
end xlnx_axi_quad_spi;

architecture STRUCTURE of xlnx_axi_quad_spi is
  signal NLW_U0_cfgclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_cfgmclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_eos_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io0_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io1_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io2_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_io3_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_preq_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ss_1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi4_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi4_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute Async_Clk : integer;
  attribute Async_Clk of U0 : label is 0;
  attribute C_DUAL_QUAD_MODE : integer;
  attribute C_DUAL_QUAD_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintex7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of U0 : label is 256;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "axi_quad_spi_inst";
  attribute C_LSB_STUP : integer;
  attribute C_LSB_STUP of U0 : label is 0;
  attribute C_NUM_SS_BITS : integer;
  attribute C_NUM_SS_BITS of U0 : label is 1;
  attribute C_NUM_TRANSFER_BITS : integer;
  attribute C_NUM_TRANSFER_BITS of U0 : label is 8;
  attribute C_SCK_RATIO : integer;
  attribute C_SCK_RATIO of U0 : label is 4;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 1;
  attribute C_SHARED_STARTUP : integer;
  attribute C_SHARED_STARTUP of U0 : label is 0;
  attribute C_SPI_MEMORY : integer;
  attribute C_SPI_MEMORY of U0 : label is 1;
  attribute C_SPI_MEM_ADDR_BITS : integer;
  attribute C_SPI_MEM_ADDR_BITS of U0 : label is 24;
  attribute C_SPI_MODE : integer;
  attribute C_SPI_MODE of U0 : label is 0;
  attribute C_SUB_FAMILY : string;
  attribute C_SUB_FAMILY of U0 : label is "kintex7";
  attribute C_S_AXI4_ADDR_WIDTH : integer;
  attribute C_S_AXI4_ADDR_WIDTH of U0 : label is 24;
  attribute C_S_AXI4_BASEADDR : integer;
  attribute C_S_AXI4_BASEADDR of U0 : label is -1;
  attribute C_S_AXI4_DATA_WIDTH : integer;
  attribute C_S_AXI4_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI4_HIGHADDR : integer;
  attribute C_S_AXI4_HIGHADDR of U0 : label is 0;
  attribute C_S_AXI4_ID_WIDTH : integer;
  attribute C_S_AXI4_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 7;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TYPE_OF_AXI4_INTERFACE : integer;
  attribute C_TYPE_OF_AXI4_INTERFACE of U0 : label is 1;
  attribute C_UC_FAMILY : integer;
  attribute C_UC_FAMILY of U0 : label is 0;
  attribute C_USE_STARTUP : integer;
  attribute C_USE_STARTUP of U0 : label is 0;
  attribute C_USE_STARTUP_EXT : integer;
  attribute C_USE_STARTUP_EXT of U0 : label is 0;
  attribute C_XIP_MODE : integer;
  attribute C_XIP_MODE of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of ext_spi_clk : signal is "xilinx.com:signal:clock:1.0 spi_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ext_spi_clk : signal is "XIL_INTERFACENAME spi_clk, ASSOCIATED_BUSIF SPI_0, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of io0_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_I";
  attribute x_interface_parameter of io0_i : signal is "XIL_INTERFACENAME SPI_0, BOARD.ASSOCIATED_PARAM QSPI_BOARD_INTERFACE";
  attribute x_interface_info of io0_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_O";
  attribute x_interface_info of io0_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO0_T";
  attribute x_interface_info of io1_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_I";
  attribute x_interface_info of io1_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_O";
  attribute x_interface_info of io1_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 IO1_T";
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute x_interface_info of s_axi4_aclk : signal is "xilinx.com:signal:clock:1.0 full_clk CLK";
  attribute x_interface_parameter of s_axi4_aclk : signal is "XIL_INTERFACENAME full_clk, ASSOCIATED_BUSIF AXI_FULL, ASSOCIATED_RESET s_axi4_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_aresetn : signal is "xilinx.com:signal:reset:1.0 full_reset RST";
  attribute x_interface_parameter of s_axi4_aresetn : signal is "XIL_INTERFACENAME full_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_arlock : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARLOCK";
  attribute x_interface_info of s_axi4_arready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARREADY";
  attribute x_interface_info of s_axi4_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARVALID";
  attribute x_interface_info of s_axi4_awlock : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWLOCK";
  attribute x_interface_info of s_axi4_awready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWREADY";
  attribute x_interface_info of s_axi4_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWVALID";
  attribute x_interface_info of s_axi4_bready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BREADY";
  attribute x_interface_info of s_axi4_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BVALID";
  attribute x_interface_info of s_axi4_rlast : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RLAST";
  attribute x_interface_info of s_axi4_rready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RREADY";
  attribute x_interface_info of s_axi4_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RVALID";
  attribute x_interface_info of s_axi4_wlast : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WLAST";
  attribute x_interface_info of s_axi4_wready : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WREADY";
  attribute x_interface_info of s_axi4_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WVALID";
  attribute x_interface_info of sck_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_I";
  attribute x_interface_info of sck_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_O";
  attribute x_interface_info of sck_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 SCK_T";
  attribute x_interface_info of ss_t : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_T";
  attribute x_interface_info of s_axi4_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARADDR";
  attribute x_interface_info of s_axi4_arburst : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARBURST";
  attribute x_interface_info of s_axi4_arcache : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARCACHE";
  attribute x_interface_info of s_axi4_arlen : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARLEN";
  attribute x_interface_info of s_axi4_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARPROT";
  attribute x_interface_info of s_axi4_arsize : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL ARSIZE";
  attribute x_interface_info of s_axi4_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWADDR";
  attribute x_interface_parameter of s_axi4_awaddr : signal is "XIL_INTERFACENAME AXI_FULL, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 24, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi4_awburst : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWBURST";
  attribute x_interface_info of s_axi4_awcache : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWCACHE";
  attribute x_interface_info of s_axi4_awlen : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWLEN";
  attribute x_interface_info of s_axi4_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWPROT";
  attribute x_interface_info of s_axi4_awsize : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL AWSIZE";
  attribute x_interface_info of s_axi4_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL BRESP";
  attribute x_interface_info of s_axi4_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RDATA";
  attribute x_interface_info of s_axi4_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL RRESP";
  attribute x_interface_info of s_axi4_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WDATA";
  attribute x_interface_info of s_axi4_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI_FULL WSTRB";
  attribute x_interface_info of ss_i : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_I";
  attribute x_interface_info of ss_o : signal is "xilinx.com:interface:spi:1.0 SPI_0 SS_O";
begin
U0: entity work.xlnx_axi_quad_spi_axi_quad_spi
     port map (
      cfgclk => NLW_U0_cfgclk_UNCONNECTED,
      cfgmclk => NLW_U0_cfgmclk_UNCONNECTED,
      clk => '0',
      eos => NLW_U0_eos_UNCONNECTED,
      ext_spi_clk => ext_spi_clk,
      gsr => '0',
      gts => '0',
      io0_1_i => '0',
      io0_1_o => NLW_U0_io0_1_o_UNCONNECTED,
      io0_1_t => NLW_U0_io0_1_t_UNCONNECTED,
      io0_i => io0_i,
      io0_o => io0_o,
      io0_t => io0_t,
      io1_1_i => '0',
      io1_1_o => NLW_U0_io1_1_o_UNCONNECTED,
      io1_1_t => NLW_U0_io1_1_t_UNCONNECTED,
      io1_i => io1_i,
      io1_o => io1_o,
      io1_t => io1_t,
      io2_1_i => '0',
      io2_1_o => NLW_U0_io2_1_o_UNCONNECTED,
      io2_1_t => NLW_U0_io2_1_t_UNCONNECTED,
      io2_i => '0',
      io2_o => NLW_U0_io2_o_UNCONNECTED,
      io2_t => NLW_U0_io2_t_UNCONNECTED,
      io3_1_i => '0',
      io3_1_o => NLW_U0_io3_1_o_UNCONNECTED,
      io3_1_t => NLW_U0_io3_1_t_UNCONNECTED,
      io3_i => '0',
      io3_o => NLW_U0_io3_o_UNCONNECTED,
      io3_t => NLW_U0_io3_t_UNCONNECTED,
      ip2intc_irpt => ip2intc_irpt,
      keyclearb => '0',
      pack => '0',
      preq => NLW_U0_preq_UNCONNECTED,
      s_axi4_aclk => s_axi4_aclk,
      s_axi4_araddr(23 downto 0) => s_axi4_araddr(23 downto 0),
      s_axi4_arburst(1 downto 0) => s_axi4_arburst(1 downto 0),
      s_axi4_arcache(3 downto 0) => s_axi4_arcache(3 downto 0),
      s_axi4_aresetn => s_axi4_aresetn,
      s_axi4_arid(0) => '0',
      s_axi4_arlen(7 downto 0) => s_axi4_arlen(7 downto 0),
      s_axi4_arlock => s_axi4_arlock,
      s_axi4_arprot(2 downto 0) => s_axi4_arprot(2 downto 0),
      s_axi4_arready => s_axi4_arready,
      s_axi4_arsize(2 downto 0) => s_axi4_arsize(2 downto 0),
      s_axi4_arvalid => s_axi4_arvalid,
      s_axi4_awaddr(23 downto 0) => s_axi4_awaddr(23 downto 0),
      s_axi4_awburst(1 downto 0) => s_axi4_awburst(1 downto 0),
      s_axi4_awcache(3 downto 0) => s_axi4_awcache(3 downto 0),
      s_axi4_awid(0) => '0',
      s_axi4_awlen(7 downto 0) => s_axi4_awlen(7 downto 0),
      s_axi4_awlock => s_axi4_awlock,
      s_axi4_awprot(2 downto 0) => s_axi4_awprot(2 downto 0),
      s_axi4_awready => s_axi4_awready,
      s_axi4_awsize(2 downto 0) => s_axi4_awsize(2 downto 0),
      s_axi4_awvalid => s_axi4_awvalid,
      s_axi4_bid(0) => NLW_U0_s_axi4_bid_UNCONNECTED(0),
      s_axi4_bready => s_axi4_bready,
      s_axi4_bresp(1 downto 0) => s_axi4_bresp(1 downto 0),
      s_axi4_bvalid => s_axi4_bvalid,
      s_axi4_rdata(31 downto 0) => s_axi4_rdata(31 downto 0),
      s_axi4_rid(0) => NLW_U0_s_axi4_rid_UNCONNECTED(0),
      s_axi4_rlast => s_axi4_rlast,
      s_axi4_rready => s_axi4_rready,
      s_axi4_rresp(1 downto 0) => s_axi4_rresp(1 downto 0),
      s_axi4_rvalid => s_axi4_rvalid,
      s_axi4_wdata(31 downto 0) => s_axi4_wdata(31 downto 0),
      s_axi4_wlast => s_axi4_wlast,
      s_axi4_wready => s_axi4_wready,
      s_axi4_wstrb(3 downto 0) => s_axi4_wstrb(3 downto 0),
      s_axi4_wvalid => s_axi4_wvalid,
      s_axi_aclk => '0',
      s_axi_araddr(6 downto 0) => B"0000000",
      s_axi_aresetn => '0',
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(6 downto 0) => B"0000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => '0',
      sck_i => sck_i,
      sck_o => sck_o,
      sck_t => sck_t,
      spisel => '1',
      ss_1_i => '0',
      ss_1_o => NLW_U0_ss_1_o_UNCONNECTED,
      ss_1_t => NLW_U0_ss_1_t_UNCONNECTED,
      ss_i(0) => ss_i(0),
      ss_o(0) => ss_o(0),
      ss_t => ss_t,
      usrcclkts => '0',
      usrdoneo => '1',
      usrdonets => '0'
    );
end STRUCTURE;
