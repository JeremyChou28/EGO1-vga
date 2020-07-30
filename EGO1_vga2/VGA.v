module VGA(
	input clk,//ϵͳʱ��Ϊ100MHZ
	input rst_n,//��λ�ź�
	output hsync,//��ͬ���ź�
	output vsync,//��ͬ���ź�
	output[1:0] vga_r,//rgb�ź����
	output[2:0] vga_g,
	output[2:0] vga_b
	);
	reg[10:0] x_cnt;     //�����꣨�����������ͬ�������ء���Ч��������ǰ�أ�	
	reg[9:0] y_cnt;     //�����꣨��������˳�ͬ�������ء���Ч��������ǰ�أ�
	reg[5:0] Xcoloradd;
	reg[2:0] Ycoloradd;

	parameter Left = 184,
			PixelWidth = 100,
			Top = 29;

	always @ (posedge clk or negedge rst_n)
		if(!rst_n) x_cnt <= 10'd0;
		else if(x_cnt == 11'd1040) x_cnt <= 10'd0;          //�м����ǵ�1040
		else x_cnt <= x_cnt+1'b1;

	always @ (posedge clk or negedge rst_n)//�����е�ַ��ROMˮƽ��ַ��
		if(!rst_n) Xcoloradd <= 6'b000000;
		else if(x_cnt >= Left && x_cnt <Left + PixelWidth) Xcoloradd <= 6'b000000;
		else if(x_cnt >= Left + PixelWidth && x_cnt <Left + 2*PixelWidth) Xcoloradd <= 6'b000001;
		else if(x_cnt >= Left + 2*PixelWidth && x_cnt <Left + 3*PixelWidth) Xcoloradd <= 6'b000010;
		else if(x_cnt >= Left + 3*PixelWidth && x_cnt <Left + 4*PixelWidth) Xcoloradd <= 6'b000011;
		else if(x_cnt >= Left + 4*PixelWidth && x_cnt <Left + 5*PixelWidth) Xcoloradd <= 6'b000100;
		else if(x_cnt >= Left + 5*PixelWidth && x_cnt <Left + 6*PixelWidth) Xcoloradd <= 6'b000101;
		else if(x_cnt >= Left + 6*PixelWidth && x_cnt <Left + 7*PixelWidth) Xcoloradd <= 6'b000110;
		else if(x_cnt >= Left + 7*PixelWidth && x_cnt <Left + 8*PixelWidth) Xcoloradd <= 6'b000111;
		else Xcoloradd <= 6'b110000;//������ɫ��ַ

	always @ (posedge clk or negedge rst_n)
		if(!rst_n) y_cnt <= 10'd0;
		else if(y_cnt == 10'd666) y_cnt <= 10'd0;            //��ͬ���ǵ�666
		else if(x_cnt == 11'd1040) y_cnt <= y_cnt+1'b1;//ÿ������һ�У���ͬ���ͼ�һ

	always @ (posedge clk or negedge rst_n)//�����е�ַ��ROM��ֱ��ַ��
		if(!rst_n) Ycoloradd <= 3'b000;
		else if(y_cnt >= Top && y_cnt < Top + PixelWidth) Ycoloradd <= 3'b000;
		else if(y_cnt >= Top + PixelWidth && y_cnt < Top + 2*PixelWidth) Ycoloradd <= 3'b001;
		else if(y_cnt >= Top + 2*PixelWidth && y_cnt < Top + 3*PixelWidth) Ycoloradd <= 3'b010;
		else if(y_cnt >= Top + 3*PixelWidth && y_cnt < Top + 4*PixelWidth) Ycoloradd <= 3'b011;
		else if(y_cnt >= Top + 4*PixelWidth && y_cnt < Top + 5*PixelWidth) Ycoloradd <= 3'b100;
		else if(y_cnt >= Top + 5*PixelWidth && y_cnt < Top + 6*PixelWidth) Ycoloradd <= 3'b101;
		else Ycoloradd <= 3'b110;//������ɫ��ַ

// signal port ROM

	wire[7:0] color;
	wire[5:0] coloradd;

	assign coloradd = {Ycoloradd,3'b000}|Xcoloradd;//��ˮƽ��ַ�ʹ�ֱ��ַ�ϳ�ROMʵ�ʵ�ַ
	sprom u1(coloradd,clk,color);


	wire valid;     //��Ч������ʾ����־����������Һ����Ļ�Ͽ��Կ���������
	assign valid = (x_cnt > 10'd184) && (x_cnt < 10'd984)
         && (y_cnt > 10'd29) && (y_cnt < 10'd629);

	reg hsync_r,vsync_r;
	always @ (posedge clk or negedge rst_n)
		if (!rst_n) 
			begin
			hsync_r <= 1'b0;
			vsync_r <= 1'b0;
			end
		else 
			begin
			hsync_r <= x_cnt >= 10'd120; //����hsync�źţ���ͬ����when x_cnt>=50,then hsync_r=1,else 0;�͵�ƽͬ��
			vsync_r <= y_cnt >= 10'd6;  //����vsync�źţ���ͬ����my LCD is low sync
			end
	assign hsync = hsync_r;
	assign vsync = vsync_r;
 

//��ɫ���
	assign vga_r[1] = valid ? color[7] : 1'b0;
	assign vga_r[0] = valid ? color[6] : 1'b0;
	assign vga_g[2] = valid ? color[5] : 1'b0;
	assign vga_g[1] = valid ? color[4] : 1'b0;
	assign vga_g[0] = valid ? color[3] : 1'b0;
	assign vga_b[2] = valid ? color[2] : 1'b0;  
	assign vga_b[1] = valid ? color[1] : 1'b0;
	assign vga_b[0] = valid ? color[0] : 1'b0;
endmodule