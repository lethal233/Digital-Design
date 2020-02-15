// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Mon Nov 18 21:58:28 2019
// Host        : Diamond-lori running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top task2_decoder3_8_1_0 -prefix
//               task2_decoder3_8_1_0_ task2_decoder3_8_0_0_sim_netlist.v
// Design      : task2_decoder3_8_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "task2_decoder3_8_0_0,DECO38,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "DECO38,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module task2_decoder3_8_1_0
   (I0,
    I1,
    I2,
    EN,
    Y);
  input I0;
  input I1;
  input I2;
  input [0:0]EN;
  output [7:0]Y;

  wire [0:0]EN;
  wire I0;
  wire I1;
  wire I2;
  wire [7:0]Y;

  LUT4 #(
    .INIT(16'h0001)) 
    \Y[0]_INST_0 
       (.I0(EN),
        .I1(I2),
        .I2(I0),
        .I3(I1),
        .O(Y[0]));
  LUT4 #(
    .INIT(16'h0010)) 
    \Y[1]_INST_0 
       (.I0(EN),
        .I1(I2),
        .I2(I0),
        .I3(I1),
        .O(Y[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \Y[2]_INST_0 
       (.I0(EN),
        .I1(I2),
        .I2(I1),
        .I3(I0),
        .O(Y[2]));
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[3]_INST_0 
       (.I0(EN),
        .I1(I2),
        .I2(I0),
        .I3(I1),
        .O(Y[3]));
  LUT4 #(
    .INIT(16'h0010)) 
    \Y[4]_INST_0 
       (.I0(EN),
        .I1(I0),
        .I2(I2),
        .I3(I1),
        .O(Y[4]));
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[5]_INST_0 
       (.I0(EN),
        .I1(I1),
        .I2(I0),
        .I3(I2),
        .O(Y[5]));
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[6]_INST_0 
       (.I0(EN),
        .I1(I0),
        .I2(I1),
        .I3(I2),
        .O(Y[6]));
  LUT4 #(
    .INIT(16'h2000)) 
    \Y[7]_INST_0 
       (.I0(I2),
        .I1(EN),
        .I2(I0),
        .I3(I1),
        .O(Y[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
