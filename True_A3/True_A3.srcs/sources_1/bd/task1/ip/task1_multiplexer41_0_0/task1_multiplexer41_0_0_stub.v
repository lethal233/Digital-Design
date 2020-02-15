// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Nov 17 11:41:07 2019
// Host        : Diamond-lori running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Lori/DigitalDesign/True_A3/True_A3.srcs/sources_1/bd/task1/ip/task1_multiplexer41_0_0/task1_multiplexer41_0_0_stub.v
// Design      : task1_multiplexer41_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "multiplexer41,Vivado 2017.4" *)
module task1_multiplexer41_0_0(w, x, y, z, s, o)
/* synthesis syn_black_box black_box_pad_pin="w,x,y,z,s[1:0],o" */;
  input w;
  input x;
  input y;
  input z;
  input [1:0]s;
  output o;
endmodule
