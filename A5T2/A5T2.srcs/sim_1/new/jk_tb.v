`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/17 08:55:02
// Design Name: 
// Module Name: jk_tb
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


module jk_tb();
reg clk,rst_n,J,K;
wire Q;
J_K_Flip_Flop u(clk,J,K,rst_n,Q);
always 
begin 
#10 clk = ~clk;
end

initial 
begin
clk = 1'b0;
rst_n = 1'b0;
{J,K} = 2'b00;
#3 rst_n = 1'b1;
repeat (5)
    begin
    repeat (3)
        #5 {J,K} = {J,K}+1;
    repeat (3)
        #5 {J,K} = {J,K}-1;
    end
#5 $finish;
end 
endmodule
