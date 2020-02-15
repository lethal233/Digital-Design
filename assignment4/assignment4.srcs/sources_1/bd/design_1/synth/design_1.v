//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Nov 28 17:58:06 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (D,
    En,
    Q,
    Qn);
  input D;
  input En;
  output [0:0]Q;
  output [0:0]Qn;

  wire D_1;
  wire En_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;

  assign D_1 = D;
  assign En_1 = En;
  assign Q[0] = util_vector_logic_1_Res;
  assign Qn[0] = util_vector_logic_3_Res;
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_vector_logic_5_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(util_vector_logic_1_Res),
        .Op2(util_vector_logic_6_Res),
        .Res(util_vector_logic_2_Res));
  design_1_util_vector_logic_3_0 util_vector_logic_3
       (.Op1(util_vector_logic_2_Res),
        .Res(util_vector_logic_3_Res));
  design_1_util_vector_logic_4_0 util_vector_logic_4
       (.Op1(D_1),
        .Op2(En_1),
        .Res(util_vector_logic_4_Res));
  design_1_util_vector_logic_4_1 util_vector_logic_5
       (.Op1(util_vector_logic_4_Res),
        .Res(util_vector_logic_5_Res));
  design_1_util_vector_logic_4_2 util_vector_logic_6
       (.Op1(util_vector_logic_7_Res),
        .Res(util_vector_logic_6_Res));
  design_1_util_vector_logic_4_3 util_vector_logic_7
       (.Op1(En_1),
        .Op2(util_vector_logic_8_Res),
        .Res(util_vector_logic_7_Res));
  design_1_util_vector_logic_7_0 util_vector_logic_8
       (.Op1(D_1),
        .Res(util_vector_logic_8_Res));
endmodule
