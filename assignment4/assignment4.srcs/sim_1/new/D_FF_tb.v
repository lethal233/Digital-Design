`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/28 20:04:37
// Design Name: 
// Module Name: D_FF_tb
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


module D_FF_tb();
reg D;
reg clk;
wire Q;
wire Qn;

D_FF u(D,clk,Q,Qn);
initial
begin 
{D,clk} = 2'b00;
repeat(3)
#10 {D,clk} = {D,clk}+1;
#30 $finish;
end 
endmodule
