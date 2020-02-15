`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/06 17:59:38
// Design Name: 
// Module Name: decoder4_16_bd_tb
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


module decoder4_16_bd_tb();
    reg sI0,sI1,sI2,sI3,EN;
    wire [15:0] sY;
    
    decoder4_16_wrapper u(EN,sI0,sI1,sI2,sI3,sY);
    initial
    begin
        EN = 1;
        {sI3,sI2,sI1,sI0} = 0;
        repeat(15) #10 {sI3,sI2,sI1,sI0} = {sI3,sI2,sI1,sI0}+1;
        EN = 0;
        repeat(15) #10 {sI3,sI2,sI1,sI0} = {sI3,sI2,sI1,sI0}-1;
        #10 $finish;
    end
endmodule
