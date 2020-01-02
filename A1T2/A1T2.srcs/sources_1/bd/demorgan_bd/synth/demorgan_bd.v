//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Oct  7 18:02:12 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target demorgan_bd.bd
//Design      : demorgan_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "demorgan_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=demorgan_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "demorgan_bd.hwdef" *) 
module demorgan_bd
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

  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;
  wire x_2;
  wire y_2;

  assign out1[0] = util_vector_logic_1_Res;
  assign out2[0] = util_vector_logic_4_Res;
  assign out3[0] = util_vector_logic_6_Res;
  assign out4[0] = util_vector_logic_9_Res;
  assign x_2 = x;
  assign y_2 = y;
  demorgan_bd_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(x_2),
        .Op2(y_2),
        .Res(util_vector_logic_0_Res));
  demorgan_bd_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_1_Res));
  demorgan_bd_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(x_2),
        .Res(util_vector_logic_2_Res));
  demorgan_bd_util_vector_logic_3_0 util_vector_logic_3
       (.Op1(y_2),
        .Res(util_vector_logic_3_Res));
  demorgan_bd_util_vector_logic_4_0 util_vector_logic_4
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_4_Res));
  demorgan_bd_util_vector_logic_5_1 util_vector_logic_5
       (.Op1(x_2),
        .Op2(y_2),
        .Res(util_vector_logic_5_Res));
  demorgan_bd_util_vector_logic_6_0 util_vector_logic_6
       (.Op1(util_vector_logic_5_Res),
        .Res(util_vector_logic_6_Res));
  demorgan_bd_util_vector_logic_7_0 util_vector_logic_7
       (.Op1(x_2),
        .Res(util_vector_logic_7_Res));
  demorgan_bd_util_vector_logic_8_0 util_vector_logic_8
       (.Op1(y_2),
        .Res(util_vector_logic_8_Res));
  demorgan_bd_util_vector_logic_9_0 util_vector_logic_9
       (.Op1(util_vector_logic_7_Res),
        .Op2(util_vector_logic_8_Res),
        .Res(util_vector_logic_9_Res));
endmodule
