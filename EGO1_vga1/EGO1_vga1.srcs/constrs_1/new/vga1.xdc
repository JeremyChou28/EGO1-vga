#ϵͳʱ�Ӻ͸�λ�ź�
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports clk ]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports rst_n  ]
#VGA��ͬ���źš���ͬ���ź�
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports hs]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports vs]
#VGA��ɫ-��ɫ�ź�
set_property -dict {PACKAGE_PIN F5 IOSTANDARD LVCMOS33} [get_ports {r[0]}]
set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports {r[1]}]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {r[2]}]
#VGA��ɫ-��ɫ�ź�
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {g[0]}]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {g[1]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {g[2]}]
#VGA��ɫ-��ɫ�ź�
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {b[0]}]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS33} [get_ports {b[1]}]