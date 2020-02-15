//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Nov 18 01:45:44 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target decoder4_16.bd
//Design      : decoder4_16
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "decoder4_16,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=decoder4_16,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "decoder4_16.hwdef" *) 
module decoder4_16
   (EN,
    I0,
    I1,
    I2,
    I3,
    Y);
  input EN;
  input I0;
  input I1;
  input I2;
  input I3;
  output [15:0]Y;

  wire EN_1;
  wire I0_1;
  wire I1_1;
  wire I2_1;
  wire I3_1;
  wire [7:0]decoder3_8_0_Y;
  wire [7:0]decoder3_8_1_Y;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [15:0]xlconcat_0_dout;

  assign EN_1 = EN;
  assign I0_1 = I0;
  assign I1_1 = I1;
  assign I2_1 = I2;
  assign I3_1 = I3;
  assign Y[15:0] = xlconcat_0_dout;
  decoder4_16_decoder3_8_0_0 decoder3_8_0
       (.EN(util_vector_logic_2_Res),
        .I0(I0_1),
        .I1(I1_1),
        .I2(I2_1),
        .Y(decoder3_8_0_Y));
  decoder4_16_decoder3_8_1_0 decoder3_8_1
       (.EN(util_vector_logic_1_Res),
        .I0(I0_1),
        .I1(I1_1),
        .I2(I2_1),
        .Y(decoder3_8_1_Y));
  decoder4_16_util_vector_logic_0_1 util_vector_logic_0
       (.Op1(I3_1),
        .Res(util_vector_logic_0_Res));
  decoder4_16_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(EN_1),
        .Res(util_vector_logic_1_Res));
  decoder4_16_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(I3_1),
        .Op2(EN_1),
        .Res(util_vector_logic_2_Res));
  decoder4_16_xlconcat_0_0 xlconcat_0
       (.In0(decoder3_8_0_Y),
        .In1(decoder3_8_1_Y),
        .dout(xlconcat_0_dout));
endmodule
