//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sun Nov 17 12:14:38 2019
//Host        : Diamond-lori running 64-bit major release  (build 9200)
//Command     : generate_target task1.bd
//Design      : task1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "task1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=task1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "task1.hwdef" *) 
module task1
   (B,
    D,
    E,
    QW);
  output B;
  output D;
  input E;
  input [1:0]QW;

  wire E_1;
  wire MUX41_1_o;
  wire MUX41_2_o;
  wire [0:0]not_gate_2_Res;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [1:0]xy_1;

  assign B = MUX41_2_o;
  assign D = MUX41_1_o;
  assign E_1 = E;
  assign xy_1 = QW[1:0];
  task1_multiplexer41_1_0 MUX41_1
       (.o(MUX41_1_o),
        .s(xy_1),
        .w(E_1),
        .x(util_vector_logic_0_Res),
        .y(not_gate_2_Res),
        .z(E_1));
  task1_multiplexer41_0_0 MUX41_2
       (.o(MUX41_2_o),
        .s(xy_1),
        .w(E_1),
        .x(xlconstant_0_dout),
        .y(xlconstant_1_dout),
        .z(E_1));
  task1_xlconstant_1_0 const0
       (.dout(xlconstant_1_dout));
  task1_xlconstant_0_0 const1
       (.dout(xlconstant_0_dout));
  task1_util_vector_logic_0_0 not_gate_1
       (.Op1(E_1),
        .Res(util_vector_logic_0_Res));
  task1_util_vector_logic_0_1 not_gate_2
       (.Op1(E_1),
        .Res(not_gate_2_Res));
endmodule
