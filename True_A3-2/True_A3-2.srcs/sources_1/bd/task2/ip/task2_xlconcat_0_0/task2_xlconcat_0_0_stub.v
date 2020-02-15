// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Nov 18 21:59:20 2019
// Host        : Diamond-lori running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Lori/DigitalDesign/True_A3-2/True_A3-2.srcs/sources_1/bd/task2/ip/task2_xlconcat_0_0/task2_xlconcat_0_0_stub.v
// Design      : task2_xlconcat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2017.4" *)
module task2_xlconcat_0_0(In0, In1, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[7:0],In1[7:0],dout[15:0]" */;
  input [7:0]In0;
  input [7:0]In1;
  output [15:0]dout;
endmodule
