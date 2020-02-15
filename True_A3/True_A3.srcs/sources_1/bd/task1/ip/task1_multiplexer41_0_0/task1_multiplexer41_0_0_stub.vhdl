-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Nov 17 11:41:07 2019
-- Host        : Diamond-lori running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Lori/DigitalDesign/True_A3/True_A3.srcs/sources_1/bd/task1/ip/task1_multiplexer41_0_0/task1_multiplexer41_0_0_stub.vhdl
-- Design      : task1_multiplexer41_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task1_multiplexer41_0_0 is
  Port ( 
    w : in STD_LOGIC;
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    z : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o : out STD_LOGIC
  );

end task1_multiplexer41_0_0;

architecture stub of task1_multiplexer41_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "w,x,y,z,s[1:0],o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "multiplexer41,Vivado 2017.4";
begin
end;
