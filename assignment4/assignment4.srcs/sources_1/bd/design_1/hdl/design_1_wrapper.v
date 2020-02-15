//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Nov 28 17:58:06 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (D,
    En,
    Q,
    Qn);
  input D;
  input En;
  output [0:0]Q;
  output [0:0]Qn;

  wire D;
  wire En;
  wire [0:0]Q;
  wire [0:0]Qn;

  design_1 design_1_i
       (.D(D),
        .En(En),
        .Q(Q),
        .Qn(Qn));
endmodule
