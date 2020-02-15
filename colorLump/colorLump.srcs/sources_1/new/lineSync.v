`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/12 19:42:42
// Design Name: 
// Module Name: lineSync
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
module lineSync(clk,rst_n,clk_out);
parameter [31:0] divisor = 32'd4;
input clk,rst_n;
output clk_out;
freqDivider divider(clk,rst_n,divisor,clk_out);
endmodule
