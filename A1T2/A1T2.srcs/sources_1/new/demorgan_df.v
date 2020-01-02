`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/28 10:23:17
// Design Name: 
// Module Name: demorgan_df
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


module demorgan_df(
                    input x,
                    input y,
                    output q1,
                    output q2,
                    output q3,
                    output q4
                    );
    assign q1 = ~(x | y);
    assign q2 = (~x) & (~y);
    assign q3 = ~(x & y);
    assign q4 = (~x) | (~y);
endmodule
