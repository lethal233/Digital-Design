`timescale 0.1ps / 0.1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/10 20:08:34
// Design Name: 
// Module Name: pixel_tb
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

module pixel_tb();
reg clk,reset,enable;
wire [3:0] red_out,green_out,blue_out;
wire h_Sync,v_Sync;
colorLumpOutput sim(clk,reset,enable,red_out,green_out,blue_out,h_Sync,v_Sync);
initial 
begin
clk = 0;
reset = 0;
enable = 1;
#1 reset =1;
forever #1 clk = ~clk ;
end


endmodule
