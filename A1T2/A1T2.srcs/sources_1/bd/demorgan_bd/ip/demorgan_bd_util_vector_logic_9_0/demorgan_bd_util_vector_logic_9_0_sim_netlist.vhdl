-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Oct  7 18:02:56 2019
-- Host        : Diamond-lori running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top demorgan_bd_util_vector_logic_9_0 -prefix
--               demorgan_bd_util_vector_logic_9_0_ demorgan_bd_util_vector_logic_0_0_sim_netlist.vhdl
-- Design      : demorgan_bd_util_vector_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity demorgan_bd_util_vector_logic_9_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of demorgan_bd_util_vector_logic_9_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of demorgan_bd_util_vector_logic_9_0 : entity is "demorgan_bd_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of demorgan_bd_util_vector_logic_9_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of demorgan_bd_util_vector_logic_9_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2017.4";
end demorgan_bd_util_vector_logic_9_0;

architecture STRUCTURE of demorgan_bd_util_vector_logic_9_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
