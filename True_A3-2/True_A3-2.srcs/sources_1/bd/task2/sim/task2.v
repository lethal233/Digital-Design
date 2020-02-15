//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Nov 18 21:54:33 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target task2.bd
//Design      : task2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "task2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=task2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "task2.hwdef" *) 
module task2
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

  wire [7:0]decoder3_8_0_Y;
  wire [7:0]decoder3_8_1_Y;
  wire [0:0]util_vector_logic_0_Res;
  wire w_1;
  wire x_1;
  wire [15:0]xlconcat_0_dout;
  wire y_1;
  wire z_1;

  assign O[15:0] = xlconcat_0_dout;
  assign w_1 = w;
  assign x_1 = x;
  assign y_1 = y;
  assign z_1 = z;
  task2_decoder3_8_0_0 decoder3_8_0
       (.EN(util_vector_logic_0_Res),
        .I0(z_1),
        .I1(y_1),
        .I2(x_1),
        .Y(decoder3_8_0_Y));
  task2_decoder3_8_1_0 decoder3_8_1
       (.EN(w_1),
        .I0(z_1),
        .I1(y_1),
        .I2(x_1),
        .Y(decoder3_8_1_Y));
  task2_util_vector_logic_0_1 util_vector_logic_0
       (.Op1(w_1),
        .Res(util_vector_logic_0_Res));
  task2_xlconcat_0_0 xlconcat_0
       (.In0(decoder3_8_1_Y),
        .In1(decoder3_8_0_Y),
        .dout(xlconcat_0_dout));
endmodule
