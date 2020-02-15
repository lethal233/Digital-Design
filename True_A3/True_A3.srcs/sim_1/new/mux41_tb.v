`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 11:14:46
// Design Name: 
// Module Name: mux41_tb
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


module mux41_tb();
    reg sw,sx,sy,sz;
    reg [1:0] ss;
    wire so;
    multiplexer41 u(sw,sx,sy,sz,ss,so);
    initial 
    begin
        {ss,sw,sx,sy,sz} = 6'b000000;
        repeat (63) #10 {ss,sw,sx,sy,sz} = {ss,sw,sx,sy,sz}+1;
        #10 $finish;
    end
endmodule
