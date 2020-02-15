`timescale 1ns / 1ps

module sync(sync_clk,rst_n,h_sync,v_sync,h_cnt,v_cnt,visible);
parameter h_visible = 'd640;
parameter h_front = 'd16;
parameter h_sync_pulse = 'd96; 
parameter h_back = 'd48;
parameter h_total = 'd800;

parameter v_visible = 'd480; 
parameter v_front = 'd10;
parameter v_sync_pulse = 'd2;
parameter v_back = 'd33;
parameter v_total = 'd525;

input sync_clk,rst_n;
output h_sync,v_sync;
output reg[17:0] h_cnt;
output reg[17:0] v_cnt;
output wire visible;
always@(posedge sync_clk,negedge rst_n)
    begin
        if(~rst_n)
            h_cnt<=18'd0;
        else
        begin
            if(h_cnt<h_total-1'd1)
                h_cnt<=h_cnt+1'd1;
            else
                h_cnt<=18'd0;
        end
    end
assign h_sync = (h_cnt<h_sync_pulse)?1'b0:1'b1;
always@(posedge sync_clk,negedge rst_n)
    begin
        if(~rst_n)
            v_cnt<=18'd0;
        else
        begin
            if(v_cnt==v_total-1'd1&&h_cnt==h_total-1'd1)
                v_cnt<=18'd0;
            else
                if(h_cnt==h_total-1'd1)
                    v_cnt<=v_cnt+1'd1;
                else
                    ;
        end
    end
assign v_sync = (v_cnt<v_sync_pulse)?1'b0:1'b1;
assign visible = (h_cnt >= (h_sync_pulse+h_back) && h_cnt < (h_sync_pulse + h_back + h_visible) && v_cnt >= (v_sync_pulse + v_back) && v_cnt < (v_sync_pulse + v_back + v_visible));
endmodule
