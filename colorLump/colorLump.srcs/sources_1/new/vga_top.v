module top_vga(clk,rst_n,
	h_sync,v_sync,
	r_vga,g_vga,b_vga
    );
input clk;
input rst_n;
output h_sync;
output v_sync;
output [3:0] r_vga,g_vga,b_vga;
 
 
wire [9:0] w_x_pixel;
wire [9:0] w_y_pixel;
wire w_clk;
wire [11:0] pixel_data;
 
//lineSync A(clk,rst_n,w_clk);
//colorlump B(w_clk,rst_n,h_sync,v_sync,r_vga,g_vga,b_vga,pixel_data,w_x_pixel,w_y_pixel);
//vga_display C(w_clk,rst_n,w_x_pixel,w_y_pixel,pixel_data);
endmodule