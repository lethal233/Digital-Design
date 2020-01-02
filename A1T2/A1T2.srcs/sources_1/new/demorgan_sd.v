`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/28 11:06:47
// Design Name: 
// Module Name: demorgan_sd
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


module demorgan_sd(x,y,q1,q2,q3,q4);
input x,y;
output q1,q2,q3,q4;
wire o_xory,o_xandy,o_notx,o_noty;

or or1(o_xory,x,y);
and and1(o_xandy,x,y);
not not1(o_notx,x);
not not2(o_noty,y);

not not3(q1,o_xory);
and and2(q2,o_notx,o_noty);
not not4(q3,o_xandy);
or or2(q4,o_notx,o_noty);

endmodule
