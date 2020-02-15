`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/12 19:36:15
// Design Name: 
// Module Name: freqDivider
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
module freqDivider(input clk,rst_n,divisor,output reg clk_out);
reg[31:0] cnt;
always@(posedge clk,negedge rst_n)
begin
    if(~rst_n)
    begin
        cnt<=0;
        clk_out<=0;
    end
    else
        if(cnt==((divisor>>1)-1))
        begin
            clk_out<=~clk_out;
            cnt<=0;
        end
        else 
        begin
            cnt<=cnt+1;
        end
end
endmodule
