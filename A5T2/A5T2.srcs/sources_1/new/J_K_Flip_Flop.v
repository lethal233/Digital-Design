`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 17:08:05
// Design Name: 
// Module Name: J_K_Flip_Flop
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


module J_K_Flip_Flop(
    input clk,J,K,rst_n,
    output reg Q
    );
    always @(posedge clk)
    begin
    if(~rst_n)
        Q<=1'b0;
    else
        case({J,K})
            2'b00: Q <= Q;
            2'b01: Q <= 1'b0;
            2'b10: Q <= 1'b1;
            2'b11: Q <= ~Q;
            default: Q <= Q;
        endcase
     end 
endmodule
