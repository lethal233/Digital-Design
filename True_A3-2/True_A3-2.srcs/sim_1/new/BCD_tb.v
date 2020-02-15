`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 21:38:37
// Design Name: 
// Module Name: BCD_tb
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


module BCD_tb();
   reg A;
   reg B;
   reg C;
   reg D;
   wire a;
   wire b;
   wire c;
   wire d;
   wire e;
   wire f;
   wire g;
   wire [7:0] seg_en;
   BCD_to_seven sim(A,B,C,D,a,b,c,d,e,f,g,seg_en);
   
   
   initial
        begin
            {D,C,B,A} = 4'b0000;
            repeat(15) #10 {D,C,B,A} = {D,C,B,A}+1;
            #10 $finish;
        end
endmodule
