`timescale 1ns / 1ps
module T_FF(T,clk,rst_n,Q,Qn);
input T;
input clk;
input rst_n;
output Q;
output Qn;
wire rnand1,rnand2,rnand3,rnand4,rnand5,rnand6,T_1,clk_1,rxor1,rand1;
assign T_1 = T;
assign clk_1 = clk;
xor xor1(rxor1,T_1,rand1);
nand nand1(rnand1,rnand2,rnand4);
nand nand2(rnand2,rnand1,clk_1);
nand nand3(rnand3,clk_1,rnand2,rnand4);
nand nand4(rnand4,rxor1,rnand3);
nand nand5(rnand5,rnand2,rnand6);
nand nand6(rnand6,rnand3,rand1);
and and1(rand1,rst_n,rnand5);
assign Q = rand1;
assign Qn = rnand6;
endmodule
