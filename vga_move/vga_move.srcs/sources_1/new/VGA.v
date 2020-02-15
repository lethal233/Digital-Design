`timescale 1ns / 1ps

module VGA(input clk,rst_n,
input [17:0]h_cnt,
input [17:0]v_cnt, 
input [11:0] color,
output h_sync,v_sync,
output reg [3:0] r_vga,g_vga,b_vga);


wire visible;
wire clk_100,clk_25;
div d(clk_100,clk_25,rst_n,clk);
sync s(clk_25,rst_n,h_sync,v_sync,h_cnt,v_cnt,visible); 
 
parameter    WIDTH = 48, //矩形长
              HEIGHT = 48,  //矩形宽
              // 显示区域的边界
              V_MAX = 10'd515,  // display top bound
              V_MIN =10'd35,  // display down bound
              H_MIN = 10'd144, // display left bound
              H_MAX = 10'd784; // display right bound
               
//初始矩形的位置，在显示区的左下角             
reg [9:0] topbound = V_MIN + HEIGHT;
reg [9:0] downbound = V_MIN;
reg [9:0] leftbound = H_MIN;
reg [9:0] rightbound = V_MIN + WIDTH ;
//初始方向为东南方向
reg [1:0] movexy = 2'b11;
/*
根据时间选择不同范围坐标的像素显示颜色，使其成为一个移动的矩形。
由于是60/s, vsync的Ts恰好是移动1px所花的时间，所以用vsync信号的上升沿判断
*/
 
//确立每一个像素时钟里矩形的坐标范围
always @ (posedge v_sync or negedge rst_n)
begin
if(~rst_n) 
begin 
    topbound = V_MIN + HEIGHT ;
    downbound = V_MIN;
    leftbound = H_MAX;
    rightbound = H_MIN + WIDTH ;
    movexy = 2'b11; 
end 
else begin
     //碰到边界，改变方向
     case(movexy[1:0])
     2'b11: begin // 东南
             if (topbound == V_MAX && rightbound < H_MAX )
                    movexy = 2'b10;
                else if (topbound < V_MAX && rightbound == H_MAX )
                    movexy = 2'b01;
               else if (topbound == V_MAX && rightbound == H_MAX )
                    movexy = 2'b00;
            end
     2'b10: begin // 东北
             if (downbound  == V_MIN&& rightbound < H_MAX )
                    movexy = 2'b11;
                else if (downbound > V_MIN && rightbound == H_MAX )
                    movexy = 2'b00;
               else if (downbound == V_MIN && rightbound == H_MAX )
                    movexy = 2'b01;
            end
     2'b00: begin // 西北
             if (downbound == V_MIN && leftbound > H_MIN )
                    movexy = 2'b01;
                else if (downbound > V_MIN  && leftbound == H_MIN )
                    movexy = 2'b10;
               else if (downbound == V_MIN && leftbound == H_MIN )
                    movexy = 2'b11;
            end
     2'b01:  begin // 西南
             if (topbound == V_MAX && leftbound > H_MIN )
                    movexy = 2'b00;
                else if (topbound < V_MAX && leftbound == H_MIN )
                    movexy = 2'b11;
               else if (topbound == V_MAX && leftbound == H_MIN )
                    movexy = 2'b10;
            end
     default: movexy = 2'b11;
     endcase
     case(movexy[0])
        1:
            begin
            topbound <= topbound + 1;
            downbound <= downbound +1;
            end
        default:
        begin
            topbound <= topbound - 1;
            downbound <= downbound - 1;
        end
     endcase
     case(movexy[1])
        1:
        begin
            leftbound <= leftbound +1;
            rightbound <= rightbound +1;
        end
        default:
        begin
            leftbound <= leftbound -1;
            rightbound <= rightbound -1;
        end
      endcase
      /*topbound <= topbound + ( movexy[0]? 1 : -1 );
      downbound <= downbound + ( movexy[0]? 1 : -1 );
      leftbound <= leftbound + ( movexy[1]? 1 : -1 );
      rightbound <= rightbound + ( movexy[1]? 1 : -1 ); */
 
end
 
end
 
// 确定扫描到哪一个像素该显示什么颜色
always @(posedge clk_25 or negedge rst_n) 
begin
if(~rst_n)
     {r_vga,g_vga,b_vga} <= 12'b0;        
else 
begin
if (h_cnt >= H_MIN  && h_cnt <= H_MAX  && v_cnt >= V_MIN && v_cnt <= V_MAX)
begin
    if(h_cnt >= leftbound && h_cnt <= rightbound && v_cnt >= downbound && v_cnt <= topbound)
       {r_vga,g_vga,b_vga} <= color;  
     else        
       {r_vga,g_vga,b_vga} <= 12'b0; //黑色
end
else begin
   {r_vga,g_vga,b_vga} <= 12'b0;
end
end
end
endmodule
