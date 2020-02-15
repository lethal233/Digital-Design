`timescale 1ns / 1ps
module T_tb();
reg T,clk,rst_n;
wire Q;
wire Qn;

T_FF t(T,clk,rst_n,Q,Qn);
initial 
    begin
        {T,clk} = 2'b00; rst_n = 1'b0;
        #3 rst_n = ~rst_n;
        repeat(3)
            #10 {T,clk} = {T,clk}+1;
        repeat(4)
            #10 clk = ~clk;
        #10 rst_n = ~rst_n;
        #5 $finish;
    end
endmodule
