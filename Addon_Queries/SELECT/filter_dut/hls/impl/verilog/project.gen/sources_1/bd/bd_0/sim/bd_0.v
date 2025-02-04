//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Mon Feb  3 14:24:11 2025
//Host        : chips-server running 64-bit Ubuntu 21.04
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    e_f_strm_full_n,
    e_f_strm_wr_data,
    e_f_strm_wr_en,
    e_strm_empty_n,
    e_strm_rd_data,
    e_strm_rd_en,
    f_strm_full_n,
    f_strm_wr_data,
    f_strm_wr_en,
    filter_cfg_strm_empty_n,
    filter_cfg_strm_rd_data,
    filter_cfg_strm_rd_en,
    k_strms_0_empty_n,
    k_strms_0_rd_data,
    k_strms_0_rd_en,
    k_strms_1_empty_n,
    k_strms_1_rd_data,
    k_strms_1_rd_en,
    k_strms_2_empty_n,
    k_strms_2_rd_data,
    k_strms_2_rd_en,
    k_strms_3_empty_n,
    k_strms_3_rd_data,
    k_strms_3_rd_en,
    p_strm_empty_n,
    p_strm_rd_data,
    p_strm_rd_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 e_f_strm " *) input e_f_strm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 e_f_strm " *) output e_f_strm_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 e_f_strm " *) output e_f_strm_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e_strm " *) input e_strm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e_strm " *) input e_strm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e_strm " *) output e_strm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 f_strm " *) input f_strm_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 f_strm " *) output [31:0]f_strm_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 f_strm " *) output f_strm_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 filter_cfg_strm " *) input filter_cfg_strm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 filter_cfg_strm " *) input [31:0]filter_cfg_strm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 filter_cfg_strm " *) output filter_cfg_strm_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_0 " *) input k_strms_0_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_0 " *) input [31:0]k_strms_0_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_0 " *) output k_strms_0_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_1 " *) input k_strms_1_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_1 " *) input [31:0]k_strms_1_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_1 " *) output k_strms_1_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_2 " *) input k_strms_2_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_2 " *) input [31:0]k_strms_2_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_2 " *) output k_strms_2_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_3 " *) input k_strms_3_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_3 " *) input [31:0]k_strms_3_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_3 " *) output k_strms_3_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 p_strm " *) input p_strm_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 p_strm " *) input [31:0]p_strm_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 p_strm " *) output p_strm_rd_en;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire hls_inst_e_f_strm_FULL_N;
  wire hls_inst_e_f_strm_WR_DATA;
  wire hls_inst_e_f_strm_WR_EN;
  wire hls_inst_e_strm_EMPTY_N;
  wire hls_inst_e_strm_RD_DATA;
  wire hls_inst_e_strm_RD_EN;
  wire hls_inst_f_strm_FULL_N;
  wire [31:0]hls_inst_f_strm_WR_DATA;
  wire hls_inst_f_strm_WR_EN;
  wire hls_inst_filter_cfg_strm_EMPTY_N;
  wire [31:0]hls_inst_filter_cfg_strm_RD_DATA;
  wire hls_inst_filter_cfg_strm_RD_EN;
  wire hls_inst_k_strms_0_EMPTY_N;
  wire [31:0]hls_inst_k_strms_0_RD_DATA;
  wire hls_inst_k_strms_0_RD_EN;
  wire hls_inst_k_strms_1_EMPTY_N;
  wire [31:0]hls_inst_k_strms_1_RD_DATA;
  wire hls_inst_k_strms_1_RD_EN;
  wire hls_inst_k_strms_2_EMPTY_N;
  wire [31:0]hls_inst_k_strms_2_RD_DATA;
  wire hls_inst_k_strms_2_RD_EN;
  wire hls_inst_k_strms_3_EMPTY_N;
  wire [31:0]hls_inst_k_strms_3_RD_DATA;
  wire hls_inst_k_strms_3_RD_EN;
  wire hls_inst_p_strm_EMPTY_N;
  wire [31:0]hls_inst_p_strm_RD_DATA;
  wire hls_inst_p_strm_RD_EN;

  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  assign e_f_strm_wr_data = hls_inst_e_f_strm_WR_DATA;
  assign e_f_strm_wr_en = hls_inst_e_f_strm_WR_EN;
  assign e_strm_rd_en = hls_inst_e_strm_RD_EN;
  assign f_strm_wr_data[31:0] = hls_inst_f_strm_WR_DATA;
  assign f_strm_wr_en = hls_inst_f_strm_WR_EN;
  assign filter_cfg_strm_rd_en = hls_inst_filter_cfg_strm_RD_EN;
  assign hls_inst_e_f_strm_FULL_N = e_f_strm_full_n;
  assign hls_inst_e_strm_EMPTY_N = e_strm_empty_n;
  assign hls_inst_e_strm_RD_DATA = e_strm_rd_data;
  assign hls_inst_f_strm_FULL_N = f_strm_full_n;
  assign hls_inst_filter_cfg_strm_EMPTY_N = filter_cfg_strm_empty_n;
  assign hls_inst_filter_cfg_strm_RD_DATA = filter_cfg_strm_rd_data[31:0];
  assign hls_inst_k_strms_0_EMPTY_N = k_strms_0_empty_n;
  assign hls_inst_k_strms_0_RD_DATA = k_strms_0_rd_data[31:0];
  assign hls_inst_k_strms_1_EMPTY_N = k_strms_1_empty_n;
  assign hls_inst_k_strms_1_RD_DATA = k_strms_1_rd_data[31:0];
  assign hls_inst_k_strms_2_EMPTY_N = k_strms_2_empty_n;
  assign hls_inst_k_strms_2_RD_DATA = k_strms_2_rd_data[31:0];
  assign hls_inst_k_strms_3_EMPTY_N = k_strms_3_empty_n;
  assign hls_inst_k_strms_3_RD_DATA = k_strms_3_rd_data[31:0];
  assign hls_inst_p_strm_EMPTY_N = p_strm_empty_n;
  assign hls_inst_p_strm_RD_DATA = p_strm_rd_data[31:0];
  assign k_strms_0_rd_en = hls_inst_k_strms_0_RD_EN;
  assign k_strms_1_rd_en = hls_inst_k_strms_1_RD_EN;
  assign k_strms_2_rd_en = hls_inst_k_strms_2_RD_EN;
  assign k_strms_3_rd_en = hls_inst_k_strms_3_RD_EN;
  assign p_strm_rd_en = hls_inst_p_strm_RD_EN;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .e_f_strm_din(hls_inst_e_f_strm_WR_DATA),
        .e_f_strm_full_n(hls_inst_e_f_strm_FULL_N),
        .e_f_strm_write(hls_inst_e_f_strm_WR_EN),
        .e_strm_dout(hls_inst_e_strm_RD_DATA),
        .e_strm_empty_n(hls_inst_e_strm_EMPTY_N),
        .e_strm_read(hls_inst_e_strm_RD_EN),
        .f_strm_din(hls_inst_f_strm_WR_DATA),
        .f_strm_full_n(hls_inst_f_strm_FULL_N),
        .f_strm_write(hls_inst_f_strm_WR_EN),
        .filter_cfg_strm_dout(hls_inst_filter_cfg_strm_RD_DATA),
        .filter_cfg_strm_empty_n(hls_inst_filter_cfg_strm_EMPTY_N),
        .filter_cfg_strm_read(hls_inst_filter_cfg_strm_RD_EN),
        .k_strms_0_dout(hls_inst_k_strms_0_RD_DATA),
        .k_strms_0_empty_n(hls_inst_k_strms_0_EMPTY_N),
        .k_strms_0_read(hls_inst_k_strms_0_RD_EN),
        .k_strms_1_dout(hls_inst_k_strms_1_RD_DATA),
        .k_strms_1_empty_n(hls_inst_k_strms_1_EMPTY_N),
        .k_strms_1_read(hls_inst_k_strms_1_RD_EN),
        .k_strms_2_dout(hls_inst_k_strms_2_RD_DATA),
        .k_strms_2_empty_n(hls_inst_k_strms_2_EMPTY_N),
        .k_strms_2_read(hls_inst_k_strms_2_RD_EN),
        .k_strms_3_dout(hls_inst_k_strms_3_RD_DATA),
        .k_strms_3_empty_n(hls_inst_k_strms_3_EMPTY_N),
        .k_strms_3_read(hls_inst_k_strms_3_RD_EN),
        .p_strm_dout(hls_inst_p_strm_RD_DATA),
        .p_strm_empty_n(hls_inst_p_strm_EMPTY_N),
        .p_strm_read(hls_inst_p_strm_RD_EN));
endmodule
