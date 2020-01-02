`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/26 23:47:40
// Design Name: 
// Module Name: Lab2_Addition
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


module Lab2_Addition(addend,augend,addend_led,augend_led,sum_led);
input [1:0]addend;
input augend;
output [1:0]addend_led;
output augend_led;
output [2:0] sum_led;

assign addend_led = addend;
assign augend_led = augend;
assign sum_led = addend_led + augend_led;

endmodule
