-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Nov 18 21:58:28 2019
-- Host        : Diamond-lori running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top task2_decoder3_8_1_0 -prefix
--               task2_decoder3_8_1_0_ task2_decoder3_8_0_0_stub.vhdl
-- Design      : task2_decoder3_8_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task2_decoder3_8_1_0 is
  Port ( 
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    EN : in STD_LOGIC_VECTOR ( 0 to 0 );
    Y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end task2_decoder3_8_1_0;

architecture stub of task2_decoder3_8_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I0,I1,I2,EN[0:0],Y[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DECO38,Vivado 2017.4";
begin
end;
