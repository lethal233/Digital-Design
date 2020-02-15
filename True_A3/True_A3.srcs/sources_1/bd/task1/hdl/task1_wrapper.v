//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sun Nov 17 12:14:38 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target task1_wrapper.bd
//Design      : task1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module task1_wrapper
   (B,
    D,
    E,
    QW);
  output B;
  output D;
  input E;
  input [1:0]QW;

  wire B;
  wire D;
  wire E;
  wire [1:0]QW;

  task1 task1_i
       (.B(B),
        .D(D),
        .E(E),
        .QW(QW));
endmodule
