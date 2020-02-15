`timescale 1ns / 1ps

module DECO382#(parameter En_Num = 1)(
    input I0,
    input I1,
    input I2,
    input [En_Num-1:0] EN,
    output reg Y8,
    output reg Y9,
    output reg Y10,
    output reg Y11,
    output reg Y12,
    output reg Y13,
    output reg Y14,
    output reg Y15
    );
    always @*
    begin 
        if(~EN)
        case ({I2,I1,I0})
            3'b000: {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b0000_0001;
            3'b001: {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b0000_0010;
            3'b010: {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b0000_0100;
            3'b011: {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b0000_1000;
            3'b100: {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b0001_0000;
            3'b101: {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b0010_0000;
            3'b110: {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b0100_0000;
            3'b111: {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b1000_0000;
        endcase
        else
           {Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8} = 8'b0000_0000;
    end
endmodule
