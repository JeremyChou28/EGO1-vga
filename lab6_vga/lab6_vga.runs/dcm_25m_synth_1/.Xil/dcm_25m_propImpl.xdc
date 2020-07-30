set_property SRC_FILE_INFO {cfile:e:/FPGA-Projects/lab6_vga/lab6_vga.srcs/sources_1/ip/dcm_25m/dcm_25m.xdc rfile:../../../lab6_vga.srcs/sources_1/ip/dcm_25m/dcm_25m.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
