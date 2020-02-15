`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/17 08:48:41
// Design Name: 
// Module Name: task2_tb
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


module task2_tb();
reg clk,rst_n,en;
wire QA,QB,QC;
counter_0_6 u(clk,rst_n,en,QA,QB,QC);

always 
begin
#5 clk = ~clk;
end
initial 
begin
    clk = 1'b0;rst_n = 1'b0;en = 1'b0;
    #3 en = 1'b1;#3 rst_n = 1'b1;
   
end
endmodule
