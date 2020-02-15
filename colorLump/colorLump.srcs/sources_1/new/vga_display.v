module vga_display(
    clk,rst_n,x_pixel,y_pixel,pixel_data
);
    
//---------------------------------
input clk;
input rst_n;
input [9:0]	x_pixel;
input [9:0]	y_pixel;
//---------------------------------
output 	reg	[11:0]	  pixel_data;
//---------------------------------
parameter h_visible 		= 10'd640	;		//行显示区�?
parameter v_visible 		= 10'd480	;		//列显示区�?
//---------------------------------
parameter white  = 12'b1111_1111_1111;
parameter black  = 12'b0000_0000_0000;
parameter red    = 12'b1111_0000_0000;
parameter green  = 12'b0000_1111_0000;
parameter blue   = 12'b0000_0000_1111;
parameter cyan   = 12'b0000_1111_1111;
parameter pink   = 12'b1111_0000_1111;
parameter yellow = 12'b1111_1111_0000;
//---------------------------------
//判断行和场的像素位置输出控制颜色
 
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		pixel_data <= 12'd0;
	else 
		if(x_pixel <= (h_visible / 8 - 1'b1 ) * 1 ) 
			pixel_data <= black;
		else
			if(x_pixel <= (h_visible / 8 - 1'b1 ) * 2 ) 
				pixel_data <= white;
			else 
				if(x_pixel <= (h_visible / 8 - 1'b1 ) * 3 )
					pixel_data <= red;
				else 
					if(x_pixel <= (h_visible / 8 - 1'b1 ) * 4 )
						pixel_data <= green;
					else
                        if(x_pixel <= (h_visible / 8 - 1'b1 ) * 5)
						    pixel_data <= blue;
                        else
                            if(x_pixel <= (h_visible / 8 - 1'b1 ) * 6)
                                pixel_data <= cyan;
                            else
                                if(x_pixel <= (h_visible / 8 - 1'b1 ) * 7)
                                    pixel_data <= pink;
                                else
                                    pixel_data <= yellow;
end

endmodule