`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ɽ����ѧ
// Engineer: �ܽ�ƽ
// 
// Create Date: 2020/07/30 21:31:19
// Design Name: 
// Module Name: vga4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: ����EGO1ʵ��VGAͼ����ʾ--ͨ��ȡ��ģ���������Ҫ��ʾ������
//Ȼ���ٽ���������Ϣת����������ֿ⣬���ֿ���ʮ�����Ʊ������ʽ
//��¼ÿ�����ص��������Ϣ��
// ��ʾ���벻֧�ֵĴ���
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module vga5(
    input clk,
    input rst_n,
    output VGA_HS,
    output VGA_VS,
    output  [3:0] VGA_R,
    output  [3:0] VGA_G,
    output  [3:0] VGA_B
    );
    reg[10:0] x_cnt;    //������
    reg[10:0] y_cnt;    //������
    reg clk_vga=0;  //vgaʱ��
    reg clk_cnt=0;  //��Ƶ����

    always @(posedge clk or negedge rst_n)
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
//--------------------------------------------------
    reg valid_yr;       //����ʾ��Ч�ź�
    always @(posedge clk_vga or negedge rst_n)//480��
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
    always @(posedge clk_vga or negedge rst_n)//640��
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
        
    //VGA��ͬ������ͬ���ź�
    reg hsync_r,vsync_r;
    always @(posedge clk_vga or negedge rst_n)
        begin
            if(!rst_n)
                hsync_r<=1'b1;
            else if(x_cnt==10'd0)       //����hsync�ź�
                hsync_r<=1'b0;
            else if(x_cnt==10'd96)
                hsync_r<=1'b1;
        end
        
    always @(posedge clk_vga or negedge rst_n)
        begin
            if(!rst_n)
                vsync_r<=1'b1;
            else if(y_cnt==10'd0)       //����vsync�ź�
                vsync_r<=1'b0;         
            else if(y_cnt==10'd2)
                vsync_r<=1'b1;
        end
        
    assign VGA_HS=hsync_r;
    assign VGA_VS=vsync_r;
    //�ֱ���640*480
    wire [9:0]x_dis;    //��������ʾ��Ч�����������ֵ0-639
    wire [9:0]y_dis;    //��������ʾ��Ч�����������ֵ0-479
    
    //��ȥ��������ת������������640*480
    assign x_dis=x_cnt-10'd142;
    assign y_dis=y_cnt-10'd33;
    //����pctolcd2002����������֡��ַ�����ĸ����ģ���ݣ�ע����������ȡģ�͵���Ĵ�С
    //Ȼ���ٺϲ�ͬһ�е���ģ���ݣ��õ�������ʾ��charline����
    parameter     
        //��ʾ��Ӣ���ַ� VGA
        char_line0 = 24'h000000,
        char_line1 = 24'h000000,
        char_line2 = 24'h000000,
        char_line3 = 24'hE73C10,
        char_line4 = 24'h424410,
        char_line5 = 24'h424418,
        char_line6 = 24'h448028,
        char_line7 = 24'h248028,
        char_line8 = 24'h248028,
        char_line9 = 24'h288E3C,
        char_linea = 24'h288444,
        char_lineb = 24'h184442,
        char_linec = 24'h104442,
        char_lined = 24'h1038E7,
        char_linee = 24'h000000,
        char_linef = 24'h000000,
        //Ҫ��ʾ�ĺ��� ɽ����ѧ����ѧ��-�ܽ�ƽ
        char_line_0 = 184'h0100_0200_0100_2208_0100_1000_2208_0100_00_0000_1020_0000,
        char_line_1 = 184'h0100_0200_0100_1108_2108_0804_1108_1110_00_3ff8_1020_7ffc,
        char_line_2 = 184'h0100_0200_0100_1110_2108_7f78_1110_0920_00_2108_10fc_0100,
        char_line_3 = 184'h0100_7ffc_0100_0020_3ff8_0040_0020_7ffe_00_2108_2e24_0100,
        char_line_4 = 184'h2108_0400_0100_7ffe_0200_2240_7ffe_4002_00_2fe8_23fe_1110,
        char_line_5 = 184'h2108_0900_fffe_4002_0100_1440_4002_9ff4_00_2108_6224_0910,
        char_line_6 = 184'h2108_1100_0100_8004_7ffe_ff7e_8004_1010_00_2108_64fc_0920,
        char_line_7 = 184'h2108_2100_0100_1fe0_4002_0848_1fe0_1010_00_3ff8_a420_0100,
        char_line_8 = 184'h2108_3ff8_0280_0040_9ff4_0848_0040_1ff0_00_2008_2efc_fffe,
        char_line_9 = 184'h2108_0100_0280_0180_0000_7f48_0180_0100_7e_27c8_2220_0100,
        char_line_a = 184'h2108_0920_0440_fffe_7ffc_0848_fffe_0100_00_2448_2220_0100,
        char_line_b = 184'h2108_1110_0440_0100_0100_2a48_0100_3ff8_00_2448_2bfe_0100,
        char_line_c = 184'h2108_2108_0820_0100_1110_4948_0100_0100_00_27c8_2420_0100,
        char_line_d = 184'h3ff8_4104_1010_0100_2108_8888_0100_0100_00_4008_2620_0100,
        char_line_e = 184'h0008_0500_2008_0500_4504_2888_0500_fffe_00_4028_29fe_0100,
        char_line_f = 184'h0000_0200_c006_0200_0200_1108_0200_0000_00_8010_3000_0100;
    reg[4:0] char_bit;    //��ʾλ����
    reg[7:0] char_bit_1;
    always @(posedge clk_vga or negedge rst_n)//��640*480������ѡȡλ����ʾ�ַ���FPGA��
        begin
            if(!rst_n)
                    char_bit<=8'h1f;
            else if(x_cnt==10'd442)
                char_bit<=5'd23;   //����ʾ��λ�����εݼ�
            else if(x_cnt>10'd442&&x_cnt<10'd466)
                char_bit<=char_bit-1'b1;
        end
    always @(posedge clk_vga or negedge rst_n)//��640*480������ѡȡλ����ʾ�ַ�"ɽ����ѧ����ѧ��-�ܽ�ƽ"
        begin
            if(!rst_n)
                    char_bit_1<=8'hff;
            else if(x_cnt==10'd400)
                char_bit_1<=8'd184;   //����ʾ��λ�����εݼ�
            else if(x_cnt>10'd400&&x_cnt<10'd584)
                char_bit_1<=char_bit_1-1'b1;
        end
   
    reg[11:0] vga_rgb;    // VGAɫ����ʾ�Ĵ���
    always @(posedge clk_vga)//���ÿһ�е��ź�
        begin
            if(!valid)
                vga_rgb<=12'b0000_0000_0000;
            else if(x_cnt>10'd401&&x_cnt<10'd584)//�����400��ɽ��ǰ�����һ��
                begin
                    case(y_dis)
                        10'd215: 
                            if(char_line_0[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;              
                            else vga_rgb<= 12'b0000_0000_0000;
                        10'd216: 
                            if(char_line_1[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000 ;
                        10'd217: 
                            if(char_line_2[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000;
                        10'd218: 
                            if(char_line_3[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000;
                        10'd219: 
                            if(char_line_4[char_bit_1])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000 ;
                        10'd220: 
                            if(char_line_5[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000;
                        10'd221: 
                            if(char_line_6[char_bit_1])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000;
                        10'd222: 
                            if(char_line_7[char_bit_1])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000;
                        10'd223: 
                            if(char_line_8[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000 ;
                        10'd224: 
                            if(char_line_9[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000 ;
                        10'd225: 
                            if(char_line_a[char_bit_1])vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000 ;
                        10'd226: 
                            if(char_line_b[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000 ;
                        10'd227: 
                            if(char_line_c[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000;
                        10'd228: 
                            if(char_line_d[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000 ;
                        10'd229: 
                            if(char_line_e[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000;
                        10'd230: 
                            if(char_line_f[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                            else vga_rgb<= 12'b0000_0000_0000;                                       
                        default: vga_rgb <= 12'h000;
                    endcase
                    if(x_cnt > 10'd442 && x_cnt < 10'd467)
                        begin
                            case(y_dis)
                                10'd215: 
                                    if(char_line_0[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;              
                                    else vga_rgb<= 12'b0000_0000_0000;
                                10'd216: 
                                    if(char_line_1[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000 ;
                                10'd217: 
                                    if(char_line_2[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000;
                                10'd218: 
                                    if(char_line_3[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000;
                                10'd219: 
                                    if(char_line_4[char_bit_1])vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000 ;
                                10'd220: 
                                    if(char_line_5[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000;
                                10'd221: 
                                    if(char_line_6[char_bit_1])vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000;
                                10'd222: 
                                    if(char_line_7[char_bit_1])vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000;
                                10'd223: 
                                    if(char_line_8[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000 ;
                                10'd224: 
                                    if(char_line_9[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000 ;
                                10'd225: 
                                    if(char_line_a[char_bit_1])vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000 ;
                                10'd226: 
                                    if(char_line_b[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000 ;
                                10'd227: 
                                    if(char_line_c[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000;
                                10'd228: 
                                    if(char_line_d[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000 ;
                                10'd229: 
                                    if(char_line_e[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000;
                                10'd230: 
                                    if(char_line_f[char_bit_1]) vga_rgb<= 12'b1111_1111_1111;
                                    else vga_rgb<= 12'b0000_0000_0000;  
                                10'd231: 
                                    if(char_line0[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd232: 
                                    if(char_line1[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd233: 
                                    if(char_line2[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd234: 
                                    if(char_line3[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd235: 
                                    if(char_line4[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd236: 
                                    if(char_line5[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd237: 
                                    if(char_line6[char_bit]) vga_rgb <=12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd238: 
                                    if(char_line7[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd239: 
                                    if(char_line8[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd240: 
                                    if(char_line9[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                                10'd241: 
                                    if(char_linea[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ                                             
                                10'd242: 
                                    if(char_lineb[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ             
                                10'd243: 
                                    if(char_linec[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ    
                                10'd244: 
                                    if(char_lined[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ    
                                10'd245: 
                                    if(char_linee[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ    
                                10'd246: 
                                    if(char_linef[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                                    else vga_rgb <= 12'b0000_1111_0000;    //��ɫ                                        
                                default: vga_rgb <= 12'h000;
                            endcase
                        end
                end 
            else vga_rgb<= 12'h000;          
        end
    //r,g,b����Һ������ɫ��ʾ
//    assign {VGA_R[3:0],VGA_G[3:0],VGA_B[3:0]} = {1'b0,vga_rgb[7:5],1'b0,vga_rgb[4:2],2'b00,vga_rgb[1:0]} ;
        assign {VGA_R[3:0],VGA_G[3:0],VGA_B[3:0]} = {vga_rgb[11:8],vga_rgb[7:4],vga_rgb[3:0]} ;
endmodule