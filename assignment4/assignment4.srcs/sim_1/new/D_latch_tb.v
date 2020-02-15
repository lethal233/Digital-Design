`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/28 17:38:48
// Design Name: 
// Module Name: D_latch_tb
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


module D_latch_tb();
reg En,D;
wire Q,Qn;
D_latch d(En,D,Q,Qn);
initial
begin
    {D,En} = 2'b00;
     repeat(3)
        #10 {D,En} = {D,En}+1;
        #10 $finish;
    end
endmodule
