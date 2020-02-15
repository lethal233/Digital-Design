`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/18 21:30:24
// Design Name: 
// Module Name: BCD_to_seven
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


module BCD_to_seven(
    input A,
    input B,
    input C,
    input D,
    output reg a,
    output reg b,
    output reg c,
    output reg d,
    output reg e,
    output reg f,
    output reg g,
    output [7:0] seg_en
    );
    wire I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;
    assign seg_en = 8'h00;
    task2_wrapper u ({I15,I14,I13,I12,I11,I10,I9,I8,I7,I6,I5,I4,I3,I2,I1,I0},D,C,B,A);
    
    always @*
        begin
            a = ~(I0|I2|I3|I5|I6|I7|I8|I9);
            b = ~(I0|I1|I2|I3|I4|I7|I8|I9);
            c = ~(I0|I1|I3|I4|I5|I6|I7|I8|I9);
            d = ~(I0|I2|I3|I5|I6|I8|I9);
            e = ~(I0|I2|I6|I8);
            f = ~(I0|I4|I5|I6|I8|I9);
            g = ~(I2|I3|I4|I5|I6|I8|I9);
        end     
endmodule
