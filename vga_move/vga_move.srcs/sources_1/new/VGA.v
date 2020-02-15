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
 
parameter    WIDTH = 48, //���γ�
              HEIGHT = 48,  //���ο�
              // ��ʾ����ı߽�
              V_MAX = 10'd515,  // display top bound
              V_MIN =10'd35,  // display down bound
              H_MIN = 10'd144, // display left bound
              H_MAX = 10'd784; // display right bound
               
//��ʼ���ε�λ�ã�����ʾ�������½�             
reg [9:0] topbound = V_MIN + HEIGHT;
reg [9:0] downbound = V_MIN;
reg [9:0] leftbound = H_MIN;
reg [9:0] rightbound = V_MIN + WIDTH ;
//��ʼ����Ϊ���Ϸ���
reg [1:0] movexy = 2'b11;
/*
����ʱ��ѡ��ͬ��Χ�����������ʾ��ɫ��ʹ���Ϊһ���ƶ��ľ��Ρ�
������60/s, vsync��Tsǡ�����ƶ�1px������ʱ�䣬������vsync�źŵ��������ж�
*/
 
//ȷ��ÿһ������ʱ������ε����귶Χ
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
     //�����߽磬�ı䷽��
     case(movexy[1:0])
     2'b11: begin // ����
             if (topbound == V_MAX && rightbound < H_MAX )
                    movexy = 2'b10;
                else if (topbound < V_MAX && rightbound == H_MAX )
                    movexy = 2'b01;
               else if (topbound == V_MAX && rightbound == H_MAX )
                    movexy = 2'b00;
            end
     2'b10: begin // ����
             if (downbound  == V_MIN&& rightbound < H_MAX )
                    movexy = 2'b11;
                else if (downbound > V_MIN && rightbound == H_MAX )
                    movexy = 2'b00;
               else if (downbound == V_MIN && rightbound == H_MAX )
                    movexy = 2'b01;
            end
     2'b00: begin // ����
             if (downbound == V_MIN && leftbound > H_MIN )
                    movexy = 2'b01;
                else if (downbound > V_MIN  && leftbound == H_MIN )
                    movexy = 2'b10;
               else if (downbound == V_MIN && leftbound == H_MIN )
                    movexy = 2'b11;
            end
     2'b01:  begin // ����
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
 
// ȷ��ɨ�赽��һ�����ظ���ʾʲô��ɫ
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
       {r_vga,g_vga,b_vga} <= 12'b0; //��ɫ
end
else begin
   {r_vga,g_vga,b_vga} <= 12'b0;
end
end
end
endmodule
