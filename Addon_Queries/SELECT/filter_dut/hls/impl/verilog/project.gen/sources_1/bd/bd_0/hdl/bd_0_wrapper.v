//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Mon Feb  3 14:24:11 2025
//Host        : chips-server running 64-bit Ubuntu 21.04
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
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
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  input e_f_strm_full_n;
  output e_f_strm_wr_data;
  output e_f_strm_wr_en;
  input e_strm_empty_n;
  input e_strm_rd_data;
  output e_strm_rd_en;
  input f_strm_full_n;
  output [31:0]f_strm_wr_data;
  output f_strm_wr_en;
  input filter_cfg_strm_empty_n;
  input [31:0]filter_cfg_strm_rd_data;
  output filter_cfg_strm_rd_en;
  input k_strms_0_empty_n;
  input [31:0]k_strms_0_rd_data;
  output k_strms_0_rd_en;
  input k_strms_1_empty_n;
  input [31:0]k_strms_1_rd_data;
  output k_strms_1_rd_en;
  input k_strms_2_empty_n;
  input [31:0]k_strms_2_rd_data;
  output k_strms_2_rd_en;
  input k_strms_3_empty_n;
  input [31:0]k_strms_3_rd_data;
  output k_strms_3_rd_en;
  input p_strm_empty_n;
  input [31:0]p_strm_rd_data;
  output p_strm_rd_en;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire e_f_strm_full_n;
  wire e_f_strm_wr_data;
  wire e_f_strm_wr_en;
  wire e_strm_empty_n;
  wire e_strm_rd_data;
  wire e_strm_rd_en;
  wire f_strm_full_n;
  wire [31:0]f_strm_wr_data;
  wire f_strm_wr_en;
  wire filter_cfg_strm_empty_n;
  wire [31:0]filter_cfg_strm_rd_data;
  wire filter_cfg_strm_rd_en;
  wire k_strms_0_empty_n;
  wire [31:0]k_strms_0_rd_data;
  wire k_strms_0_rd_en;
  wire k_strms_1_empty_n;
  wire [31:0]k_strms_1_rd_data;
  wire k_strms_1_rd_en;
  wire k_strms_2_empty_n;
  wire [31:0]k_strms_2_rd_data;
  wire k_strms_2_rd_en;
  wire k_strms_3_empty_n;
  wire [31:0]k_strms_3_rd_data;
  wire k_strms_3_rd_en;
  wire p_strm_empty_n;
  wire [31:0]p_strm_rd_data;
  wire p_strm_rd_en;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .e_f_strm_full_n(e_f_strm_full_n),
        .e_f_strm_wr_data(e_f_strm_wr_data),
        .e_f_strm_wr_en(e_f_strm_wr_en),
        .e_strm_empty_n(e_strm_empty_n),
        .e_strm_rd_data(e_strm_rd_data),
        .e_strm_rd_en(e_strm_rd_en),
        .f_strm_full_n(f_strm_full_n),
        .f_strm_wr_data(f_strm_wr_data),
        .f_strm_wr_en(f_strm_wr_en),
        .filter_cfg_strm_empty_n(filter_cfg_strm_empty_n),
        .filter_cfg_strm_rd_data(filter_cfg_strm_rd_data),
        .filter_cfg_strm_rd_en(filter_cfg_strm_rd_en),
        .k_strms_0_empty_n(k_strms_0_empty_n),
        .k_strms_0_rd_data(k_strms_0_rd_data),
        .k_strms_0_rd_en(k_strms_0_rd_en),
        .k_strms_1_empty_n(k_strms_1_empty_n),
        .k_strms_1_rd_data(k_strms_1_rd_data),
        .k_strms_1_rd_en(k_strms_1_rd_en),
        .k_strms_2_empty_n(k_strms_2_empty_n),
        .k_strms_2_rd_data(k_strms_2_rd_data),
        .k_strms_2_rd_en(k_strms_2_rd_en),
        .k_strms_3_empty_n(k_strms_3_empty_n),
        .k_strms_3_rd_data(k_strms_3_rd_data),
        .k_strms_3_rd_en(k_strms_3_rd_en),
        .p_strm_empty_n(p_strm_empty_n),
        .p_strm_rd_data(p_strm_rd_data),
        .p_strm_rd_en(p_strm_rd_en));
endmodule
