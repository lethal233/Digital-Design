`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 16:32:46
// Design Name: 
// Module Name: sp_converter
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


module sp_converter(clk,DSR,DSL,MR_n,S,set,Q);
input clk,MR_n;
input DSR,DSL;
input [1:0]S;
input [7:0]set;
output [7:0]Q;
wire DSR;


shift_register_74194 s1(clk,MR_n,Q[4],DSL,S,set[3],set[2],set[1],set[0],Q[3],Q[2],Q[1],Q[0]);
shift_register_74194 s2(clk,MR_n,DSR,Q[3],S,set[7],set[6],set[5],set[4],Q[7],Q[6],Q[5],Q[4]);
endmodule
