-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Nov 18 21:58:28 2019
-- Host        : Diamond-lori running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Lori/DigitalDesign/True_A3-2/True_A3-2.srcs/sources_1/bd/task2/ip/task2_decoder3_8_0_0/task2_decoder3_8_0_0_sim_netlist.vhdl
-- Design      : task2_decoder3_8_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity task2_decoder3_8_0_0 is
  port (
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    EN : in STD_LOGIC_VECTOR ( 0 to 0 );
    Y : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of task2_decoder3_8_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of task2_decoder3_8_0_0 : entity is "task2_decoder3_8_0_0,DECO38,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of task2_decoder3_8_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of task2_decoder3_8_0_0 : entity is "DECO38,Vivado 2017.4";
end task2_decoder3_8_0_0;

architecture STRUCTURE of task2_decoder3_8_0_0 is
begin
\Y[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => EN(0),
      I1 => I2,
      I2 => I0,
      I3 => I1,
      O => Y(0)
    );
\Y[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => EN(0),
      I1 => I2,
      I2 => I0,
      I3 => I1,
      O => Y(1)
    );
\Y[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => EN(0),
      I1 => I2,
      I2 => I1,
      I3 => I0,
      O => Y(2)
    );
\Y[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => EN(0),
      I1 => I2,
      I2 => I0,
      I3 => I1,
      O => Y(3)
    );
\Y[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => EN(0),
      I1 => I0,
      I2 => I2,
      I3 => I1,
      O => Y(4)
    );
\Y[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => EN(0),
      I1 => I1,
      I2 => I0,
      I3 => I2,
      O => Y(5)
    );
\Y[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => EN(0),
      I1 => I0,
      I2 => I1,
      I3 => I2,
      O => Y(6)
    );
\Y[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => I2,
      I1 => EN(0),
      I2 => I0,
      I3 => I1,
      O => Y(7)
    );
end STRUCTURE;
