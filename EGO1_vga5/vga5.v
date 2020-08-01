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
        char_line0 = 208'h000000000000000000001FF02200220810400000000004002000,
        char_line1 = 208'h000000000000000000001010227C1108102000000000020013FC,
        char_line2 = 208'h000000000000000000001FF07F44111010200000000001001004,
        char_line3 = 208'h3C183C18E7301030000010102244002011FEFCFC3C1001004004,
        char_line4 = 208'h422442244230703000001FF022447FFEFC004242441001004004,
        char_line5 = 208'h4242424224001000000002003E7C400210884842441802804004,
        char_line6 = 208'h424242422400100000001FD02244800431044842802802804004,
        char_line7 = 208'h0242024218701070DC76022022441FE03A027842802802804004,
        char_line8 = 208'h04420442181010106224FFFE3E4400405488487C802404404004,
        char_line9 = 208'h084208421810101042180300227C0180508848408E3C04404004,
        char_linea = 208'h104210422410101042180FF02244FFFE90504040844408204004,
        char_lineb = 208'h204220422410101042183810FF44010010504040444208204004,
        char_linec = 208'h42244224421010104224CFF00484010010204040444210104004,
        char_lined = 208'h7E187E18E77C7C7CE76E0810228401001050E0E038E720104004,
        char_linee = 208'h000000000000000000000FF04114050010880000000040084014,
        char_linef = 208'h0000000000000000000008108208020013060000000080064008,
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
    reg[7:0] char_bit;    //��ʾλ����
    reg[7:0] char_bit_1;
    always @(posedge clk_vga or negedge rst_n)//��640*480������ѡȡλ����ʾ�ַ���FPGA��
        begin
            if(!rst_n)
                    char_bit<=8'hcf;
            else if(x_cnt==10'd380)
                char_bit<=8'd208;   //����ʾ��λ�����εݼ�
            else if(x_cnt>10'd380&&x_cnt<10'd589)
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
            else if(x_cnt > 10'd370 && x_cnt < 10'd600)
                begin
                    case(y_dis)
                        10'd180: 
                            if(char_line0[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd181: 
                            if(char_line1[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd182: 
                            if(char_line2[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd183: 
                            if(char_line3[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd184: 
                            if(char_line4[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd185: 
                            if(char_line5[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd186: 
                            if(char_line6[char_bit]) vga_rgb <=12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd187: 
                            if(char_line7[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd188: 
                            if(char_line8[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd189: 
                            if(char_line9[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ
                        10'd190: 
                            if(char_linea[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ                                             
                        10'd191: 
                            if(char_lineb[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ             
                        10'd192: 
                            if(char_linec[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ    
                        10'd193: 
                            if(char_lined[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ    
                        10'd194: 
                            if(char_linee[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ    
                        10'd195: 
                            if(char_linef[char_bit]) vga_rgb <= 12'b1111_0000_0000;    //��ɫ
                            else vga_rgb <= 12'b0000_1111_0000;    //��ɫ                                        
                        default: vga_rgb <= 12'h000;
                    endcase
                if(x_cnt>10'd401 && x_cnt<10'd584)//�����400��ɽ��ǰ�����һ��
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
                        //default: vga_rgb <= 12'h000;//����������ϲ����ײ����������󣬵��Ǽ��ϻ�������ֵĸ���
                    endcase
                 end                 
            else vga_rgb<= 12'h000;          
        end
//r,g,b����Һ������ɫ��ʾ
//    assign {VGA_R[3:0],VGA_G[3:0],VGA_B[3:0]} = {1'b0,vga_rgb[7:5],1'b0,vga_rgb[4:2],2'b00,vga_rgb[1:0]} ;
        assign {VGA_R[3:0],VGA_G[3:0],VGA_B[3:0]} = {vga_rgb[11:8],vga_rgb[7:4],vga_rgb[3:0]} ;
endmodule