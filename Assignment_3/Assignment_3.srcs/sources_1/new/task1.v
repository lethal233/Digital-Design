`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/02 16:13:19
// Design Name: 
// Module Name: task1
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
module task1(
           input [3:0] wards,
           output reg [7:0] seg_out,
           output [7:0] seg_en
            );
       assign seg_en = 8'h00;
       always @* 
       begin
            casex (wards)
                       4'b0001: seg_out = 8'b0111_1001;
                       4'b001x: seg_out = 8'b0010_0100;
                       4'b01xx: seg_out = 8'b0011_0000;
                       4'b1xxx: seg_out = 8'b0001_1001;
                       default: seg_out = 8'b1111_1111;
                        
            endcase
        end
endmodule
