-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab6_vga.srcs/sources_1/ip/dcm_25m/dcm_25m_clk_wiz.v" \
  "../../../../lab6_vga.srcs/sources_1/ip/dcm_25m/dcm_25m.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

