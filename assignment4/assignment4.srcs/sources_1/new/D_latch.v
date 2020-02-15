`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/28 17:21:23
// Design Name: 
// Module Name: D_latch
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
module D_latch(En,D,Q,Qn);
input En,D;
output Q;
output Qn;
wire D_1,Dr,En_1,rnand1,rnand2,rnand3,rnand4;

assign D_1 = D;
assign En_1 = En;
assign Q = rnand3;
assign Qn = rnand4;


not not1(Dr,D_1);
nand nand1(rnand1,D_1,En_1);
nand nand2(rnand2,Dr,En_1);
nand nand3(rnand3,rnand1,rnand4);
nand nand4(rnand4,rnand2,rnand3);
endmodule
