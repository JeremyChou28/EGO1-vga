#系统时钟
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports clk ]

#行信号、列信号
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports hsync]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports vsync]

#拨码开关sw7,sw6，控制vga显示的图像
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS33} [get_ports {switch[1]}]
set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports {switch[0]}]

#vga的颜色rgb
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[0]}]
set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[0]}]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[0]}]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[0]}]

set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[1]}]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[1]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[1]}]
set_property -dict {PACKAGE_PIN D8 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[1]}]

set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[2]}]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[2]}]
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[2]}]
set_property -dict {PACKAGE_PIN E7 IOSTANDARD LVCMOS33} [get_ports {disp_RGB[2]}]