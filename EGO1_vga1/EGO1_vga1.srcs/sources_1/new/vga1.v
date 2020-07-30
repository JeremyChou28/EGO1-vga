`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ɽ����ѧ
// Engineer: �ܽ�ƽ
// 
// Create Date: 2020/07/29 23:59:07
// Design Name: 
// Module Name: vga1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: vgaͼ�񸡶���ʾ��ʵ�����Ʒ�����Ļ����
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga1(
    input clk,  //ʱ���ź�
    input rst_n,    //��λ�ź�
    output reg [2:0] r,//rgb����ɫ���
    output reg [2:0] g,
    output reg [1:0] b,
    output hs,      //���ź����
    output vs       //���ź����
    );
    wire reset=~rst_n;  //��λ�ź�ȡ������֤�����ش���
    //�趨��������ı߽�
    parameter UP_BOUND = 31;    //�趨�ϱ߽�
	parameter DOWN_BOUND = 510;    //�趨�±߽�
	parameter LEFT_BOUND = 144;    //�趨��߽�
	parameter RIGHT_BOUND = 783;   //�趨�ұ߽�
	//����״̬��������״̬
	parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
	reg [2:0] state, nextstate;    //����״̬����״̬����һ�ε�״̬
	reg [2:0] nextr, nextg;        //����״̬����һ���������ɫrgb
	reg [1:0] nextb;
	
	reg h_speed, v_speed;
	reg [9:0] up_pos, down_pos, left_pos, right_pos;//���巽����������ұ߽綨λ
    //���źź����źž����ŵ�ǰ�����Ƿ���ʾ������VGA��ʾ������ɨ�����ص�
    //���ڳ��˿ɼ������в��ɼ���������ص㣬���ͨ���߽��������Ƿ����
	wire myclk;
	reg [1:0] count;
	reg [9:0] hcount, vcount;

	always@(posedge clk)//ʱ��������
	begin
		if(reset)//��λ
			count <= 0;
		else
			count <= count + 1'b1;
	end
	assign myclk = count[1];//ʵ��ʱ�ӷ�Ƶ��ÿ16��clk����ʵ��һ��myclk��ת��100MHZ/32
	
	always@(posedge myclk or posedge reset)//ע��������reset�����ش�������Ӧǰ����Ҫ��rst_nȡ��
	begin
		if(reset)
			hcount <= 0;
		else if(hcount == 799)
			hcount <= 0;
		else
			hcount <= hcount + 1'b1;
	end
	assign hs = (hcount < 96) ? 1'b0 : 1'b1;//�����ͬ���ź�
	assign vs = (vcount < 2) ? 1'b0 : 1'b1;//�����ͬ���ź�
	//��ɫ�����任�γɲ�ɫ�ֱ䡣��ɫ�仯ͨ��״̬����ʵ�֡�
	//ÿһ�����ص��Ӧһ����ɫ��ֻ�з��������ڲ�ͨ����ɫ��ʾ����������Ϊ��ɫ
	always@(posedge myclk or posedge reset)
	begin
		if(reset)
			vcount <= 0;
		else if(hcount == 799) 
            begin
                if(vcount == 520)
                    vcount <= 0;
                else
                    vcount <= vcount + 1'b1;
            end
		else
			vcount <= vcount;
	end
	
	always@(posedge myclk or posedge reset)
	begin
		if(reset) 
            begin
                r <= 0;
                g <= 0;
                b <= 0;
            end
		else 
            begin
                if((vcount >= up_pos) && (vcount <= down_pos)
                     && (hcount >= left_pos)&& (hcount<=right_pos)) 
                    begin
                        r <= nextr; 
                        g <= nextg; 
                        b <= nextb;
                    end
                else 
                    begin
                        r <= 3'b000;
                        g <= 3'b000;
                        b <= 2'b00;
                    end
            end
	end
	
	always@(posedge myclk or posedge reset)
	begin
		if(reset)
			state <= S0;
		else
			state <= nextstate;
	end
	
	always@(*)
	begin
		case(state)
			S0:		nextstate <= S1;
			S1:		nextstate <= S2;
			S2:		nextstate <= S3;
			S3:		nextstate <= S0;
			default:	nextstate <= S0;
		endcase
	end
	
	always@(*)
	begin
		case(state)
			S0:begin nextr <= 3'b111; nextg <= 3'b000; nextb <= 2'b00; end
			S1:begin nextr <= 3'b000; nextg <= 3'b111; nextb <= 2'b00; end
			S2:begin nextr <= 3'b000; nextg <= 3'b000; nextb <= 2'b11; end
			S3:begin nextr <= 3'b111; nextg <= 3'b111; nextb <= 2'b00; end
			default:begin nextr <= 3'b111; nextg <= 3'b000; nextb <= 2'b11; end
		endcase
	end
	
	always@(negedge vs or posedge reset)
	begin
		if(reset)
            begin
                h_speed <= 1;
                v_speed <= 0;
            end
		else 
            begin
                if(up_pos == UP_BOUND)
                    v_speed <= 1;
                else if(down_pos == DOWN_BOUND)
                    v_speed <= 0;
                else
                    v_speed <= v_speed;
                
                if (left_pos == LEFT_BOUND)
                    h_speed <= 1;
                else if (right_pos == RIGHT_BOUND)
                    h_speed <= 0;
                else
                    h_speed <= h_speed;
            end
	end
	
	always@(posedge vs or posedge reset)
	begin
		if(reset) 
            begin
                up_pos <= 391;
                down_pos <= 510;
                left_pos <= 384;
                right_pos <= 543;
            end
		else
            begin
                if(v_speed) 
                    begin
                        up_pos <= up_pos + 1'b1;
                        down_pos <= down_pos + 1'b1;
                    end
                else 
                    begin
                        up_pos <= up_pos - 1'b1;
                        down_pos <= down_pos - 1'b1;
                    end     
                if(h_speed)
                    begin
                        left_pos <= left_pos + 1'b1;
                        right_pos <= right_pos + 1'b1;
                    end
                else 
                    begin
                        left_pos <= left_pos - 1'b1;
                        right_pos <= right_pos - 1'b1;
                    end
            end
	end
endmodule
