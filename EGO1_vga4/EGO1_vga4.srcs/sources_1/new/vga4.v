`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 山东大学
// Engineer: 周健平
// 
// Create Date: 2020/07/30 21:31:19
// Design Name: 
// Module Name: vga4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 基于EGO1实现VGA图像显示--通过取字模软件生成需要显示的文字
//然后再将其像素信息转换成所需的字库，该字库以十六进制编码的形式
//记录每个像素点的亮灭信息。
// 对于时钟分频、行同步显示、场同步信号可以作为显示文字、字符、字母类的通用代码
//只需要对显示位置、每一行需要显示的位数进行修改即可。
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga4(clk,rst_n,hsync,vsync,vga_r,vga_g,vga_b);
    input clk;//系统时钟
    input rst_n;//复位信号
    output hsync;//行同步信号
    output vsync;//场同步信号
    output [3:0] vga_r;//VGA红色输出信号
    output [3:0] vga_g;//VGA绿色输出信号
    output [3:0] vga_b;//VGA蓝色输出信号
    reg [9:0]x_cnt; //行坐标
    reg [9:0]y_cnt; //列坐标
    reg clk_vga=0;  //vga时钟
    reg clk_cnt=0;  //分频计数
    always @(posedge clk or negedge rst_n)//实现对系统时钟的分频得到vga_clk用于VGA图像显示时钟信号
        begin
            if(!rst_n)
                clk_vga<=1'b0;
            else if(clk_cnt==1)
                begin
                    clk_vga=~clk_vga;
                    clk_cnt<=0;
                end
            else 
                clk_cnt<=clk_cnt+1;
        end
 
    reg valid_yr;       //行显示有效信号
    always @(posedge clk_vga or negedge rst_n)//480行
        begin
            if(!rst_n)
                valid_yr<=1'b0;
            else if(y_cnt==10'd32)
                valid_yr<=1'b1;
            else if(y_cnt==10'd511)
                valid_yr<=1'b0;
        end
    wire valid_y=valid_yr;   
    reg valid_r;
    always @(posedge clk_vga or negedge rst_n)//640列
        begin
            if(!rst_n)
                valid_r<=1'b0;
            else if((x_cnt==10'd141)&&valid_y)
                valid_r<=1'b1;
            else if((x_cnt==10'd781)&&valid_y)
                valid_r<=1'b0;    
        end
    wire valid=valid_r;
    
    always @(posedge clk_vga or negedge rst_n)
        begin
            if(!rst_n)
                x_cnt<=10'd0;
            else if(x_cnt==10'd799)
                x_cnt<=10'd0;
            else
                x_cnt<=x_cnt+1'b1;
        end
    always @(posedge clk_vga or negedge rst_n)
        begin
            if(!rst_n)
                y_cnt<=10'd0;
            else if(y_cnt==10'd524)
                y_cnt<=10'd0;
            else if(x_cnt==10'd799)
                y_cnt<=y_cnt+1'b1;
        end
        
    //VGA场同步、行同步信号
    reg hsync_r,vsync_r;
    always @(posedge clk_vga or negedge rst_n)
        begin
            if(!rst_n)
                hsync_r<=1'b1;
            else if(x_cnt==10'd0)       //产生hsync信号
                hsync_r<=1'b0;
            else if(x_cnt==10'd96)
                hsync_r<=1'b1;
        end
        
    always @(posedge clk_vga or negedge rst_n)
        begin
            if(!rst_n)
                vsync_r<=1'b1;
            else if(y_cnt==10'd0)       //产生vsync信号
                vsync_r<=1'b0;         
            else if(y_cnt==10'd2)
                vsync_r<=1'b1;
        end
        
    assign hsync=hsync_r;
    assign vsync=vsync_r;
    //分辨率640*480
    wire [9:0]x_dis;    //横坐标显示有效区域相对坐标值0-639
    wire [9:0]y_dis;    //纵坐标显示有效区域相对坐标值0-479
    
    //减去消隐区，转换成易于理解的640*480
    assign x_dis=x_cnt-10'd142;
    assign y_dis=y_cnt-10'd33;
    parameter   //FPGA四个字符的字库，若要显示其他字符，利用字符取模软件生成字库即可
        char_line00 = 128'hFFFFFFC07FFC00001FFF0000007C0000,
        char_line01 = 128'hFFFFFFC07FFE00003FFF800000FE0000,
        char_line02 = 128'hFFFFFFC07FFF00007FFFC00001CF0000,
        char_line03 = 128'hFFFFFFC0783F8000FE0FE00001CF0000,
        char_line04 = 128'hFFFFFFC0780FC001FC07F00003CF8000,
        char_line05 = 128'hF80000007807E003F803F00003878000,
        char_line06 = 128'hF80000007803F007F001F0000787C000,
        char_line07 = 128'hF80000007801F007F00000000703C000,
        char_line08 = 128'hF80000007800F007E00000000F03E000,
        char_line09 = 128'hF80000007800F007C00000000E01E000,
        char_line0a = 128'hF80000007800F007800000001E01F000,
        char_line0b = 128'hF80000007801F0078FFFFF001C00F000,
        char_line0c = 128'hF80000007803F0078FFFFF003C00F800,
        char_line0d = 128'hF80000007807F0078FFFFF0038007800,
        char_line0e = 128'hF8000000780FE0078FFFFF0078007C00,
        char_line0f = 128'hFFFFE000781FC0078007C0007FFFFC00,
        char_line10 = 128'hFFFFE000783F80078007C000FFFFFE00,
        char_line11 = 128'hFFFFE0007FFF00078007C000FFFFFE00,
        char_line12 = 128'hF80000007FFE00078007C001F8003F00,
        char_line13 = 128'hF80000007FFC00078007C001F8003F00,
        char_line14 = 128'hF8000000780000078007C003F8003F80,
        char_line15 = 128'hF8000000780000078007C003F0001F80,
        char_line16 = 128'hF800000078000007C00FC003E0000F80,
        char_line17 = 128'hF800000078000007E01FC003C0000780,
        char_line18 = 128'hF800000078000007F03FC003C0000780,
        char_line19 = 128'hF800000078000007F87FC003C0000780,
        char_line1a = 128'hF800000078000003FFFFC003C0000780,
        char_line1b = 128'hF800000078000001FFFFC003C0000780,
        char_line1c = 128'hF800000078000000FFFFC003C0000780,
        char_line1d = 128'hF8000000780000007FFF8003C0000780,
        char_line1e = 128'hF8000000780000003FFF0003C0000780,
        char_line1f = 128'hF8000000780000001FFE0007F0001EC0;
    
    reg [6:0]char_bit;
    always @(posedge clk_vga or negedge rst_n)//在640*480阵列中选取位置显示字符“FPGA”
        begin
            if(!rst_n)
                char_bit<=8'h7f;
            else if(x_cnt==10'd400)
                char_bit<=8'd128;   //先显示高位，依次递减
            else if(x_cnt>10'd400&&x_cnt<10'd528)
                char_bit<=char_bit-1'b1;
        end
    
    reg [11:0]vga_rgb;
    always @(posedge clk_vga)//输出每一行的信号
        begin
            if(!valid)
                vga_rgb<=12'b0000_0000_0000;
            else if(x_cnt>10'd400&&x_cnt<10'd528)
                begin
                    case(y_dis)
                        10'd200:
                            if(char_line00[char_bit])vga_rgb<=12'b1111_1111_1111;//白色字体
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd201: 
                            if(char_line01[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd202: 
                            if(char_line02[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd203: 
                            if(char_line03[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd204: 
                            if(char_line04[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd205: 
                            if(char_line05[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd206: 
                            if(char_line06[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd207: 
                            if(char_line07[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd208: 
                            if(char_line08[char_bit])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd209: 
                            if(char_line09[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd210: 
                            if(char_line0a[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd211: 
                            if(char_line0b[ char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd212: 
                            if(char_line0c[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd213: 
                            if(char_line0d[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd214: 
                            if(char_line0e[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd215: 
                            if(char_line0f[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd216: 
                            if(char_line10[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd217: 
                            if(char_line11[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd218: 
                            if(char_line12[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd219: 
                            if(char_line13[char_bit])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd220: 
                            if(char_line14[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd221: 
                            if(char_line15[char_bit])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd222: 
                            if(char_line16[char_bit])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd223: 
                            if(char_line17[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd224: 
                            if(char_line18[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd225: 
                            if(char_line19[char_bit])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd226: 
                            if(char_line1a[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd227: 
                            if(char_line1b[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd228: 
                            if(char_line1c[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000 ;
                        10'd229: 
                            if(char_line1d[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd230: 
                            if(char_line1e[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        10'd231: 
                            if(char_line1f[char_bit]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b000_0000_0000;
                        default: vga_rgb<= 12'h000;
                    endcase
                end 
            else vga_rgb<= 12'h000;          
        end
        
        assign vga_r=vga_rgb[11:8];//红色
        assign vga_g=vga_rgb[7:4];//绿色
        assign vga_b=vga_rgb[3:0];//蓝色
endmodule
