#ϵͳʱ��
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports clk ]

#���źš����ź�
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports hsync]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports vsync]

#���뿪��sw7,sw6������vga��ʾ��ͼ��
set_property -dict {PACKAGE_PIN P5 IOSTANDARD LVCMOS33} [get_ports {switch[1]}]
set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports {switch[0]}]

#vga����ɫrgb
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