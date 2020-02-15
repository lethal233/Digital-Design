-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Nov 17 11:41:07 2019
-- Host        : Diamond-lori running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Lori/DigitalDesign/True_A3/True_A3.srcs/sources_1/bd/task1/ip/task1_multiplexer41_0_0/task1_multiplexer41_0_0_sim_netlist.vhdl
-- Design      : task1_multiplexer41_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity task1_multiplexer41_0_0_multiplexer41 is
  port (
    o : out STD_LOGIC;
    x : in STD_LOGIC;
    w : in STD_LOGIC;
    z : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    y : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of task1_multiplexer41_0_0_multiplexer41 : entity is "multiplexer41";
end task1_multiplexer41_0_0_multiplexer41;

architecture STRUCTURE of task1_multiplexer41_0_0_multiplexer41 is
begin
\o__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => x,
      I1 => w,
      I2 => z,
      I3 => s(1),
      I4 => s(0),
      I5 => y,
      O => o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity task1_multiplexer41_0_0 is
  port (
    w : in STD_LOGIC;
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    z : in STD_LOGIC;
    s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of task1_multiplexer41_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of task1_multiplexer41_0_0 : entity is "task1_multiplexer41_0_0,multiplexer41,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of task1_multiplexer41_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of task1_multiplexer41_0_0 : entity is "multiplexer41,Vivado 2017.4";
end task1_multiplexer41_0_0;

architecture STRUCTURE of task1_multiplexer41_0_0 is
begin
inst: entity work.task1_multiplexer41_0_0_multiplexer41
     port map (
      o => o,
      s(1 downto 0) => s(1 downto 0),
      w => w,
      x => x,
      y => y,
      z => z
    );
end STRUCTURE;
