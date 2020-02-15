`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/15 16:42:47
// Design Name: 
// Module Name: multiplexer41
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


module multiplexer41(
    input w,
    input x,
    input y,
    input z,
    input [1:0] s,
    output reg o
    );
    always @*
    begin
        case(s)
            2'b00 :o=w;
            2'b01 :o=x;
            2'b10 :o=y;
            2'b11 :o=z;
        endcase
    end
endmodule
