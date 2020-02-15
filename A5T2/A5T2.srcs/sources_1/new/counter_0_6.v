`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 18:30:16
// Design Name: 
// Module Name: counter_0_6
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_0_6(clk,rst_n,en,QA,QB,QC);
input clk,rst_n,en;
output QA,QB,QC;
wire JA,JB,JC,KA,KB,KC;
assign JA = (QB & QC);
assign KA = QB;
assign JB = QC;
assign KB = (QA | QC);
assign JC = (~QA | ~QB);
assign KC = 1'b1;

J_K_Flip_Flop u1(clk,JA & en,KA & en,rst_n,QA);
J_K_Flip_Flop u2(clk,JB & en,KB & en,rst_n,QB);
J_K_Flip_Flop u3(clk,JC & en,KC & en,rst_n,QC);

endmodule
