`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 16:27:47
// Design Name: 
// Module Name: shift_register_74194
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
module shift_register_74194(
    input clk,MR_n,DSR,DSL,
    input [1:0] S,
    input D3,D2,D1,D0,
    output reg Q3,Q2,Q1,Q0
    );
    always @(posedge clk, negedge MR_n)
        if(!MR_n)
            {Q3,Q2,Q1,Q0} <= 4'b0000;
        else
            case(S)
            2'b00: {Q3,Q2,Q1,Q0} <= {Q3,Q2,Q1,Q0};
            2'b01: {Q3,Q2,Q1,Q0} <= {DSR,Q3,Q2,Q1};
            2'b10: {Q3,Q2,Q1,Q0} <= {Q2,Q1,Q0,DSL};
            2'b11: {Q3,Q2,Q1,Q0} <= {D3,D2,D1,D0};
            endcase
endmodule