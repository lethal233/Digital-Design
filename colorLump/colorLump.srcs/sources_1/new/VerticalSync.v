`timescale 1ns / 1ps
module VerticalSync(clk,rst_n,clk_out);
parameter [31:0] divisor = 32'd3200;
input clk,rst_n;
output clk_out;
freqDivider divider(clk,rst_n,divisor,clk_out);
endmodule
