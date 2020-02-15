`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/28 19:14:26
// Design Name: 
// Module Name: D_FF
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
module D_FF(D,clk,Q,Qn);
input D;
input clk;
output Q;
output Qn;

wire rnand1,rnand2,rnand3,rnand4,rnand5,rnand6,D_1,clk_1;
assign D_1 = D;
assign clk_1 = clk;
assign Q = rnand5;
assign Qn = rnand6;

nand nand1(rnand1,rnand2,rnand4);
nand nand2(rnand2,rnand1,clk_1);
nand nand3(rnand3,clk_1,rnand2,rnand4);
nand nand4(rnand4,D_1,rnand3);
nand nand5(rnand5,rnand2,rnand6);
nand nand6(rnand6,rnand3,rnand5);
endmodule
