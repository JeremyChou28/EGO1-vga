// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jul 30 11:03:20 2020
// Host        : DESKTOP-TSK87CH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ logo_rom_sim_netlist.v
// Design      : logo_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "logo_rom,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "2" *) 
  (* C_COUNT_36K_BRAM = "4" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.14663 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "logo_rom.mem" *) 
  (* C_INIT_FILE_NAME = "logo_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "13182" *) 
  (* C_READ_DEPTH_B = "13182" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "13182" *) 
  (* C_WRITE_DEPTH_B = "13182" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [2:0]addra;

  wire [2:0]addra;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h08)) 
    ENOUT
       (.I0(addra[1]),
        .I1(addra[2]),
        .I2(addra[0]),
        .O(ena_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [13:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [6:6]ena_array;
  wire [8:0]p_7_out;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:11]),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra[13:11]),
        .clka(clka),
        .douta(douta[9:1]),
        .\douta[8] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\douta[8]_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[9] (\ramloop[1].ram.r_n_8 ),
        .\douta[9]_0 (\ramloop[3].ram.r_n_8 ),
        .p_7_out(p_7_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[0]),
        .douta(douta[0]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[1].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOADO({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .DOPADOP(\ramloop[2].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[9:1]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[10:0]),
        .clka(clka),
        .dina(dina[9:1]),
        .ena_array(ena_array),
        .p_7_out(p_7_out),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[11:10]),
        .douta(douta[11:10]),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    \douta[8] ,
    p_7_out,
    \douta[8]_0 ,
    DOPADOP,
    \douta[9] ,
    \douta[9]_0 );
  output [8:0]douta;
  input [2:0]addra;
  input clka;
  input [7:0]DOADO;
  input [7:0]\douta[8] ;
  input [8:0]p_7_out;
  input [7:0]\douta[8]_0 ;
  input [0:0]DOPADOP;
  input [0:0]\douta[9] ;
  input [0:0]\douta[9]_0 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \douta[1]_INST_0_i_1_n_0 ;
  wire \douta[1]_INST_0_i_2_n_0 ;
  wire \douta[2]_INST_0_i_1_n_0 ;
  wire \douta[2]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire [7:0]\douta[8] ;
  wire [7:0]\douta[8]_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire [0:0]\douta[9] ;
  wire [0:0]\douta[9]_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire [8:0]p_7_out;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  MUXF7 \douta[1]_INST_0 
       (.I0(\douta[1]_INST_0_i_1_n_0 ),
        .I1(\douta[1]_INST_0_i_2_n_0 ),
        .O(douta[0]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[1]_INST_0_i_1 
       (.I0(DOADO[0]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8] [0]),
        .O(\douta[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[1]_INST_0_i_2 
       (.I0(p_7_out[0]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_0 [0]),
        .O(\douta[1]_INST_0_i_2_n_0 ));
  MUXF7 \douta[2]_INST_0 
       (.I0(\douta[2]_INST_0_i_1_n_0 ),
        .I1(\douta[2]_INST_0_i_2_n_0 ),
        .O(douta[1]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[2]_INST_0_i_1 
       (.I0(DOADO[1]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8] [1]),
        .O(\douta[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[2]_INST_0_i_2 
       (.I0(p_7_out[1]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_0 [1]),
        .O(\douta[2]_INST_0_i_2_n_0 ));
  MUXF7 \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(\douta[3]_INST_0_i_2_n_0 ),
        .O(douta[2]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[3]_INST_0_i_1 
       (.I0(DOADO[2]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8] [2]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[3]_INST_0_i_2 
       (.I0(p_7_out[2]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_0 [2]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  MUXF7 \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(\douta[4]_INST_0_i_2_n_0 ),
        .O(douta[3]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[4]_INST_0_i_1 
       (.I0(DOADO[3]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8] [3]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[4]_INST_0_i_2 
       (.I0(p_7_out[3]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_0 [3]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  MUXF7 \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(\douta[5]_INST_0_i_2_n_0 ),
        .O(douta[4]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[5]_INST_0_i_1 
       (.I0(DOADO[4]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8] [4]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[5]_INST_0_i_2 
       (.I0(p_7_out[4]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_0 [4]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  MUXF7 \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(\douta[6]_INST_0_i_2_n_0 ),
        .O(douta[5]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[6]_INST_0_i_1 
       (.I0(DOADO[5]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8] [5]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[6]_INST_0_i_2 
       (.I0(p_7_out[5]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_0 [5]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  MUXF7 \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[7]_INST_0_i_2_n_0 ),
        .O(douta[6]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[7]_INST_0_i_1 
       (.I0(DOADO[6]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8] [6]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[7]_INST_0_i_2 
       (.I0(p_7_out[6]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_0 [6]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  MUXF7 \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(\douta[8]_INST_0_i_2_n_0 ),
        .O(douta[7]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[8]_INST_0_i_1 
       (.I0(DOADO[7]),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[8] [7]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[8]_INST_0_i_2 
       (.I0(p_7_out[7]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[8]_0 [7]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  MUXF7 \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(\douta[9]_INST_0_i_2_n_0 ),
        .O(douta[8]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[9]_INST_0_i_1 
       (.I0(DOPADOP),
        .I1(sel_pipe_d1[1]),
        .I2(\douta[9] ),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[9]_INST_0_i_2 
       (.I0(p_7_out[8]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[9]_0 ),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [0:0]douta;
  input clka;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [13:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (DOADO,
    DOPADOP,
    clka,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [13:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [13:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [13:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (p_7_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_7_out(p_7_out),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [1:0]douta;
  input clka;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [0:0]douta;
  input clka;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
  wire [0:0]wea;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h9999B8C56C050601FFF69200E0F0F06D03E57A392AB698A6F462611C80FF0E43),
    .INIT_01(256'h00039DE30D2AB68ADEFD53FEFB1FDA65E3FC1FFC003C003DF01E001464BE9532),
    .INIT_02(256'hDAA0C320047FFD47FFED7000003FAD3534D183560E932E7F89101DE7947FF900),
    .INIT_03(256'hCB000BF81C0257077E87E644FDBE59F38CA5938FC000E00F9F0F8265A4A44F99),
    .INIT_04(256'hCD8A94935ACF10452AFE7E178023C03F2030FF2738E1C442668DDD697A5A6E03),
    .INIT_05(256'h1D8FFF037D8A0303666F1D0ACC99FE905750B8379643EC007818FE99D8E1D265),
    .INIT_06(256'h9B9A06414E6100BB0353880C03FE452DDD20F6E76DBAA411F62B309EA535DD88),
    .INIT_07(256'h998027FEA989289863F4946AE5D899B8BB210134AD143803FE2955F6D2C42712),
    .INIT_08(256'h5D1223C3E91D7DD2901916E4C0EFFC56756E2844C56114CD10E07E5606F857CC),
    .INIT_09(256'hABCD6C7FF40FF3EC9F37B22456CB63738FB292EA5B5B4A0A1FE9DA79451BF5D8),
    .INIT_0A(256'hF225885A76A3351EEE6E8DB3DFB0FF639A0F414CF29A618250F41860CBAA44ED),
    .INIT_0B(256'hBD61FCB573C64817084C2E02AC6A3F8D8B8FBF83A3E18119548BF890F94D855D),
    .INIT_0C(256'h4193D13AFACCCEC8793E60763099C5D1BE1A4351C405712E6279EF28C4F7D55E),
    .INIT_0D(256'hFC4C0993C74BF930416205FECCDFBF12D61D7DFCF06B80B9ED2A74576F20684F),
    .INIT_0E(256'h74460E55A77E2FBF86592722262A35D3BC4B5AF263911BC4A8210F57921BBDF1),
    .INIT_0F(256'h6B01C466625606C4F56E6817DDBC8320D2EC80AFE4ACE19E26A51AE27AABD210),
    .INIT_10(256'h453A9DB5F1C867B87313BAD101ED406CFB2D1B4285457167F87BA6793DDE7153),
    .INIT_11(256'hB77C9965B6AFCC0F704EF2921616599BD36F1A14A1B03288DABF1401E571F2C9),
    .INIT_12(256'h953A1653F2860544B56BF428A539325A604A098AE8A6F02A33B9854B98D9B0A9),
    .INIT_13(256'hFA85E284C50BF9060C5A3C4A3AD1B0D1C0A582726F77FD234A53CDE0C24FB7F6),
    .INIT_14(256'hFF0FE65DF765BA3FC694F6C7526A489D7E2E55ACDA3061823A5031576D07A972),
    .INIT_15(256'h60308FE2492799E98508AAE068349470A26BA59B43CD977DDA3314BCA67E7DF4),
    .INIT_16(256'h641F9EF1C683C8006771C9E862963965A7BFF30C2AEE0FCF964224413055B837),
    .INIT_17(256'hD99E7D15E54C0A19F0A8D44A17389896C5C9C0F85E5140C3A38528B5A2379591),
    .INIT_18(256'h75D7A30CB1A39A1CFFF04B767CEB42DC52577F9F9B227F8184886A7A518FF75A),
    .INIT_19(256'h09D60B20C1D523CC8EBB7F032F46110EE9C4B807141343B9C772E25A1EB82F03),
    .INIT_1A(256'hB8414F320AD425AAC7332AD8007EF9839FBC6B0F497C78217490B1C40B6073F2),
    .INIT_1B(256'h374FC10892AABFA6B8DBC2D5335FC7C660470993D0E402C403926E78C9C84DA6),
    .INIT_1C(256'h82D6F1F1C2BE0ED43600FBFA7A4995ED043B4A8F256CB61C82F4495E89E24DA6),
    .INIT_1D(256'h423DC83A6D96B0670F336541AE76324B934283D29009F42695442F846A28BBAA),
    .INIT_1E(256'hAC3CEDF40FE82DF1DA878690E1352224F75DD187B53176022C0D98F260C6657B),
    .INIT_1F(256'h50088AEF1579701C05D33BCF54D05807CE40A525398E38A1458C21711F1E1880),
    .INIT_20(256'h7222F9182D633E8DC3CA204BC0782725F58DF6E7A4CB5BACB35971FB35405043),
    .INIT_21(256'h3F0D6A163ABA96551A5255CBAE2360F214907464C4D9C819EE1DC7C9EC63211C),
    .INIT_22(256'h396C322FB37A3F98E19F4DA1AA6ED91802BB586C96061826399CD18FCDE8F554),
    .INIT_23(256'h730003F77B93CF6B32F119D8D8938B0807649229D26C675385795927F9374A90),
    .INIT_24(256'h36692B4AE2DD67FDAB36F7B4AC7961A91625175DFC8ED03840F6C8B027C59138),
    .INIT_25(256'h985C852EF8D69432AED6AFFD1ABC72ECFDD86641783662BEA5E96102ED63F00E),
    .INIT_26(256'h88DCBDC226261FEE1D765867191949ED17F6DAA6F29A441FD3E79A8266C73F53),
    .INIT_27(256'h3F017CC76E2CA916940B8840AD0553A51AC96EC8AD28C76F1E17A1A8235B80AC),
    .INIT_28(256'hF83B7B9DA3848C21E480629FED5B7167765C4DA62B8579461CF4BB98C38609BF),
    .INIT_29(256'h587C7D2A75A3EC8045A7145B3BE670D6048DE63BDC670002952E1F9349F35441),
    .INIT_2A(256'h3F86383F107DEF3E86497263E5639CF2F5155257DCE9951C8709018A23618AA1),
    .INIT_2B(256'hDDF01F3AA8FB713B77FF45B41C7DFE19951E79C97AF65DAB6C514BE094BF3AE3),
    .INIT_2C(256'hC5D3CFE7FD2C859DBA27C788DF7C98DC9045397ED4BA787BFBFC1B943EB2D14C),
    .INIT_2D(256'h0ABB13E4A2DFC58E4A318D8E1F1F0FFF08BEE33501E74D32EBAACFD150B99389),
    .INIT_2E(256'hAFD0C01C3C79E2DEE13ECDDD8AD9C03BBFEA88B75DAB4C600E1FF1F8D5DBE4F5),
    .INIT_2F(256'h0F7C3D0F6A67F958752A61F7FF0F1F7826E37111758F1B9BF8EE95B0CCA07ACE),
    .INIT_30(256'hA403DA007C3EDE01D5AC2E88DC6035B3E88755F86C9851FE1E3E1F0F0009E562),
    .INIT_31(256'h0FF46AB9CCC0C0119CD5AD34072400F87E0C03237023FCA0F33183DE18FAE2E7),
    .INIT_32(256'h73507FE063E1F890078F810F0A808CFC1F58F9BBF5D5181FD001F0FA1E074641),
    .INIT_33(256'h0000000000000000000000000000000003FC600AEF4A6850F12ABE0C6EFAC2D9),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [13:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ;
  wire [13:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7E7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7E7D7D7D7E7F7F7F7F7E7E7D7D),
    .INIT_01(256'h7A7A7A7B7C7C7D7C7E7D7D7F7F7F7E7F7E7E7E7E7D7D7E7E7F7E7D7C7D7E7F7F),
    .INIT_02(256'h605B555352514E4D4F4D4A4A4D4E4D4C4D4F515356595B5C5F6365676C74787A),
    .INIT_03(256'h7E7D7D7E7F7F7E7C7B7C7D7E7E7D7D7C7C7C7C7B7A7B7B7A78767676746C6461),
    .INIT_04(256'h7D7D7D7E7E7E7E7E7E7E7E7E7F7F7F7F7E7E7E7E7E7E7E7E7E7D7C7C7C7D7E7E),
    .INIT_05(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7E7E7E7D7F7F7F7F7F7F7F7F7F),
    .INIT_06(256'h7C7D7E7E7B7A7C7E7E7E7D7C7D7E7F7E7F7F7F7F7F7D7C7F7F7F7F7F7F7F7F7E),
    .INIT_07(256'h4A49494A4B4B4A4848494A4A4B4C4C4A4D4F4E4E4F4F4D4D5560686C71777C7B),
    .INIT_08(256'h7F7E7D7D7D7D7D7C7B787068605750524F4B48484B4B4A4552564D494F524E4C),
    .INIT_09(256'h7E7E7E7E7F7F7F7F7F7F7F7E7E7E7E7F7F7F7F7F7F7E7E7E7F7F7D78787C7F7F),
    .INIT_0A(256'h7F7F7F7F7F7F7F7F7F7F7E7E7E7E7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7E),
    .INIT_0B(256'h7E7E7E7E7D7D7D7D7D7C7C7E7E7E7F7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7F7F),
    .INIT_0C(256'h3031323334353B3D4042444647474A4B4C4D4E4D4C4C595F6973797C7D7D7B7C),
    .INIT_0D(256'h534F4F5051504D4E4B464546423C392D2B33362D272829292929292929292F30),
    .INIT_0E(256'h7F7F7F7F7E7E7E7E7E7E7D7C7B7B7B7C7C7E7E7E7E7C79797878767169645A58),
    .INIT_0F(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E7F7F7E7E7E7E7E7E7E7E7F7F7F7E7E),
    .INIT_10(256'h7E7E7D7C7C7E7F7F7F7E7E7E7E7E7E7E7E7E7E7E7E7F7F7E7F7F7F7F7F7F7F7F),
    .INIT_11(256'h1E23282D303735353A424A4E504C4B4B4C4E545E677577797A7B7C7E7E7E7E7E),
    .INIT_12(256'h1F1C1D1E1E1E1F1F1C1B1B1A191B1C1D1D1C1B1C1C19191919191A1B1C1C1B1B),
    .INIT_13(256'h7E7E7E7E7F7E7D7D7D7E7E7873746C615956545250504F4D4B464037312B2925),
    .INIT_14(256'h7F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7F7E7F7E7E7E7E7F7F7E7E7E7E7F7E),
    .INIT_15(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_16(256'h1F232B32383D464D4E4C4C4E49505B666F767A7C7D7C7C7C7E7D7D7D7E7E7E7E),
    .INIT_17(256'h1B1E201F181A1B1B1919191B201F1D1C1B1C1E1F231F1C1C1B1817181D1F201F),
    .INIT_18(256'h6A65636458555352514E4844373027201C1B1C1D18171A1F1F1D21272827221C),
    .INIT_19(256'h7E7E7E7D7E7E7E7E7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7F7F7E7E7E7D7B7972),
    .INIT_1A(256'h7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7E7E7E7F7F7F7F7F7F7F7F7F7E7E7E7E),
    .INIT_1B(256'h3540494E4B48474A525D647979797A7B7B7B7A7D7E7E7E7E7E7F7F7E7E7E7E7E),
    .INIT_1C(256'h1C1D1E1818181B1F252B2E2E2C2E3435302B2B21201E1B18191C1F1F2023272D),
    .INIT_1D(256'h2926251D1D1D1F2121232523252E39382E2B2F3F2F2221211B17191D1E1E1E1D),
    .INIT_1E(256'h7F7F7F7E7E7E7E7E7E7E7E7D7E7F7E7D7A7573706E69645F5A5653584F41352D),
    .INIT_1F(256'h7E7E7F7F7F7F7E7E7E7E7F7F7F7F7F7F7F7F7F7E7D7E7D7D7D7D7D7E7E7F7F7F),
    .INIT_20(256'h4D4C47515F6D757B7D7D7D7D7D7E7E7F7F7F7E7E7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_21(256'h4045504944433E342D2D39322822201F1D1B1A191A1C1D1D1F21262F3B464C4D),
    .INIT_22(256'h3C4743414347453F3C3E2F3D3C27191C1F1B1A1A1A1919191A1A1B1C1E232B36),
    .INIT_23(256'h7E7E7E7E7D7B77726D6A655F5956544E433A22211F1D1B1917151918181B222D),
    .INIT_24(256'h7D7F7F7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7E7E7E7E7E7E),
    .INIT_25(256'h7A7C7C7D7D7E7E7F7F7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7F7E7E7D),
    .INIT_26(256'h46474237291E191B1E1B1B1C1E1E1C1B1C1E2022272D353E444B4D4E4E515D6D),
    .INIT_27(256'h3C3B403E32251F1C1A1F1E1D1C1D1D1E1E1C1B1B1E242E373C382F2A2F34363D),
    .INIT_28(256'h5D5853483B2E231C181E1D1C1B1B1C1D1E201E1C1C1D212B34383B4147494741),
    .INIT_29(256'h7F7E7E7E7E7F7F7F7F7F7F7E7E7F7F7F7E7E7E7E7E7E7E7E7D7976706A65615E),
    .INIT_2A(256'h7D7F7F7F7F7D7B7F7E7E7F7F7F7F7F7F7F7F7F7F7E7E7E7E7F7F7F7F7F7F7F7F),
    .INIT_2B(256'h1E1C1B19191A1E211F1E1D19191D262D313A444A4A494A4C68727A7B7A7A7C7D),
    .INIT_2C(256'h201D1B1C1E1F1D1A19181B2125272B303B4349494847433E37342F271F19191C),
    .INIT_2D(256'h353E45464030211D1C1E1F1E1F293A483E3D3F42413E434A4E38262425201B1B),
    .INIT_2E(256'h7D7D7D7D7C7C7E7E7D7C7B7C7D7D79756A69686868604D3C302C211B1E1D1E28),
    .INIT_2F(256'h7E7E7E7E7E7E7F7F7F7F7F7F7E7E7E7F7E7E7E7E7E7E7E7E7F7F7F7F7F7E7D7C),
    .INIT_30(256'h393A2B1F1C1A172123272F3B4851573F475567767C7B777B7C7B7B7F7F7E7F7E),
    .INIT_31(256'h1A222D34394047434B4A3B2E28221A1B19181A1C1C1A19252C37392C1D1B2230),
    .INIT_32(256'h1A181A1B1B212A3733343B4243413F3B43494233241C1B19191A1C1E1F1E1D17),
    .INIT_33(256'h7E7D7A75716E6D686861503C2B211D1D16151E24253248513D303B484134321E),
    .INIT_34(256'h7F7F7F7F7F7F7F7E7E7E7E7E7E7E7E7F7F7F7F7F7E7D7D7A7B7D7D7E7C7A797E),
    .INIT_35(256'h171A212A30334A4A4A4B54627178787C7C7C7F7F7E7E7F7E7E7E7E7E7E7E7F7F),
    .INIT_36(256'h3B34354149494537261C1A1B1B1B1C1F2631404A494236383021181C22231917),
    .INIT_37(256'h433636434234333B413E33271F1B202121201D1A17151E1F2122201D1F242835),
    .INIT_38(256'h3828201B19182642524A4753513D35464F4C4A473D3425201E1D191B2E433845),
    .INIT_39(256'h7E7E7E7E7E7E7E7F7F7F7E7E7D7D7D7C7C7C7E7E7E7C7B7875726E6965625E4E),
    .INIT_3A(256'h4A4A4C555D69757A7B7D7E7D7E7F7F7F7F7F7E7E7E7F7F7F7F7F7F7F7F7F7E7E),
    .INIT_3B(256'h171A1C1F211C1C1B1D26333B3C473D332E281F18151C1D1D1D1C1C1E212D3946),
    .INIT_3C(256'h1D23211E1E141617191A1B1B1B1918181818181B1F263B46382216171A231D18),
    .INIT_3D(256'h1C1D34484747413E4754544B47372B2120221F1B1B3847422B26383E322B1E18),
    .INIT_3E(256'h7E7E7D7D7C7D7D7D7C7C7C7B7975716D6C685D4F44201C1A1B1D1D1D1F232423),
    .INIT_3F(256'h767B7D7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7E7F7F7E7E7E7E7E7E7E7E7E7E7F),
    .INIT_40(256'h46433F3D2D282B363C372F2B1A1C1D1C1B1A1C1D151C2A374045484A525E686E),
    .INIT_41(256'h3232312F2C292624211F1E1E211D1B1E23231C1516191D2123262F3633343A43),
    .INIT_42(256'h454544474B4437261B191E231E1D1E20211E1A182019181D2121242935333231),
    .INIT_43(256'h7A77736F746D645A4E3B291F1E1D1D1F1E1B18181B1B293E4A5256515B4F4240),
    .INIT_44(256'h7F7F7F7F7F7F7F7F7E7E7E7F7E7E7E7E7E7E7E7E7E7E7F7F7E7D7D7C7A7D7D7D),
    .INIT_45(256'h19171419191A1D20201D1A241E1A1C25334049484E535D6C75797D7E7E7E7F7F),
    .INIT_46(256'h4F4B48433D3730261E1D21211F1C191820303E3E3627202D3E38252524201B1A),
    .INIT_47(256'h231E161B191C252B323F4C4F575B5755575A5A52504F50535556565352515151),
    .INIT_48(256'h1A171A1F1C1715171C1F1F232928212C464F432B3F4C4D4B4946464A3F2E2120),
    .INIT_49(256'h7E7E7F7E7E7E7E7E7E7E7E7F7E7F7F7E7D7C7C7C7D7C787675726E6759463424),
    .INIT_4A(256'h3131221F1E1F20232A303E4247515B6169737D7D7D7E7E7F7F7F7F7F7F7F7E7E),
    .INIT_4B(256'h464338332C27221E1D1E161F211D26373527221F1D1C1E2223231D1E20252A2F),
    .INIT_4C(256'h5B585A5E5F59575959565B5A575552504F4E535352514F4D4B4849494C50504C),
    .INIT_4D(256'h1F1C1718191D252C353F493630445446312B181919181B2736404A586465615E),
    .INIT_4E(256'h7E7E7E7E7F7E7E7D7C7B7C7B76716F6D655C4234251E1C1D22273441473E2F25),
    .INIT_4F(256'h222B343F474A4954667A7C7C7C7D7E7E7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_50(256'h24211A191F21202E42402C1D1B1C17171C1F1F1D1A1A23313C362D231C1A1B1E),
    .INIT_51(256'h5852555656545354554F4F4E4D4C4F525451504C494B4F504E514B4747463D2F),
    .INIT_52(256'h3A4F3E2A23241E191A263042556062646766626061615F5C5C605D5C5E5C5756),
    .INIT_53(256'h7A7374726F6B5F4A36221A1A2735372F284B5356514B43311F1A18192020161F),
    .INIT_54(256'h506B7B7A7A7D7E7D7E7E7D7D7D7D7D7D7E7E7E7E7E7E7E7E7E7E7E7F7F7E7C7B),
    .INIT_55(256'h27231E1B19191B1E1C2E4142312221283B3E4B4C331E202821232833414C4F4E),
    .INIT_56(256'h524F51545250504E4D4E4E4F4E4D4B4A4A4A4D4D49494D4D463B2D2320212325),
    .INIT_57(256'h61696964656765656565625F5E606261605A5859595C5D5A5857575656565351),
    .INIT_58(256'h1B1F212128394A534D464845332A333A392A261F1C1B192323261B1D272D4150),
    .INIT_59(256'h7E7D7E7D7E7D7D7E7E7F7F7F7E7E7E7E7D7C7E7E7B7A77716F6A6C6455371B21),
    .INIT_5A(256'h33282B3C4949422D313C423B2D1F15191A1E252F3B464D4E535C6C7A7D7C7E7E),
    .INIT_5B(256'h4E4D4C4B4B4C4C4E4C4E4E4B4B4E4D4A4B4A4134271F1C191E201E222D343441),
    .INIT_5C(256'h6564616162636366615F5E5C5C5D595D5B595758595959585556565452514F4F),
    .INIT_5D(256'h444C514338424F3B241B1D23221A201C2C35495B5E666B6B706E6A6A69656365),
    .INIT_5E(256'h7E7E7E7E7E7E7E7E7B7B7B7775726D636B613A272C251D20395259524C4A4A47),
    .INIT_5F(256'h3337424436271D1B1C1E212936424D494C5E7176787E7F7E7D7E7E7E7E7D7E7D),
    .INIT_60(256'h4B4B494A4B47514E4C4E514E443A2A28211919202A2E26282D35414846403737),
    .INIT_61(256'h62605C5C5D5A5B5A58575757575859575554545554525251504F4E4E4E4F504C),
    .INIT_62(256'h1B1F1D191F3147545D6C7472706D686A6A6A6E6D6A6A67676765646564636462),
    .INIT_63(256'h7D79706C6B67654A36271C1717201C27343E484E4E4B605B554F51513E202218),
    .INIT_64(256'h1E1B1A1F283D4951535A64717D7E7D7C7C7D7E7E7E7E7F7F7F7F7F7E7E7E7E7D),
    .INIT_65(256'h4A484A4D4F4F40312A211819202439483F2A1E212744483C2A221F1F2525211F),
    .INIT_66(256'h5F5E5B5857595A575355575654525354545352504E4F4B4C4D4C4E4E49494B4C),
    .INIT_67(256'h6F6E6C6A68686967696D6B686B6969696867666463626162625F6062605F5E5F),
    .INIT_68(256'h1F1C191A1B222833424F534C424148565F5A5151553E291919273D576C6E706F),
    .INIT_69(256'h495464727B7C7D7C7D7D7D7E7E7F7F7F7F7E7E7D7D7B7A77716C6C625343281C),
    .INIT_6A(256'h3D2D22202731383530333C443229181622251E1C1B18181C1E202327243A4847),
    .INIT_6B(256'h575855545252535453514F4D4F4E5152504F4F4C474B4D4946474A4C50474344),
    .INIT_6C(256'h6E6B696C69696A6A696766656665666563666763605F6061605C5A5A5C615C56),
    .INIT_6D(256'h191B252E4D4E3D24202C2E2527282D4058686D696F6F716D6B6F717170706D6D),
    .INIT_6E(256'h7C7C7D7E7E7D7C7C7D7D7D7C78736A64666752332A2624201A1C201A151C211E),
    .INIT_6F(256'h2D303021201F21201A181F201D1B1A1A1A1A1A1E28343F494F565F74787C7D7D),
    .INIT_70(256'h5151514F50524D423B3A383B3A3A3D4750514C45494C4C494235291E1D1D2027),
    .INIT_71(256'h6969696A67676563646158494644444343464B555F5D56595A56575555545352),
    .INIT_72(256'h18161E2F475B676B6D726F6D6C6D60535453525053555A646A6C706A69696B6B),
    .INIT_73(256'h7E7D7B73716C61554B37201C17131717161C1C1B1E212020232A302B27222221),
    .INIT_74(256'h1B1D191E201C1A1D1F1F1F20253544494B51636C777C7E7C7C7D7E7D7D7D7D7E),
    .INIT_75(256'h22232125282A323F484A4C51524D4A49453E352A201D1E1F22251D17171A1919),
    .INIT_76(256'h594C2E29252425272F374B5B5C565B5D595B5959585756555454505252463023),
    .INIT_77(256'h716C716A65482C262220232A313E55676C6D6D6B6A6B6B6A6A6B6B6766646362),
    .INIT_78(256'h211D1724232A37404033221B14151B1F1E1B1F221C15172131435563686D6E6C),
    .INIT_79(256'h191A1C1F28353E454C5460717B7D7D7D7E7E7E7E7E7F7E7D78746968665A402B),
    .INIT_7A(256'h4A4B4C4E4D4A494C4F533B251F201E19161C171B1E1C222B2D3C444335261F1C),
    .INIT_7B(256'h354A5E605A5E5E5A5C58595B5B5A585553545757482E1F202325211F273B4D50),
    .INIT_7C(256'h1F232A303F5A6E706C716E6C6C6B69696A6E6A696969675B4A2A24202021242C),
    .INIT_7D(256'h37262828241C18191D171A1D242C314767676C6B6F706C73717069644525201E),
    .INIT_7E(256'h4A5565737A7C7C7D7E7D7E7E7E7D77706A60534E4A36201A1D2137404F574C42),
    .INIT_7F(256'h514D4437281F1A1A1F223140464B47392F251E1E1E1C1F252A1E181E2934414D),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (DOADO,
    DOPADOP,
    clka,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [13:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [13:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h5C5A5858595856535653564A2E22242124242423374D4D494C4E504E4B49494A),
    .INIT_01(256'h6D6D6B696A6D6D6B6E696B6A6467614C2A231F2323222A374F63605B5F5E5D5D),
    .INIT_02(256'h281D1C2342656A6865686B6C6D6E6E6B6D6862452722232222253342596E6F6D),
    .INIT_03(256'h7E7D7C7B7A75685D5F5F4124201E2439434040464D52545651443A36363C3F3D),
    .INIT_04(256'h3740402C1B1A1D211E233241464543382C201E2127344047515861717C7C7B7E),
    .INIT_05(256'h58584B2F22221D202325273C5353504C4E504F4D4B4B4B4F4D4A453B30251E36),
    .INIT_06(256'h65696B696C644F29221F22222129344A60615E626060615F5F5F5E5D5C5B5A5C),
    .INIT_07(256'h6D6B69696C6D6D6B6762452722232120233140576D70707272716E6D6E6C6A6A),
    .INIT_08(256'h472C1B201F1E2B2B475241363F453F4C4C4F4E453E3933212033485962646F6C),
    .INIT_09(256'h443F33261E1C251F1A1A1A1D273247504F52697C7D7B7C7C7E7D787169615B51),
    .INIT_0A(256'h282A3D52514E4D4D4E4F4E4D4C4B4B4B4C4D4A403125181C2A35312E353E3D42),
    .INIT_0B(256'h222222232D3854686A6665605E5E5B5C5D5C5A5858595956564B342828242527),
    .INIT_0C(256'h63472923232120243241586D72736F70706F70706F6D6D686A6D6B6A5F4B3028),
    .INIT_0D(256'h50565145444C58575A5A5244322227324F656962616E6C6C6967676A6D6E6C68),
    .INIT_0E(256'h1B1D1F262F404948495E70777A7D7B7D7C73675E5A593F32211A1B1E2B40524D),
    .INIT_0F(256'h4F504F4E4D4B49494C4D483D3425232329363F392C29251D181A2227271B1918),
    .INIT_10(256'h52545254545353535251515050504D4A402E23201D202123253A50525151504F),
    .INIT_11(256'h3C4B59595A5A5A5B5C5E5F5F5F605C5C5D5C5B53452B2622232223282F415052),
    .INIT_12(256'h423B332A1F3F4D5F666765646564656666686A6C6D69645F4326212220272833),
    .INIT_13(256'h59626F7D7D7B7B766B5F58555332251F1E191B314A463C373E474B4D50484444),
    .INIT_14(256'h4D4D4946211E1C22343D3222242A31384146403728221C1B1B1C21263742484F),
    .INIT_15(256'h2122201F2222252522212324252525273B52565857545251525251504F4D4B4C),
    .INIT_16(256'h1F1F2021211F1F21222525211E1E212525211F1F242A2623211D1F1D23212020),
    .INIT_17(256'h6065665F626264666869696A6A655E43272324221E1C21222629232121201F1F),
    .INIT_18(256'h59534B442C1C18201E191F273139392D232730364E525343291E262F535D6160),
    .INIT_19(256'h28384A46453E3126211E1D211D1A1A1C1C1D1F2C3546535356697C7B7B756A60),
    .INIT_1A(256'h222121242324263A5155585755525151515150504F4E4E4E4F4F4E4337251B1E),
    .INIT_1B(256'h222427232324252523222121231F212121272524222020232422202021212122),
    .INIT_1C(256'h6566676B655E412520201E232226252526201F23222121201F20232221202021),
    .INIT_1D(256'h1C191818171D231D141A2A29343E342121384C585E5E61616064636664646465),
    .INIT_1E(256'h1B1718181A1E2222212020253B4C474B61727B7B706158554F40312519171F21),
    .INIT_1F(256'h555855545353525251515050504F4F4E4E4E403C2D201A161824231D17161B1E),
    .INIT_20(256'h202026272324211D221F22212020212222221F201F21262726262021252A3E53),
    .INIT_21(256'h27251D1B202021242123201F2021201F202323222020211D1B1D23211F1C1C1E),
    .INIT_22(256'h1C171D1F2424222E4452585D5C61605C6363656362636362636665605C432927),
    .INIT_23(256'h1C22233A4B464D646E7A796C5B53514935221F1D1D1D1D1C1E221D1C1A1C2021),
    .INIT_24(256'h54515150504F4E4E4E534B321E20231D18191C1F1F1C191A1D1E1C1A1A1A1B1B),
    .INIT_25(256'h434445454544444647454541414545414041414243505C585655565757565554),
    .INIT_26(256'h464544454745424245454545494C484243454647474847454241424347433F45),
    .INIT_27(256'h5A5A605A5B5B5B63605F5E5F6263626365666466544042464549464845444643),
    .INIT_28(256'h727366574F4C422D191E211E191919191B1B1C1C1A1A1C1D1D1C18181D25394F),
    .INIT_29(256'h50523E2E281C16191A1D1E1C1B1B1A191B1C1F21201C1B1C1923363F444D5969),
    .INIT_2A(256'h5E6161645E6160645F60615A5A5C585B595958575756555454535251504F4F4E),
    .INIT_2B(256'h70706F6F6F6F6F70706F6F6F6E6E6D6D6D6D6C6C6B6A6A6968696968696A6763),
    .INIT_2C(256'h5E5E5F606061626365616666676C6B6A68696B686D706A6B6A6C6F6A6C706E73),
    .INIT_2D(256'h1D1D1B1D252C29201C19191E211F1B191B1C1F2B3A444C575858595A5B5C5D5D),
    .INIT_2E(256'h1A1A202B333430272D2F29221F1F201D23343E454D525C6A6963524C423A261D),
    .INIT_2F(256'h625E575B605A5B5B5A59585858575655545453525150504D4E40362D201E201B),
    .INIT_30(256'h6E6E6D6D6D6D6D6D6D6C6C6B6B6A6A6A68666260606365676B6A6A5E5F5D6165),
    .INIT_31(256'h6165605C616162646465656D726C6C6D686C6D6F706B6D6E6E6D6D6D6D6D6D6E),
    .INIT_32(256'h28272F2D1E191D1B1A1E2E444F545A575758595A5A5B5B5C5D5E5F5F5F606165),
    .INIT_33(256'h3A2D1E1A1917181B2A374450545B63625E504A3F37261F1C20211F21272C2D32),
    .INIT_34(256'h5B5A5A5A5958565655555453535253514A432E1A191A202325211D1E2225323A),
    .INIT_35(256'h222121212120232224262A32425067676053362921221E1D2028415A5E625D5C),
    .INIT_36(256'h323E5567686B4931282623242427242424242424232322222222222222222222),
    .INIT_37(256'h1C2E4652525255555657585859595A5B5C5D5D5D5E5F635C55412D2723232729),
    .INIT_38(256'h323D484C525A59584E47362D201C181A1D232E394040393D382A232626201A18),
    .INIT_39(256'h5656555555524D4E4C321B1D1C1B1A191D252D323322292B231C1A1B1C21222B),
    .INIT_3A(256'h21222A3D50646663573529242624222228415B5E5E5F5E5D5C5C5C5B5A585757),
    .INIT_3B(256'h2724242221212222222222212022222222222323232323232222222222211F1F),
    .INIT_3C(256'h555657575858595A5B5B5B5C5D5C57523C272221242728303B53656466492A23),
    .INIT_3D(256'h452F261D1C1D1D20273136342F302F2A201715181D1E1F24354A545251535354),
    .INIT_3E(256'h361D1F1E1C19191D262E34373D3A352F28222020171B27303C4A50575251524C),
    .INIT_3F(256'h3425212021222429435F6362605F5E5E5E5D5C5B595959585857575655505554),
    .INIT_40(256'h242323222222222222232323222222222222222225232426282E41536C6D6A5C),
    .INIT_41(256'h595A5B5C5F5B573F26201F2220232D3B5568696C482922272524222222232324),
    .INIT_42(256'h2C2925232A2F2F271E1918191E232A394A515153515152535455565657585959),
    .INIT_43(256'h1D232B2F29221E1B1716181E222D333B4545484E4C4E4C462D25201F1E22282C),
    .INIT_44(256'h5E626162616060605F5E5D5C5B5B5A5959585859565956381E1E1C1F20201F1C),
    .INIT_45(256'h30303030303030303030302C2D2F33363D4A576968685B342724221F22242842),
    .INIT_46(256'h2526282428323E536363655139312F2D2F303330303131323232322F2F2F3030),
    .INIT_47(256'h23231A1E262E3A464B4C4F4F50505152535454555657575758595A5755533E29),
    .INIT_48(256'h201E191A252F3E4C4B4B4C4D4E4E472A211D1B191A20282C2C2C2D293636251D),
    .INIT_49(256'h605F5E5E5D5C5B5A5A59545456533A2524221B16141C273034353A3936302823),
    .INIT_4A(256'h707073716F6C6B6B6D6F706C6B5F362825202326282A43616665646362626261),
    .INIT_4B(256'h616565616567696A66686A6A6A6A6B6C6C6D6F6F6F7070707070717171707070),
    .INIT_4C(256'h4D4D4D4E4E4F5051525253545555555657585754513B262221221F25313D5161),
    .INIT_4D(256'h484B4E4D4C45271E1A171B191B22262627292A25211E1813161D2229313C494E),
    .INIT_4E(256'h5A5D5E5B543C26221F201E1C1C1A1A1D221F2A322E2825221E1E1B212A3D4E4C),
    .INIT_4F(256'h6F6E69685C3528241E20232427426269676665646363626161605F5F5E5D5C5B),
    .INIT_50(256'h6B6A6A6A6A6B6C6D6E6D6D6E6E6E6E6E6E6F6F6F6F6F6E6E6E6E6E6D6D6F7171),
    .INIT_51(256'h51515253545455565657544F392522201F1F2634405260606562656863646866),
    .INIT_52(256'h1C1F23292A241E232E30332F241E201F1B1A202836484F4C4A4C4C4D4E4F5050),
    .INIT_53(256'h191B1B1C27363C3A36352E231B191B1C1E1F262D3C49474B4A4A494A4528211F),
    .INIT_54(256'h2323242945636969676665646362616160605F5E5D5D5C5B5C5A5C5C40221C1A),
    .INIT_55(256'h2E2E2E2E2E2D2D2D2E2E2D2D2D2D2C2C2C2B2C2A2E384459686B6A5C36272324),
    .INIT_56(256'h53544E3A241F21202225313B4E5F605E49362F2F2E2D2A2B2B2C2C2C2B2B2B2C),
    .INIT_57(256'h393C35261C1C1C1A1E252732494F4A4C4C4C4D4E4E4E4E4E5050505152535354),
    .INIT_58(256'h39342B23202020181B2530414F52584A4A4A4A4429211D1B1D1B263434343A3C),
    .INIT_59(256'h68676665646362616161616060605F5E5C5C5A3F221E1D1E23211918212A2C3A),
    .INIT_5A(256'h2222232324242424232522252D384D656D7062392724272121212543656A6868),
    .INIT_5B(256'h26303B4F61605D4129202122221E211F20212121212223232323232222222122),
    .INIT_5C(256'h242833474D494C4B4C4C4D4D4D4D4D4E4E4F505152525253534C39241F222125),
    .INIT_5D(256'h2F3740494A504E4F4E4B452B221C191818222A25201F1B191D1C17161D21211A),
    .INIT_5E(256'h63636362626261605C55391E1A1B171C1B181B252A281D1F1F1D1A1B1D1E2325),
    .INIT_5F(256'h221F232F3F566870736337221D202324242846676C696A696968676665656464),
    .INIT_60(256'h25252524202422222221202020202121212020201F1F20202021212222222322),
    .INIT_61(256'h4B4C4C4C4C4C4C4D4D4E4F505151504F48362420222125252F394C5C5B58472F),
    .INIT_62(256'h4B453029201C1F1E2324201F1E1A1C1F1E1A191D201E17212733454A484B4B4B),
    .INIT_63(256'h4E341C191A212424242B363B393E3C373027211E1C15192D3B46515860525250),
    .INIT_64(256'h5D38292322212329314B676D6F6B6B6A69696867676666656463626261626259),
    .INIT_65(256'h2625242425262626262626262627272726262626262825262429323D506D6D6A),
    .INIT_66(256'h4D4E4F5050524F493B2D2827222427333C4A58595A3D2E2B2826272427262727),
    .INIT_67(256'h2830393C393A3A362C231E1916181D222E4049494B4B4B4B4B4B4B4B4B4C4C4C),
    .INIT_68(256'h181C252C302E29241E1A18191E233947494F555E5858544A45362F231D1C1E23),
    .INIT_69(256'h6D6F686A6C6B6B6A6A696969686767666564636362615344301E1C1D171A1C19),
    .INIT_6A(256'h6B6C6C6C6D6D6D6D6D6D6D6D6D6D7170716F6A72726F70766E767A7A75716F6B),
    .INIT_6B(256'h535A5E5A5A5B605C59585455605E63605C616162626364656667696A6A6A6A6B),
    .INIT_6C(256'h1D1E1F211C1B1C273945494A4B4B4B4C4C4C4B4B4C4C4C4D4E4E4F4F4C4D5052),
    .INIT_6D(256'h1B19191C213C4D4D535E6960615B4B453A32211A1A1C1D1E25272119161A1E1E),
    .INIT_6E(256'h6B6A6A696868686767676764604936281B1A1A1E21293338383A3E3E39312921),
    .INIT_6F(256'h6B6B6C6D6C6F6E6F6D686F736D6A6E656C6D6B7471716E71726C6F6C6C6C6B6B),
    .INIT_70(256'h57555959585F5B575B5B5C5D5E5F60616263646565656666676767686869696A),
    .INIT_71(256'h3C464A4B4B4B4C4C4C4C4C4C4C4C4D4D4D4E4E504F51504E50514D4B4E565555),
    .INIT_72(256'h627167675F4B463F39241A181B191B252C2A282A2B2B29241E1B1A1E1B1B212E),
    .INIT_73(256'h6868645B3D261E18191918162137433E383839332D27211C1B1D212542524F54),
    .INIT_74(256'h47586F6F6D674D45413F37383C4055696C6E6D6D6D6D6C6C6C6C6A6A6A696969),
    .INIT_75(256'h2D2F313131313030303132323232323232333333343435363637383537353940),
    .INIT_76(256'h4C4C4C4C4C4C4C4C4C4C4D4B48413735373635353D434C545356403433312E2F),
    .INIT_77(256'h291F20211A1821282D35393532302C241C181B1C1E1F222D3F4A4A4A4B4B4C4C),
    .INIT_78(256'h21201B212F2F221D242A2622211F1E2023282B475752576877706E644E494741),
    .INIT_79(256'h202023252A486B706D6E6E6E6D6D6D6D6D6C6B6B6A696867676055331D1B1C1F),
    .INIT_7A(256'h242423232323232222222222222222232321202220252F3D52656C6F6239261F),
    .INIT_7B(256'h4B4C494335241F232526232B37485554544229212222221F2423232424232323),
    .INIT_7C(256'h37332E2B2F302C2520181D22201A233A4B494A4A4B4C4C4C4C4C4C4C4C4B4B4B),
    .INIT_7D(256'h352D201C1E191A2535434B515C5F687C78776C534D4C452B1F1C201C1A20242A),
    .INIT_7E(256'h6B70726E6B6B6D6D726D6A6B6D6D6A674A37262223201C1B181D2329333C3D38),
    .INIT_7F(256'h212421252822222322222120212D42546A6F6E5F36252022232220284B6B6E6E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [13:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire [13:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h23252F37455151513C2D212022212124232626251E1B2220252221232524201D),
    .INIT_01(256'h1D1F1F1D1D222B33444A4F4C48494C4E4C49494B4D4C4C4D4B46433324232121),
    .INIT_02(256'h515455626B727E7B7A6B59514F49392C21191B2021262924221F222C2F28201D),
    .INIT_03(256'h6B6A6A6B69625C382A1D1817161A21292F373C3A342E2B25201B1A1B191C2544),
    .INIT_04(256'h212223252D3D4B626665593528272A2122212648686D707071706D6C6D6E6F6D),
    .INIT_05(256'h30272626242221191D1F2524232720232121232523201E20272426261F1F1D20),
    .INIT_06(256'h41494D4F4E4B484A4D4D4B4B4D4D4B4B4744332423212123242F37445050513A),
    .INIT_07(256'h74665A5149413B271F1B1A181A23292F34352F2B2A261F1B1B1B1B1C20262A3A),
    .INIT_08(256'h1C1B1D1E21262B3431221F2B302A1C1A1C1D1A1E282F505B5A5867767A7C7C7C),
    .INIT_09(256'h705E35241E1E2024242847676F7474716F6F707070706F7070706F6653432F24),
    .INIT_0A(256'h595D5C5752432E28211F21262F3749575B6066676B6B6767676664646A717776),
    .INIT_0B(256'h4F4A494D4E4A4C4744342523222222242E36434F4F4F53515052565A5A585A5B),
    .INIT_0C(256'h171A23221A171A292B1E1C2B332F201E1C1A1A1B1B1B2937474F4E4B4948484E),
    .INIT_0D(256'h383B443A25201C1F1E1A263942545C5D5E6D7C7E7C7C7D7B7566554A47492F22),
    .INIT_0E(256'h2948687074706D6E7072706F6F6B6C6C69645438211A191B1E1D1B1C2122353D),
    .INIT_0F(256'h1F20232B3350606261605F615E61626365646364666767645734272324202425),
    .INIT_10(256'h342524222221232D35424E4E4E4C4E4F4E515555535253515656534C3C23201E),
    .INIT_11(256'h25222B2F2A232322201E1C1B1C212D3C4548494A4C494C4B48494D4E4B4C4744),
    .INIT_12(256'h1D304A56595E646C777E7F7E7C7B7D7B6F5D504A493933241A1C1B1A1F212D30),
    .INIT_13(256'h6F6F6F7073736D6151402C1E18191A1A1B2337484941352B25212021211B1C1C),
    .INIT_14(256'h5C5F6464656566696A6867686E6E6A5D382923211F23232748696E6F6B6B6C6E),
    .INIT_15(256'h414D4C4D5052514D4D51524F4D4F4E53555553452825242423242A3346585C5B),
    .INIT_16(256'h1A1A1D212321232F404B4F4E4D4B48494B4C4C4D4C4744342524222221232D35),
    .INIT_17(256'h7D7D7E7C7B7E7D766B5D4F4642402F1D1A1B1C21252A2F33322E2722161A1E1D),
    .INIT_18(256'h1E1B1D1D1B1C1F222426282D33383830261E1C1E191B222E41586561656E787D),
    .INIT_19(256'h5F5E5E626462573426201F21242327486A6D6C6D6E6E6D6D707170706A5B442D),
    .INIT_1A(256'h4D4F4F5355525251504E4128221E1E1D1F28334D5D5F5D5C5C60606160606161),
    .INIT_1B(256'h3F4A504F4B494B4C4B4B4D4C4744342523222221232D34414D4C4C494A4A4849),
    .INIT_1C(256'h6D5B4B4B45352623221E191916192125211E1F1D2023201A17191C1E19192130),
    .INIT_1D(256'h393C40433B291D1F211F1B1C24364A555E676A6C757D7D7B7C7D7D7C7D7E7C78),
    .INIT_1E(256'h21202326242747696D6C6E70706D6E716E6762533E2C1E181A1F211B161C2732),
    .INIT_1F(256'h4B3D2422242929282D3549585B5C5C5A5E5E5F5E5F6264656668656766593526),
    .INIT_20(256'h4C4D4B4744332423212122232D34414C4B4C4F4E4E4D4D4D4D4C4B4E4C4D4C4C),
    .INIT_21(256'h1F23231E1918191B1F233736342F29231D1A1A1B1C1E2028364446494C4C4B4B),
    .INIT_22(256'h171B212D465F625D6070737B7E7C7C7F7E7C7C7D7E7E7D78695A524C4437251D),
    .INIT_23(256'h6B696E6E6C6E6E6759452F1C181B1C1A1A18263844433E3B3C38342D27211C18),
    .INIT_24(256'h354452575B5C5A5D5E5F5D5D5E5F5E5E606063625632241F202326242444666B),
    .INIT_25(256'h2122232D34414C4B4C4A494A4D4E4D4C4B4C4F4E504F4F4D3E29221E2020222B),
    .INIT_26(256'h443D393533312B221A1F1F1E1C1A1C242E3B464D4B484B4D4C4B464333242321),
    .INIT_27(256'h787A7C7D7D7D7E7F7B797C7E7D7D7B71675649494B3D291E17161C1F1E253340),
    .INIT_28(256'h1C1A18191B1D1E1D2A2E2C282D3334342B151D26221D171B1C39555F61676C6D),
    .INIT_29(256'h5B5D5E5F5F5F61626262615F5B5754525354555860696B676C71736B605E4E33),
    .INIT_2A(256'h4A4B4C4C4B4B4C4D4C4C4C4C4D4D4D4E50505051525353545556565758595A5B),
    .INIT_2B(256'h20211B15191F1E19232E3C45494B4C4D4D4A46444343434447484A4C4D4D4D4C),
    .INIT_2C(256'h7D7C7C7E7E7E797561584E4A45392B221C1B1B1B1C1C1B1A1F2830322E2A2622),
    .INIT_2D(256'h23252B3A43444538271C14171F212D3A4F6367686D72737B7C7D7E7E7E7E7F7C),
    .INIT_2E(256'h615E5C5D61676B65686865656A6D6D67665D595030191F1C1F22221F1C191721),
    .INIT_2F(256'h4B4C4C4C4C4D4D4F4F4F50505152535454555657585859595A5A595A5B5E6064),
    .INIT_30(256'h1F202A3A474C4D494B4E51514F4C4A4B4A49474748494A4B4C4C4C4B4B4B4B4B),
    .INIT_31(256'h6A584C4B4C402F251D191A191924343A3633353B3E382F2A2327291D171E2320),
    .INIT_32(256'h17191F1B24475A676F6F6F74797A7E7E7E7E7F7F7E7D7E7F7F7E7D7C7C7C7C75),
    .INIT_33(256'h6262676B6A6464563F261A1D201A18191A1D22262A2D1D1C181A21242222231C),
    .INIT_34(256'h4E4E4F4F5051525253545555565758585958595A5B5D6060606060605F5F6664),
    .INIT_35(256'h4B4847484C4F4D4D4E4E4E4E4E4D4B4B4A4A4B4B4B4B4B4B4B4B4B4C4C4C4D4D),
    .INIT_36(256'h181A1E1B15131829352E1D161F2B292D1F121618181F1B191719202D3B454E4D),
    .INIT_37(256'h73757A7D7C7F7E7D7D7E7F7D7C7E7E7F7E7C79797C7E7D796C5A504E4A443725),
    .INIT_38(256'h251F1C1F1B1D1E1E1D1D242F382A2C2822211E1A1A1C25231A2234485A697074),
    .INIT_39(256'h52535454545657595A5A5A595957595C5F61605F5D5D60646869604E3D2F1E1E),
    .INIT_3A(256'h4B4D4D4E4D4A4948494B4C4C4B4B4B4B4B4B4C4C4C4C4C4C4D4D4E4F4F505051),
    .INIT_3B(256'h2E363B3A38211C3040301F1E1E1D20211E17161E27313A464E504E4A47464749),
    .INIT_3C(256'h7E7F7E7D7D7A7D7E7E7C7B7C7E7B7C796F5D4E4A4E474338281D1B2024242527),
    .INIT_3D(256'h2F231F203835271714191D201C1B202D3F596B6C6D7276787B7E7F7D7F7E7D7D),
    .INIT_3E(256'h585858585C5A58585A5D5F615E605E534233272117231E1316171923222F3C3C),
    .INIT_3F(256'h4C4D4C4B4B4B4B4B4C4C4C4C4C4C4C4C4D4D4E4E4F4F50515152535354545556),
    .INIT_40(256'h2B35291E1A191A1E1F1D1A191B212B353D444A4E504F4D4A484746464B4A494A),
    .INIT_41(256'h7F7F7E7D7E7C7B7A7365574F4C473C2E24221F1C1B1916171A1E2122373C2A1C),
    .INIT_42(256'h1F1F201E172D576666707373767A7D7E7F7E7D7F7E7E7E7E7F7F7F7D7C7D7E7F),
    .INIT_43(256'h5D5A57453F32241B181A1E241E1B1F1F1A20304241403F3D3C3C3B433E2E1F1D),
    .INIT_44(256'h4B4B4B4C4B4B4C4C4D4D4E4E4E4F4F5051515153535253545758595556585B5D),
    .INIT_45(256'h1D1A191E1B18171B25333C45474B4E50504E4D4C4C4C4C4D4C4C4B4B4B4B4B4B),
    .INIT_46(256'h7A6D5C4E4E504E412D1F1B1A19191D22262B2F22151821222B3737392F252220),
    .INIT_47(256'h7671797B7C7E7E7D7D7E7E7E7E7E7D7D7E7E7D7E7D7D7D7E7F7F7E7E7E7E7C7C),
    .INIT_48(256'h1F1C1A161B1E20333F322C292B333B3B3126181A1D1F1F18161C3D515E686A6D),
    .INIT_49(256'h4C4D4D4D4E4E4F4F505052525152535453525C5A5752493C2E251F1C1A1B1E20),
    .INIT_4A(256'h19161F242D3741484C4D47494B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4C),
    .INIT_4B(256'h392C2120201E1B18191D212824222D3027201C1A1A1B1A191C22191C2023221E),
    .INIT_4C(256'h7E7E7E7E7D7C7B7C7D7D7D7D7C7C7D7E7E7D7A7E7F7D7C7D797169584C4D514A),
    .INIT_4D(256'h34413D362E2723201F1E1B1B1D1B1C3354566D6E6E73747A7B7C7D7C7C7B797B),
    .INIT_4E(256'h4F4E4F5153524F49453830271F1C1B1C1C1D1C1C1B1A1A1B1C222025373F2F27),
    .INIT_4F(256'h31414447494A4A4B4C4A4A4A4A4A4A4A4A4A4A4A4A4A4B4B4C4C4C4D4D4E4E4F),
    .INIT_50(256'h19161A28312A1C17181F26333D3A2D221E201D1917191C202223201D1C1F252C),
    .INIT_51(256'h7D7D7E7F7F7F7F7E7E7E7C7C7E7E7C7B7D767163534B4B4945382C201B1C1B1A),
    .INIT_52(256'h1E1C1C2130465D6B7272717274797E7E7E7F7F7E7F7E7F7E7F7F7F7E7E7E7E7E),
    .INIT_53(256'h19191A1C1E1D1C1A161B1D1D202021242C312D20212F36332C31332A1D151920),
    .INIT_54(256'h3F3F434A4D4C4C4D494C4E4D4B4A4A4A484B4C4B4A4945403C3A332A24211E1B),
    .INIT_55(256'h37423F3732241B232728282218151B231C1C1C1C1D1D1D1E1B1F2022282D3137),
    .INIT_56(256'h7F7F7E7E7F7F7F7E7C7A766E6358504B4A453B2E211B1C1F221F1B19191F2B37),
    .INIT_57(256'h70767B7E7E7E7D7F7F7F7F7F7F7E7E7F7F7F7E7E7E7E7E7F7F7F7F7F7F7F7F7F),
    .INIT_58(256'h2B2E333636302A222C2F2729322E21121A2325211C1B1B1721354E646E6F6B6C),
    .INIT_59(256'h282728292826252222201D1B1D1E1E1F1D1B1B1B1A1B1C1D1C1C1D1F1F1D1B2C),
    .INIT_5A(256'h22161C2A2E2519201E1C1A191A1B1C1E201D1B1C1C1C201718191A1E20232329),
    .INIT_5B(256'h7E7E7B746A5F584B4B4A473F3121161818191C1D1C1D1F2222212A31251E2931),
    .INIT_5C(256'h7F7F7F7E7E7E7F7F7F7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E),
    .INIT_5D(256'h3C2111121C1F27201814151A1F224855646968676C7277787A7D7E7E7E7D7F7F),
    .INIT_5E(256'h1E1A181B1E20211D1B1D1D1A191C2121212021252C312F2F363529262B2C3641),
    .INIT_5F(256'h242021201B16181A19191C1C1D21211F1B18191B1B191916161A1E1E1D1E2322),
    .INIT_60(256'h524B4745413E29231D1E201F1B17191C1F282C1E1A283434342F29272D35372E),
    .INIT_61(256'h7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7D7D7C7C7D7E7D79716A645C),
    .INIT_62(256'h1E20304A6062666A6D707377797E7E7D7B7A7B7D7E7F7F7F7F7E7E7E7E7F7E7E),
    .INIT_63(256'h1D1F20202118233037353230303430384038322B1D1C262B27201E1C18171C20),
    .INIT_64(256'h1C1A1614191E19171B20232221211F1F201E19181B201F1E1D1D1D1B191A1B1C),
    .INIT_65(256'h2518141B241F201C17181A24333A3027262B3032321D252F34322B24201D201F),
    .INIT_66(256'h7F7F7F7F7F7F7F7E7E7E7D7D7C7A7A7B7C7E7D7B79756F63574E494747444035),
    .INIT_67(256'h7B7D7E7E7C7C7D7D7D7D7E7E7F7F7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F),
    .INIT_68(256'h36363737211B263332322E21201D1A1918181B1F1E222D4259686B6963686F76),
    .INIT_69(256'h1F1A1515171B1F1F1914161D17191D252A2B272321292D2B2E363A3735353535),
    .INIT_6A(256'h1D1D1A181B1D222626211B181F20252D34342F29393D3D383229262C2F241C1E),
    .INIT_6B(256'h7E7E7E7E7E7F7F7F7E7E7E7E7A797873695D524C524E4740392F231A1A1A1919),
    .INIT_6C(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E7E),
    .INIT_6D(256'h191C1D1D1A1A1A191A2532465361686664676B777A7C7C7876797D7B7B7C7D7E),
    .INIT_6E(256'h2F333737353536352D231D18242822222C312E231E1C242F35332D2D2627261D),
    .INIT_6F(256'h2D363B40373030373B39342A303434312B2B33382F2827262322241D242C302F),
    .INIT_70(256'h7E7E7F7E7E7C7D7C79736D4D47444B565748382D241C1A191A1F252219121520),
    .INIT_71(256'h7E7E7E7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7E7F7F7F7E7E7E7E7D7E7F7F7F),
    .INIT_72(256'h5B61656668696B6F767C7B79787C7E7E7E7A7E7E7D7C7C7D7E7E7E7E7E7E7E7E),
    .INIT_73(256'h1F1E202B302A283037384135261F1F211E1B1C16151C21201D1B18191E2A3C4E),
    .INIT_74(256'h23282F3336393832303635342F251C1818181E2124272C2F2B241D1E22272723),
    .INIT_75(256'h7A76767368584B46484A4F4C473B2B221E1A1F1C1A1B1C1A181819222B2B2520),
    .INIT_76(256'h7F7F7F7F7F7F7F7F7F7F7E7F7F7F7E7D7D7E7A7B7C7D7E7F7E7E7F7E7E7E7E7E),
    .INIT_77(256'h7D7C7E7F7E7C7B7D7E7D7E7E7F7F7F7E7D7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F),
    .INIT_78(256'h2320201F1D1C1C1C1C1E1F1F1E1C191E293647575C5D60636261656B72787C7D),
    .INIT_79(256'h23253133251B1C1E1B1C1A191D2A3127161A1D232826221F201E252720191A20),
    .INIT_7A(256'h4F494F4F47434A43302321201F1E1D1E211D1916181E21211F212324282A231F),
    .INIT_7B(256'h7F7E7E7F7E7C7B7C7C7E7E7D7D7F7F7F7F7D7E7E7E7B7B7E7F7E7D7B7772685A),
    .INIT_7C(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7F7F7F7E7E7E7E7E7F7F7F7F7F7F7F7F),
    .INIT_7D(256'h1E1E233042505758595A5A5B5D636A7078797B7D7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_7E(256'h1D1D1E1F1F1F1E1E1F1D1C1C1D1D1D1C1B1A1A1B1D1E1D1B1B1B1C1C1C1C1B1B),
    .INIT_7F(256'h524B40362D26201D1A1A1B1D1E1E1D1C1F1E1C1B1B1B1B1A1E1E1E1E1E1E1E1E),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (p_7_out,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [10:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;
  wire [0:0]wea;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7F7F7F7F7F7F7F7F7F7F7F7F7E7E7D7C7C7C7C7D7D7B79766961564E4A4A4B4C),
    .INIT_01(256'h7E7E7E7E7E7E7E7F7F7F7E7E7E7E7E7F7F7F7F7E7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_02(256'h64696E7275797C7C7C7D7D7C7C7D7E7F7F7E7F7E7F7F7F7E7E7E7E7E7E7E7E7E),
    .INIT_03(256'h1918191B1C1D1D1D1C1C1C1C1C1B1A1A1A191C222D373E4951595C5A57585A60),
    .INIT_04(256'h392E241D1A191A1D1C1B1B1C1D1D1D1D1D1C1B1A1A19191C1C1C1C1C1D1D1D1A),
    .INIT_05(256'h7F7F7F7E7E7D7D7C7D7E7E7E7C7B7B7B78736D675F57524C4D505354504A4541),
    .INIT_06(256'h7F7E7E7E7E7E7F7F7F7F7E7E7E7E7E7E7D7D7E7E7E7E7E7F7F7F7F7F7F7F7F7F),
    .INIT_07(256'h7C7C7B7B7C7D7F7F7F7F7F7F7F7F7E7E7E7E7E7D7D7E7E7F7F7F7F7F7F7F7F7F),
    .INIT_08(256'h1B1B1F27303740464E565A5A575556524D4E555F676B6F74797D7E7E7E7D7D7D),
    .INIT_09(256'h292623201E1C1C1C1C1C1C1C1D1D1C1B1A1A1A1B1C1D1E1D1C1C1D1D1D1D1E1D),
    .INIT_0A(256'h7E7E7D7C7D7E7F7F7F7F7D78706A6760564E4A4A4B4C484B4F53524E48432F2D),
    .INIT_0B(256'h7F7E7E7E7E7E7D7D7D7E7E7E7E7E7F7F7F7F7F7F7F7F7E7E7F7F7E7E7D7D7C7D),
    .INIT_0C(256'h7F7F7F7F7F7E7E7E7E7E7D7E7E7E7F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7F7F7F),
    .INIT_0D(256'h49494C50535A65727A7C7C7B7D7D7E7E7E7E7C7C7B7C7D7C7C7C7B7C7D7E7F7F),
    .INIT_0E(256'h3D3936343233333231313233343435373A3E434648494D53575857565654514C),
    .INIT_0F(256'h7D7F7F7F7E7B7B7B79756D635D59544D47444548495351504E4E4C4B4A474541),
    .INIT_10(256'h7E7E7E7E7E7E7E7F7F7F7F7F7F7E7E7E7F7E7E7E7D7D7D7E7E7D7D7E7F7B7B7B),
    .INIT_11(256'h7E7E7E7E7F7F7F7F7F7F7F7F7F7F7F7E7E7E7E7E7F7F7F7F7E7E7E7E7E7E7D7E),
    .INIT_12(256'h7B7B7D7E7F7D7D7C7C7C7D7D7C7C7D7D7D7D7D7D7E7F7F7F7F7F7F7E7E7E7E7E),
    .INIT_13(256'h4C4C4C4C4D4D4C4B4B4A4B4B4D4D4B4947484B4E51576069717678797B7D7D7D),
    .INIT_14(256'h7B7C7D7D797875716A625A55504F4E4E4D4D4C4B4A4A4A4A4A4B4C4D4C4C4C4C),
    .INIT_15(256'h7F7F7F7F7F7E7E7E7E7E7E7E7E7D7C7C7D7E7E7E7F7E7C7A7B7D7F7F7E7E7C7B),
    .INIT_16(256'h7F7F7F7F7F7F7E7E7E7E7E7F7F7F7F7E7E7E7E7E7E7E7E7E7E7F7F7E7F7F7F7F),
    .INIT_17(256'h7D7D7D7C7D7E7D7D7D7C7D7E7F7F7F7F7F7E7E7E7E7E7E7E7E7E7E7F7F7F7F7F),
    .INIT_18(256'h595C5E5F636A717576777779797A7A7B7B7B7C7E7B76777D7E7C787C7B7C7C7C),
    .INIT_19(256'h7A79787776736F6A66625F5E5C5955524F4E4D4E4E4E4E4E4E4E4E4D4E505356),
    .INIT_1A(256'h7E7E7E7F7D7B7B7D7E7D7D7F7F7F7E7E7D7C7C7C7C7D7D7D7C7B7C7C7B7B7B7B),
    .INIT_1B(256'h00007F7F7F7F7E7E7E7E7E7E7E7E7F7F7F7E7E7F7F7F7F7F7F7F7F7F7E7E7E7E),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],p_7_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],p_7_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [1:0]douta;
  input clka;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]douta;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [13:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "2" *) 
(* C_COUNT_36K_BRAM = "4" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     6.14663 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "logo_rom.mem" *) 
(* C_INIT_FILE_NAME = "logo_rom.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "13182" *) (* C_READ_DEPTH_B = "13182" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "12" *) (* C_READ_WIDTH_B = "12" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "13182" *) 
(* C_WRITE_DEPTH_B = "13182" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [11:0]douta;
  input clka;
  input [13:0]addra;
  input [11:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
