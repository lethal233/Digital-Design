//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Nov 18 21:54:33 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target task2_wrapper.bd
//Design      : task2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module task2_wrapper
   (O,
    w,
    x,
    y,
    z);
  output [15:0]O;
  input w;
  input x;
  input y;
  input z;

  wire [15:0]O;
  wire w;
  wire x;
  wire y;
  wire z;

  task2 task2_i
       (.O(O),
        .w(w),
        .x(x),
        .y(y),
        .z(z));
endmodule
