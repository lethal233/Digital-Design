`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/03 23:09:42
// Design Name: 
// Module Name: task2_tb
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


module task2_tb();
    reg sI0, sI1, sI2, sI3;
    wire [15:0] sY;
    task2 u(sI0,sI1,sI2,sI3,sY);
    initial
    begin
        {sI3,sI2,sI1,sI0} = 0;
        repeat(15) #10 {sI3,sI2,sI1,sI0} = {sI3,sI2,sI1,sI0}+1;
        #10 $finish;
     end
endmodule
