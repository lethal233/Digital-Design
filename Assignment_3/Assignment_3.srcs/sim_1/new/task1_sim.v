`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/02 16:24:36
// Design Name: 
// Module Name: task1_sim
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


module task1_sim();
reg [3:0] wards;
wire [7:0] seg_out;
wire [7:0] seg_en;
task1 tsim(wards,seg_out,seg_en);

initial
    begin
        wards = 4'b0000;
    while(wards<4'b1111)
        begin
            #10 wards = wards+1;
        end
    #10 $finish;
    end
endmodule
