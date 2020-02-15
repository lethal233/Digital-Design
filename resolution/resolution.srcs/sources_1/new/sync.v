`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/21 21:29:31
// Design Name: 
// Module Name: sync
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


module sync(sync_clk,rst_n,S,
            /*h_visible,h_front,h_sync_pulse,h_back,h_total,
            v_visible,v_front,v_sync_pulse,v_back,v_total,*/
            frame,h_sync,v_sync,h_cnt,v_cnt,f_cnt,visible);

input               sync_clk;//传进来的时钟信号
input               rst_n;
input [1:0]         S;
input [7:0]         frame;
wire [15:0]         h_visible;
wire [15:0]         h_front;
wire [15:0]         h_sync_pulse;
wire [15:0]         h_back;
wire [15:0]         h_total;
wire [15:0]         v_visible;
wire [15:0]         v_sync_pulse;
wire [15:0]         v_front;
wire [15:0]         v_back;
wire [15:0]         v_total;
output              h_sync,v_sync;
output reg[10:0]    h_cnt;
output reg[10:0]    v_cnt;
output reg[7:0]     f_cnt;
output wire         visible;
/*wire                sync_clk;
wire                clk_9;
wire                clk_100;*/


/*resolution r(rst_n,S,clk,sync_clk,clk_9,clk_100,
                h_visible,h_front,h_sync_pulse,h_back,h_total,
                v_visible,v_front,v_sync_pulse,v_back,v_total);*/

always @ (posedge sync_clk,negedge rst_n)
begin
    if(~rst_n)
        h_cnt       <=  11'd0;
    else
    begin
        if( h_cnt    <   h_total - 1'd1)
        
            h_cnt   <=  h_cnt + 1'd1;
        else
            h_cnt   <=  11'd0;
    end
end
assign h_sync = (h_cnt < h_sync_pulse) ? 1'b0 : 1'b1;

always@(posedge sync_clk or negedge rst_n)
begin
    if(~rst_n)
        v_cnt           <= 11'd0;
    else
    begin
        if(v_cnt        ==  v_total-1'd1 
        && h_cnt        ==  h_total-1'd1)
           
            v_cnt       <=  11'd0;
        else
            if(h_cnt    == h_total  - 1'd1)
            
                v_cnt   <= v_cnt    + 1'd1;
            else
                v_cnt   <= v_cnt;
    end
end

always@(posedge sync_clk, negedge rst_n)
begin
    if(~rst_n)
        f_cnt                       <= 8'd0;
    else
        begin
            if(f_cnt                == frame   - 1'd1 
                && v_cnt            == v_total - 1'd1 
                && h_cnt            == h_total - 1'd1)
                      
                f_cnt<=8'd0;
            else
                if(    v_cnt        == v_total - 1'd1 
                    && h_cnt        == h_total - 1'd1)
                    
                    f_cnt           <= f_cnt + 1'd1;
                else
                    f_cnt           <= f_cnt;
        end
end

assign              v_sync          =  (v_cnt < v_sync_pulse) ? 1'b0 : 1'b1;
assign              visible         =  (h_cnt >= (h_sync_pulse + h_back) 
                 && h_cnt           <  (h_sync_pulse + h_back + h_visible) 
                 && v_cnt           >= (v_sync_pulse + v_back) 
                 && v_cnt           <  (v_sync_pulse + v_back + v_visible));
endmodule
