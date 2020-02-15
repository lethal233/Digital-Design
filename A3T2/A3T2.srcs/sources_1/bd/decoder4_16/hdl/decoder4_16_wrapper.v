//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Nov 18 01:45:44 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target decoder4_16_wrapper.bd
//Design      : decoder4_16_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decoder4_16_wrapper
   (EN,
    I0,
    I1,
    I2,
    I3,
    Y);
  input EN;
  input I0;
  input I1;
  input I2;
  input I3;
  output [15:0]Y;

  wire EN;
  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire [15:0]Y;

  decoder4_16 decoder4_16_i
       (.EN(EN),
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .Y(Y));
endmodule
