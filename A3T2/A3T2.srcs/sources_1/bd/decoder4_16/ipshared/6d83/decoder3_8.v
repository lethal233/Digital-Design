`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/06 17:25:02
// Design Name: 
// Module Name: decoder3_8
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


module decoder3_8#(parameter En_Num = 1)(
    input I0,
    input I1,
    input I2,
    input [En_Num-1:0] EN,
    output reg [7:0] Y
    );
    always @*
    begin 
        if(~EN)
        case ({I2,I1,I0})
            3'b000: Y = 8'b0000_0001;
            3'b001: Y = 8'b0000_0010;
            3'b010: Y = 8'b0000_0100;
            3'b011: Y = 8'b0000_1000;
            3'b100: Y = 8'b0001_0000;
            3'b101: Y = 8'b0010_0000;
            3'b110: Y = 8'b0100_0000;
            3'b111: Y = 8'b1000_0000;
        endcase
        else
            Y=8'b0000_0000;
    end
endmodule
