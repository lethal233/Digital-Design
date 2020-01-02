-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Sep 28 16:55:27 2019
-- Host        : Diamond-lori running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Lori/DigitalDesign/A1T2/A1T2.srcs/sources_1/bd/demorgan_bd/ip/demorgan_bd_demorgan_df_0_0/demorgan_bd_demorgan_df_0_0_sim_netlist.vhdl
-- Design      : demorgan_bd_demorgan_df_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity demorgan_bd_demorgan_df_0_0 is
  port (
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    q1 : out STD_LOGIC;
    q2 : out STD_LOGIC;
    q3 : out STD_LOGIC;
    q4 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of demorgan_bd_demorgan_df_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of demorgan_bd_demorgan_df_0_0 : entity is "demorgan_bd_demorgan_df_0_0,demorgan_df,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of demorgan_bd_demorgan_df_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of demorgan_bd_demorgan_df_0_0 : entity is "demorgan_df,Vivado 2017.4";
end demorgan_bd_demorgan_df_0_0;

architecture STRUCTURE of demorgan_bd_demorgan_df_0_0 is
  signal \^q2\ : STD_LOGIC;
  signal \^q4\ : STD_LOGIC;
begin
  q1 <= \^q2\;
  q2 <= \^q2\;
  q3 <= \^q4\;
  q4 <= \^q4\;
q2_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x,
      I1 => y,
      O => \^q2\
    );
q4_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => x,
      I1 => y,
      O => \^q4\
    );
end STRUCTURE;
