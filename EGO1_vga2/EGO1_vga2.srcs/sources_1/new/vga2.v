`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 山东大学
// Engineer: 周健平
// 
// Create Date: 2020/07/30 12:53:11
// Design Name: 
// Module Name: vga2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 实现VGA图像显示之横条、竖条、两种棋盘格，通过按键控制哪种图像显示
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga2(clk,switch,disp_RGB,hsync,vsync);
    input  clk;     //系统输入时钟100MHz
    input  [2:0]switch;
    output [2:0]disp_RGB;    //VGA数据输出
    output  hsync;     //VGA行同步信号
    output  vsync;    //VGA场同步信号
    reg [9:0] hcount;     //VGA行扫描计数器
    reg [9:0] vcount;     //VGA场扫描计数器
    reg [2:0] data;     //VGA传送的数据
    reg [2:0] h_dat;    //VGA传送的行同步数据   控制彩色的棋盘变化 
    reg [2:0] v_dat;    //VGA传送的列同步数据
    reg [2:0] h_dat_1;  //备份的行同步和场同步变量  控制井字棋的棋盘
    reg [2:0] v_dat_1;
    reg [2:0] h_dat_2;  //备份的行同步和场同步变量  控制五子棋的棋盘
    reg [2:0] v_dat_2;
    reg   flag;
    wire  hcount_ov;
    wire  vcount_ov;
    wire  dat_act;
    wire  hsync;
    wire  vsync;
    reg  vga_clk=0; //VGA时钟信号
    reg  cnt_clk=0; //分频计数
    
    //VGA行、场扫描时序参数表
    parameter hsync_end   = 10'd95,
               hdat_begin  = 10'd143,
               hdat_end  = 10'd783,
               hpixel_end  = 10'd799,
               vsync_end  = 10'd1,
               vdat_begin  = 10'd34,
               vdat_end  = 10'd514,
               vline_end  = 10'd524;


    always @(posedge clk)
        begin
            if(cnt_clk==1)
                begin
                vga_clk <= ~vga_clk;
                cnt_clk<=0;
                end
            else
                cnt_clk<=cnt_clk+1;   
        end

//************************VGA驱动部分*******************************
//行扫描     
    always @(posedge vga_clk)
    begin
        if (hcount_ov)
            hcount <= 10'd0;
        else
            hcount <= hcount + 10'd1;
    end
    assign hcount_ov = (hcount == hpixel_end);
    
//场扫描
    always @(posedge vga_clk)
    begin
        if (hcount_ov)
        begin
          if (vcount_ov)
            vcount <= 10'd0;
          else
            vcount <= vcount + 10'd1;
        end
    end
    assign  vcount_ov = (vcount == vline_end);
    
//数据、同步信号输
    assign dat_act =((hcount >= hdat_begin) && (hcount < hdat_end))
             && ((vcount >= vdat_begin) && (vcount < vdat_end));
    assign hsync = (hcount > hsync_end);
    assign vsync = (vcount > vsync_end);
    assign disp_RGB = (dat_act) ?  data : 3'h00;      

//************************显示数据处理部分*******************************
//图片显示延时计数器
/*always @(posedge vga_clk)
begin
flag <= vcount_ov;
if(vcount_ov && ~flag)
  timer <= timer + 1'b1;
end
*/
    always @(posedge vga_clk)
    begin
        case(switch[2:0])
            3'b000: data <= h_dat;      //选择横彩条
            3'b001: data <= v_dat;      //选择竖彩条
            3'b010: data <= (v_dat ^ h_dat); //横彩条和竖彩条按位异或产生一种棋盘格
            3'b011: data <= (v_dat ~^ h_dat); //横彩条和竖彩条按位同或产生另一种棋盘格
            3'b100: data <=(v_dat_1 & h_dat_1);//产生井字棋棋盘 
            default: data <= (v_dat_2 & h_dat_2); //产生五子棋的棋盘         
        endcase
    end

    always @(posedge vga_clk)  //产生横彩条
    begin
        if(vcount < 94)
            h_dat <= 3'h7;        //白
        else if(vcount < 154)
            h_dat <= 3'h6;   //青
        else if(vcount < 214)
            h_dat <= 3'h5;   //紫
        else if(vcount < 274)
            h_dat <= 3'h4;    //蓝
        else if(vcount < 334)
            h_dat <= 3'h3;   //黄
        else if(vcount < 394)
            h_dat <= 3'h2;   //绿
        else if(vcount < 454)
            h_dat <= 3'h1;   //红
        else
            h_dat <= 3'h0;   //黑
    end

    always @(posedge vga_clk)  //产生竖彩条
    begin
        if(hcount < 223)
            v_dat <= 3'h7;      //白   
        else if(hcount < 303)
            v_dat <= 3'h6;   //青
        else if(hcount < 383)
            v_dat <= 3'h5;   //紫
        else if(hcount < 463)
            v_dat <= 3'h4;    //蓝
        else if(hcount < 543)
            v_dat <= 3'h3;   //黄
        else if(hcount < 623)
            v_dat <= 3'h2;   //绿
        else if(hcount < 703)
            v_dat <= 3'h1;   //红
        else
            v_dat <= 3'h0;   //黑
    end
 
    always @(posedge vga_clk)  //产生井字棋棋盘白底黑边-横条
    begin
        if(vcount > 94&& vcount<454&&vcount!=214&&vcount!=334)
            h_dat_1 <= 3'h7;        //白
        else
            h_dat_1 <= 3'h0;   //黑
    end

    always @(posedge vga_clk)  //产生井字棋棋盘白底黑边-竖条
    begin
        if(hcount > 223&&hcount<703&&hcount!=383&&hcount!=543)
            v_dat_1 <= 3'h7;      //白   
        else
            v_dat_1 <= 3'h0;   //黑
    end
    
    always @(posedge vga_clk)  //产生五子棋棋盘黄底红边-横条
    begin
        if(vcount > 84&& vcount<464&&vcount!=94&&vcount!=114&&vcount!=134
            &&vcount!=154&&vcount!=174
            &&vcount!=194&&vcount!=214
            &&vcount!=234&&vcount!=254
            &&vcount!=274&&vcount!=294
            &&vcount!=314&&vcount!=334
            &&vcount!=354&&vcount!=374
            &&vcount!=394&&vcount!=414
            &&vcount!=434&&vcount!=454
            )
            h_dat_2 <= 3'h3;        //黄
        else if(vcount==94||vcount==114||vcount==134
            ||vcount==154||vcount==174
            ||vcount==194||vcount==214
            ||vcount==234||vcount==254
            ||vcount==274||vcount==294
            ||vcount==314||vcount==334
            ||vcount==354||vcount==374
            ||vcount==394||vcount==414
            ||vcount==434||vcount==454)
            begin
                if(hcount>=220&&hcount<=580)
                    h_dat_2 <= 3'h1; //红
                else
                    h_dat_2 <= 3'h3;    //黄
            end
        else
            h_dat_2 <= 3'h0;   //黑
    end

    always @(posedge vga_clk) //产生五子棋棋盘黄底红边-竖条
    begin
        if(hcount > 210&&hcount<590&&hcount!=220&&hcount!=240&&hcount!=260
        &&hcount!=280&&hcount!=300
        &&hcount!=320&&hcount!=340
        &&hcount!=360&&hcount!=380
        &&hcount!=400&&hcount!=420
        &&hcount!=440&&hcount!=460
        &&hcount!=480&&hcount!=500
        &&hcount!=520&&hcount!=540
        &&hcount!=560&&hcount!=580
        )
            v_dat_2 <= 3'h3;      //黄  
        else if(hcount==220||hcount==240||hcount==260
        ||hcount==280||hcount==300
        ||hcount==320||hcount==340
        ||hcount==360||hcount==380
        ||hcount==400||hcount==420
        ||hcount==440||hcount==460
        ||hcount==480||hcount==500
        ||hcount==520||hcount==540
        ||hcount==560||hcount==580)
            begin
                if(vcount>=94&&vcount<=454)
                    v_dat_2 <= 3'h1;    //红
                else
                    v_dat_2 <= 3'h3;   //黄
            end
        else
            v_dat_2 <= 3'h0;   //黑
    end

endmodule
