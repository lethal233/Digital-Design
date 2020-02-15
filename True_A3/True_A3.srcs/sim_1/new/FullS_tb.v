`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 12:18:43
// Design Name: 
// Module Name: FullS_tb
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


module FullS_tb();
    reg E;
    reg [1:0]QW;
    wire B;
    wire D;
    task1_wrapper u(B,D,E,QW);
    initial
    begin
    {QW,E}=3'b000;
    repeat(7) #100 {QW,E}={QW,E}+1;
    #100 $finish;
    end
endmodule
