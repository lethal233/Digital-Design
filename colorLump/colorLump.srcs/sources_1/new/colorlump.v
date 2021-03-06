`timescale 1ns / 1ps


module colorlump(clk,rst_n,h_sync,v_sync,r_vga,g_vga,b_vga);
parameter h_visible = 10'd640;
parameter h_front = 10'd16;
parameter h_sync_pulse = 10'd96; 
parameter h_back = 10'd48;
parameter h_total = 10'd800;

parameter v_visible = 10'd480; 
parameter v_front = 10'd10;
parameter v_sync_pulse = 10'd2;
parameter v_back = 10'd33;
parameter v_total = 10'd525;

input clk,rst_n;
output h_sync,v_sync;
wire vga_clk;
clock_div u(clk,rst_n,vga_clk);
output reg[3:0] r_vga;
output reg[3:0] g_vga;
output reg[3:0] b_vga;
reg[9:0] h_cnt;
reg[9:0] v_cnt;
always@(posedge vga_clk,negedge rst_n)
    begin
        if(~rst_n)
            h_cnt<=10'd0;
        else
        begin
            if(h_cnt<h_total-10'd1)
                h_cnt<=h_cnt+1'd1;
            else
                h_cnt<=10'd0;
        end
    end
assign h_sync = (h_cnt<h_sync_pulse)?1'b0:1'b1;
always@(posedge vga_clk,negedge rst_n)
    begin
        if(~rst_n)
            v_cnt<=10'd0;
        else
        begin
            if(v_cnt==v_total-1'd1&&h_cnt==h_total-1'd1)
                v_cnt<=10'd0;
            else
                if(h_cnt==h_total-1'd1)
                    v_cnt<=v_cnt+1'd1;
                else
                    ;
        end
    end
assign v_sync = (v_cnt<v_sync_pulse)?1'b0:1'b1;
reg vga_en;
always@(*)
begin
    vga_en = (h_cnt >= (h_sync_pulse+h_back) && h_cnt < (h_sync_pulse + h_back + h_visible) && v_cnt >= (v_sync_pulse + v_back) && v_cnt < (v_sync_pulse + v_back + v_visible));
end
//reg[11:0] rgb_vga;
//assign {r_vga,g_vga,b_vga} = rgb_vga;
always @(*)
begin 
    if(vga_en)
        begin
            if(h_cnt<(h_sync_pulse+h_back+10'd80))
            begin
                r_vga=4'b0000;
                g_vga=4'b0000;
                b_vga=4'b0000;
            end
            else if(h_cnt<(h_sync_pulse+h_back+10'd160))
            begin
                r_vga=4'b1111;
                g_vga=4'b1111;
                b_vga=4'b1111;
            end
            else if(h_cnt<(h_sync_pulse+h_back+10'd240))
            begin
                r_vga=4'b1111;
                g_vga=4'b0000;
                b_vga=4'b0000;
            end
            else if(h_cnt<(h_sync_pulse+h_back+10'd320))
            begin
                r_vga=4'b0000;
                g_vga=4'b1111;
                b_vga=4'b0000;
            end
            else if(h_cnt<(h_sync_pulse+h_back+10'd400))
            begin
                r_vga=4'b0000;
                g_vga=4'b0000;
                b_vga=4'b1111;
            end
            else if(h_cnt<(h_sync_pulse+h_back+10'd480))
            begin
                r_vga=4'b0000;
                g_vga=4'b1111;
                b_vga=4'b1111;
            end
            else if(h_cnt<(h_sync_pulse+h_back+10'd560))
            begin
                r_vga=4'b1111;
                g_vga=4'b0000;
                b_vga=4'b1111;
            end
            else 
            begin
                r_vga=4'b1111;
                g_vga=4'b1111;
                b_vga=4'b0000;
            end
        end
    else
    begin
        r_vga=4'b0000;
        g_vga=4'b0000;
        b_vga=4'b0000;
    end
end
endmodule
