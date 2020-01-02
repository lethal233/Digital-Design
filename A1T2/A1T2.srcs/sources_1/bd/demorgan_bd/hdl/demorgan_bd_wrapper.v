//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Oct  7 18:02:12 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target demorgan_bd_wrapper.bd
//Design      : demorgan_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module demorgan_bd_wrapper
   (out1,
    out2,
    out3,
    out4,
    x,
    y);
  output [0:0]out1;
  output [0:0]out2;
  output [0:0]out3;
  output [0:0]out4;
  input x;
  input y;

  wire [0:0]out1;
  wire [0:0]out2;
  wire [0:0]out3;
  wire [0:0]out4;
  wire x;
  wire y;

  demorgan_bd demorgan_bd_i
       (.out1(out1),
        .out2(out2),
        .out3(out3),
        .out4(out4),
        .x(x),
        .y(y));
endmodule
