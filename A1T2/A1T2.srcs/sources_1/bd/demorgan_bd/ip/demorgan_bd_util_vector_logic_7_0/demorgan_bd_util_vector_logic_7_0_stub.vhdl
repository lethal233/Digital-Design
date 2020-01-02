-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Oct  7 18:03:37 2019
-- Host        : Diamond-lori running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top demorgan_bd_util_vector_logic_7_0 -prefix
--               demorgan_bd_util_vector_logic_7_0_ demorgan_bd_util_vector_logic_1_0_stub.vhdl
-- Design      : demorgan_bd_util_vector_logic_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demorgan_bd_util_vector_logic_7_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end demorgan_bd_util_vector_logic_7_0;

architecture stub of demorgan_bd_util_vector_logic_7_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2017.4";
begin
end;
