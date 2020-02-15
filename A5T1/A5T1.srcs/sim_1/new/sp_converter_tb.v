`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/17 18:08:07
// Design Name: 
// Module Name: sp_converter_tb
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


module sp_converter_tb();
reg clk,MR_n;
reg DSR,DSL;
reg[1:0]S;
reg[7:0] set;
wire [7:0]Q;
sp_converter u(clk,DSR,DSL,MR_n,S,set,Q);
always
begin
#5 clk = ~clk;
end

initial
begin
clk = 1'b0;MR_n = 1'b0;DSL=1'b0;S=2'b10;set=8'b0;DSR=1'b0;
#3 MR_n = 1'b1;
#2 DSL = ~DSL;
repeat(8)
    #10 DSL = ~DSL;     
end
endmodule
