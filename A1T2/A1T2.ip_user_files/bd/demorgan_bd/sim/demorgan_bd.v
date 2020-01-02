//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat Sep 28 15:01:23 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target demorgan_bd.bd
//Design      : demorgan_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "demorgan_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=demorgan_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "demorgan_bd.hwdef" *) 
module demorgan_bd
   (in1,
    in2,
    out1,
    out2,
    out3,
    out4);
  input in1;
  input in2;
  output out1;
  output out2;
  output out3;
  output out4;

  wire demorgan_df_0_q1;
  wire demorgan_df_0_q2;
  wire demorgan_df_0_q3;
  wire demorgan_df_0_q4;
  wire x_1;
  wire y_1;

  assign out1 = demorgan_df_0_q1;
  assign out2 = demorgan_df_0_q2;
  assign out3 = demorgan_df_0_q3;
  assign out4 = demorgan_df_0_q4;
  assign x_1 = in1;
  assign y_1 = in2;
  demorgan_bd_demorgan_df_0_0 demorgan_df_0
       (.q1(demorgan_df_0_q1),
        .q2(demorgan_df_0_q2),
        .q3(demorgan_df_0_q3),
        .q4(demorgan_df_0_q4),
        .x(x_1),
        .y(y_1));
endmodule
