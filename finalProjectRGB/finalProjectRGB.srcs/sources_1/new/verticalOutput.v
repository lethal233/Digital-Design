`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/12 17:53:39
// Design Name: 
// Module Name: verticalOutput
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
module verticalOutput(v_clk,reset,red_in,green_in,blue_in,red_out,green_out,blue_out,sync_out);
parameter visible_area = 480, whole_line = 525, front_porch = 10, sync_pulse = 2, back_porch = 33;

input v_clk,reset;
input [3:0] red_in,green_in,blue_in;
output reg [3:0] red_out,green_out,blue_out;
output reg sync_out;
reg [11:0] count;

always@(posedge v_clk,negedge reset)
    if(~reset)
        count <= 12'd0;
    else if(count==whole_line-1)
        count <= 12'b0;
    else
        count <= count + 1;

always@ *
if(count<visible_area)
    begin
        red_out = red_in;
        green_out = green_in;
        blue_out = blue_in;
        sync_out = 1'b1;
    end
else if(count<visible_area+front_porch)
    begin
        red_out = 4'b0;
        green_out = 4'b0;
        blue_out = 4'b0;
        sync_out = 1'b1;
    end
else if(count<visible_area+front_porch+sync_pulse)
    begin
        red_out = 4'b0;
        green_out = 4'b0;
        blue_out = 4'b0;
        sync_out = 1'b0;
    end
else 
    begin
        red_out = 4'b0;
        green_out = 4'b0;
        blue_out = 4'b0;
        sync_out = 1'b1;
    end

endmodule
