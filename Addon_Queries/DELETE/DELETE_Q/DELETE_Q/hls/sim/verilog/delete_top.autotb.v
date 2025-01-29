// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      delete_top
`define AUTOTB_DUT_INST AESL_inst_delete_top
`define AUTOTB_TOP      apatb_delete_top_top
`define AUTOTB_LAT_RESULT_FILE "delete_top.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "delete_top.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_delete_top_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00
`define AUTOTB_II 0
`define AUTOTB_LATENCY -1

`define AESL_DEPTH_i_hash_strm 1
`define AESL_DEPTH_i_col1_strm 1
`define AESL_DEPTH_i_col2_strm 1
`define AESL_DEPTH_i_col3_strm 1
`define AESL_DEPTH_i_payload_strm 1
`define AESL_DEPTH_i_e_strm 1
`define AESL_DEPTH_i_d_key1_strm 1
`define AESL_DEPTH_o_hash_strm 1
`define AESL_DEPTH_o_col1_strm 1
`define AESL_DEPTH_o_col2_strm 1
`define AESL_DEPTH_o_col3_strm 1
`define AESL_DEPTH_o_payload_strm 1
`define AESL_DEPTH_o_e_strm 1
`define AUTOTB_TVIN_i_hash_strm  "../tv/cdatafile/c.delete_top.autotvin_i_hash_strm.dat"
`define AUTOTB_TVIN_i_col1_strm  "../tv/cdatafile/c.delete_top.autotvin_i_col1_strm.dat"
`define AUTOTB_TVIN_i_col2_strm  "../tv/cdatafile/c.delete_top.autotvin_i_col2_strm.dat"
`define AUTOTB_TVIN_i_col3_strm  "../tv/cdatafile/c.delete_top.autotvin_i_col3_strm.dat"
`define AUTOTB_TVIN_i_payload_strm  "../tv/cdatafile/c.delete_top.autotvin_i_payload_strm.dat"
`define AUTOTB_TVIN_i_e_strm  "../tv/cdatafile/c.delete_top.autotvin_i_e_strm.dat"
`define AUTOTB_TVIN_i_d_key1_strm  "../tv/cdatafile/c.delete_top.autotvin_i_d_key1_strm.dat"
`define AUTOTB_TVIN_i_hash_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvin_i_hash_strm.dat"
`define AUTOTB_TVIN_i_col1_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvin_i_col1_strm.dat"
`define AUTOTB_TVIN_i_col2_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvin_i_col2_strm.dat"
`define AUTOTB_TVIN_i_col3_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvin_i_col3_strm.dat"
`define AUTOTB_TVIN_i_payload_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvin_i_payload_strm.dat"
`define AUTOTB_TVIN_i_e_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvin_i_e_strm.dat"
`define AUTOTB_TVIN_i_d_key1_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvin_i_d_key1_strm.dat"
`define AUTOTB_TVOUT_o_hash_strm  "../tv/cdatafile/c.delete_top.autotvout_o_hash_strm.dat"
`define AUTOTB_TVOUT_o_col1_strm  "../tv/cdatafile/c.delete_top.autotvout_o_col1_strm.dat"
`define AUTOTB_TVOUT_o_col2_strm  "../tv/cdatafile/c.delete_top.autotvout_o_col2_strm.dat"
`define AUTOTB_TVOUT_o_col3_strm  "../tv/cdatafile/c.delete_top.autotvout_o_col3_strm.dat"
`define AUTOTB_TVOUT_o_payload_strm  "../tv/cdatafile/c.delete_top.autotvout_o_payload_strm.dat"
`define AUTOTB_TVOUT_o_e_strm  "../tv/cdatafile/c.delete_top.autotvout_o_e_strm.dat"
`define AUTOTB_TVOUT_o_hash_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvout_o_hash_strm.dat"
`define AUTOTB_TVOUT_o_col1_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvout_o_col1_strm.dat"
`define AUTOTB_TVOUT_o_col2_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvout_o_col2_strm.dat"
`define AUTOTB_TVOUT_o_col3_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvout_o_col3_strm.dat"
`define AUTOTB_TVOUT_o_payload_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvout_o_payload_strm.dat"
`define AUTOTB_TVOUT_o_e_strm_out_wrapc  "../tv/rtldatafile/rtl.delete_top.autotvout_o_e_strm.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_i_col1_strm = 20;
parameter LENGTH_i_col2_strm = 20;
parameter LENGTH_i_col3_strm = 20;
parameter LENGTH_i_d_key1_strm = 20;
parameter LENGTH_i_e_strm = 21;
parameter LENGTH_i_hash_strm = 20;
parameter LENGTH_i_payload_strm = 20;
parameter LENGTH_o_col1_strm = 15;
parameter LENGTH_o_col2_strm = 15;
parameter LENGTH_o_col3_strm = 15;
parameter LENGTH_o_e_strm = 16;
parameter LENGTH_o_hash_strm = 15;
parameter LENGTH_o_payload_strm = 15;

task read_token;
    input integer fp;
    output reg [279 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
reg AESL_done = 0;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [31 : 0] i_hash_strm_TDATA;
wire  i_hash_strm_TVALID;
wire  i_hash_strm_TREADY;
wire [31 : 0] i_col1_strm_TDATA;
wire  i_col1_strm_TVALID;
wire  i_col1_strm_TREADY;
wire [31 : 0] i_col2_strm_TDATA;
wire  i_col2_strm_TVALID;
wire  i_col2_strm_TREADY;
wire [31 : 0] i_col3_strm_TDATA;
wire  i_col3_strm_TVALID;
wire  i_col3_strm_TREADY;
wire [127 : 0] i_payload_strm_TDATA;
wire  i_payload_strm_TVALID;
wire  i_payload_strm_TREADY;
wire [7 : 0] i_e_strm_TDATA;
wire  i_e_strm_TVALID;
wire  i_e_strm_TREADY;
wire [31 : 0] i_d_key1_strm_TDATA;
wire  i_d_key1_strm_TVALID;
wire  i_d_key1_strm_TREADY;
wire [31 : 0] o_hash_strm_TDATA;
wire  o_hash_strm_TVALID;
wire  o_hash_strm_TREADY;
wire [31 : 0] o_col1_strm_TDATA;
wire  o_col1_strm_TVALID;
wire  o_col1_strm_TREADY;
wire [31 : 0] o_col2_strm_TDATA;
wire  o_col2_strm_TVALID;
wire  o_col2_strm_TREADY;
wire [31 : 0] o_col3_strm_TDATA;
wire  o_col3_strm_TVALID;
wire  o_col3_strm_TREADY;
wire [127 : 0] o_payload_strm_TDATA;
wire  o_payload_strm_TVALID;
wire  o_payload_strm_TREADY;
wire [7 : 0] o_e_strm_TDATA;
wire  o_e_strm_TVALID;
wire  o_e_strm_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_i_hash_strm;
reg [31:0] ap_c_n_tvin_trans_num_i_col1_strm;
reg [31:0] ap_c_n_tvin_trans_num_i_col2_strm;
reg [31:0] ap_c_n_tvin_trans_num_i_col3_strm;
reg [31:0] ap_c_n_tvin_trans_num_i_payload_strm;
reg [31:0] ap_c_n_tvin_trans_num_i_e_strm;
reg [31:0] ap_c_n_tvin_trans_num_i_d_key1_strm;
reg [31:0] ap_c_n_tvout_trans_num_o_hash_strm;
reg [31:0] ap_c_n_tvout_trans_num_o_col1_strm;
reg [31:0] ap_c_n_tvout_trans_num_o_col2_strm;
reg [31:0] ap_c_n_tvout_trans_num_o_col3_strm;
reg [31:0] ap_c_n_tvout_trans_num_o_payload_strm;
reg [31:0] ap_c_n_tvout_trans_num_o_e_strm;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .i_hash_strm_TDATA(i_hash_strm_TDATA),
    .i_hash_strm_TVALID(i_hash_strm_TVALID),
    .i_hash_strm_TREADY(i_hash_strm_TREADY),
    .i_col1_strm_TDATA(i_col1_strm_TDATA),
    .i_col1_strm_TVALID(i_col1_strm_TVALID),
    .i_col1_strm_TREADY(i_col1_strm_TREADY),
    .i_col2_strm_TDATA(i_col2_strm_TDATA),
    .i_col2_strm_TVALID(i_col2_strm_TVALID),
    .i_col2_strm_TREADY(i_col2_strm_TREADY),
    .i_col3_strm_TDATA(i_col3_strm_TDATA),
    .i_col3_strm_TVALID(i_col3_strm_TVALID),
    .i_col3_strm_TREADY(i_col3_strm_TREADY),
    .i_payload_strm_TDATA(i_payload_strm_TDATA),
    .i_payload_strm_TVALID(i_payload_strm_TVALID),
    .i_payload_strm_TREADY(i_payload_strm_TREADY),
    .i_e_strm_TDATA(i_e_strm_TDATA),
    .i_e_strm_TVALID(i_e_strm_TVALID),
    .i_e_strm_TREADY(i_e_strm_TREADY),
    .i_d_key1_strm_TDATA(i_d_key1_strm_TDATA),
    .i_d_key1_strm_TVALID(i_d_key1_strm_TVALID),
    .i_d_key1_strm_TREADY(i_d_key1_strm_TREADY),
    .o_hash_strm_TDATA(o_hash_strm_TDATA),
    .o_hash_strm_TVALID(o_hash_strm_TVALID),
    .o_hash_strm_TREADY(o_hash_strm_TREADY),
    .o_col1_strm_TDATA(o_col1_strm_TDATA),
    .o_col1_strm_TVALID(o_col1_strm_TVALID),
    .o_col1_strm_TREADY(o_col1_strm_TREADY),
    .o_col2_strm_TDATA(o_col2_strm_TDATA),
    .o_col2_strm_TVALID(o_col2_strm_TVALID),
    .o_col2_strm_TREADY(o_col2_strm_TREADY),
    .o_col3_strm_TDATA(o_col3_strm_TDATA),
    .o_col3_strm_TVALID(o_col3_strm_TVALID),
    .o_col3_strm_TREADY(o_col3_strm_TREADY),
    .o_payload_strm_TDATA(o_payload_strm_TDATA),
    .o_payload_strm_TVALID(o_payload_strm_TVALID),
    .o_payload_strm_TREADY(o_payload_strm_TREADY),
    .o_e_strm_TDATA(o_e_strm_TDATA),
    .o_e_strm_TVALID(o_e_strm_TVALID),
    .o_e_strm_TREADY(o_e_strm_TREADY));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
assign AESL_ready = ready;













wire i_hash_strm_ready;
wire i_hash_strm_done;
wire [31:0] i_hash_strm_transaction;
wire axi_s_i_hash_strm_TVALID;
wire axi_s_i_hash_strm_TREADY;

AESL_axi_s_i_hash_strm AESL_AXI_S_i_hash_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_i_hash_strm_TDATA(i_hash_strm_TDATA),
    .TRAN_i_hash_strm_TVALID(i_hash_strm_TVALID),
    .TRAN_i_hash_strm_TREADY(i_hash_strm_TREADY),
    .ready(i_hash_strm_ready),
    .done(i_hash_strm_done),
    .transaction(i_hash_strm_transaction));

assign i_hash_strm_ready = ready;
assign i_hash_strm_done = 0;
wire i_col1_strm_ready;
wire i_col1_strm_done;
wire [31:0] i_col1_strm_transaction;
wire axi_s_i_col1_strm_TVALID;
wire axi_s_i_col1_strm_TREADY;

AESL_axi_s_i_col1_strm AESL_AXI_S_i_col1_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_i_col1_strm_TDATA(i_col1_strm_TDATA),
    .TRAN_i_col1_strm_TVALID(i_col1_strm_TVALID),
    .TRAN_i_col1_strm_TREADY(i_col1_strm_TREADY),
    .ready(i_col1_strm_ready),
    .done(i_col1_strm_done),
    .transaction(i_col1_strm_transaction));

assign i_col1_strm_ready = ready;
assign i_col1_strm_done = 0;
wire i_col2_strm_ready;
wire i_col2_strm_done;
wire [31:0] i_col2_strm_transaction;
wire axi_s_i_col2_strm_TVALID;
wire axi_s_i_col2_strm_TREADY;

AESL_axi_s_i_col2_strm AESL_AXI_S_i_col2_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_i_col2_strm_TDATA(i_col2_strm_TDATA),
    .TRAN_i_col2_strm_TVALID(i_col2_strm_TVALID),
    .TRAN_i_col2_strm_TREADY(i_col2_strm_TREADY),
    .ready(i_col2_strm_ready),
    .done(i_col2_strm_done),
    .transaction(i_col2_strm_transaction));

assign i_col2_strm_ready = ready;
assign i_col2_strm_done = 0;
wire i_col3_strm_ready;
wire i_col3_strm_done;
wire [31:0] i_col3_strm_transaction;
wire axi_s_i_col3_strm_TVALID;
wire axi_s_i_col3_strm_TREADY;

AESL_axi_s_i_col3_strm AESL_AXI_S_i_col3_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_i_col3_strm_TDATA(i_col3_strm_TDATA),
    .TRAN_i_col3_strm_TVALID(i_col3_strm_TVALID),
    .TRAN_i_col3_strm_TREADY(i_col3_strm_TREADY),
    .ready(i_col3_strm_ready),
    .done(i_col3_strm_done),
    .transaction(i_col3_strm_transaction));

assign i_col3_strm_ready = ready;
assign i_col3_strm_done = 0;
wire i_payload_strm_ready;
wire i_payload_strm_done;
wire [31:0] i_payload_strm_transaction;
wire axi_s_i_payload_strm_TVALID;
wire axi_s_i_payload_strm_TREADY;

AESL_axi_s_i_payload_strm AESL_AXI_S_i_payload_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_i_payload_strm_TDATA(i_payload_strm_TDATA),
    .TRAN_i_payload_strm_TVALID(i_payload_strm_TVALID),
    .TRAN_i_payload_strm_TREADY(i_payload_strm_TREADY),
    .ready(i_payload_strm_ready),
    .done(i_payload_strm_done),
    .transaction(i_payload_strm_transaction));

assign i_payload_strm_ready = ready;
assign i_payload_strm_done = 0;
wire i_e_strm_ready;
wire i_e_strm_done;
wire [31:0] i_e_strm_transaction;
wire axi_s_i_e_strm_TVALID;
wire axi_s_i_e_strm_TREADY;

AESL_axi_s_i_e_strm AESL_AXI_S_i_e_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_i_e_strm_TDATA(i_e_strm_TDATA),
    .TRAN_i_e_strm_TVALID(i_e_strm_TVALID),
    .TRAN_i_e_strm_TREADY(i_e_strm_TREADY),
    .ready(i_e_strm_ready),
    .done(i_e_strm_done),
    .transaction(i_e_strm_transaction));

assign i_e_strm_ready = ready;
assign i_e_strm_done = 0;
wire i_d_key1_strm_ready;
wire i_d_key1_strm_done;
wire [31:0] i_d_key1_strm_transaction;
wire axi_s_i_d_key1_strm_TVALID;
wire axi_s_i_d_key1_strm_TREADY;

AESL_axi_s_i_d_key1_strm AESL_AXI_S_i_d_key1_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_i_d_key1_strm_TDATA(i_d_key1_strm_TDATA),
    .TRAN_i_d_key1_strm_TVALID(i_d_key1_strm_TVALID),
    .TRAN_i_d_key1_strm_TREADY(i_d_key1_strm_TREADY),
    .ready(i_d_key1_strm_ready),
    .done(i_d_key1_strm_done),
    .transaction(i_d_key1_strm_transaction));

assign i_d_key1_strm_ready = ready;
assign i_d_key1_strm_done = 0;
wire o_hash_strm_ready;
wire o_hash_strm_done;
wire [31:0] o_hash_strm_transaction;
wire axi_s_o_hash_strm_TVALID;
wire axi_s_o_hash_strm_TREADY;

AESL_axi_s_o_hash_strm AESL_AXI_S_o_hash_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_o_hash_strm_TDATA(o_hash_strm_TDATA),
    .TRAN_o_hash_strm_TVALID(o_hash_strm_TVALID),
    .TRAN_o_hash_strm_TREADY(o_hash_strm_TREADY),
    .ready(o_hash_strm_ready),
    .done(o_hash_strm_done),
    .transaction(o_hash_strm_transaction));

assign o_hash_strm_ready = 0;
assign o_hash_strm_done = AESL_done;
wire o_col1_strm_ready;
wire o_col1_strm_done;
wire [31:0] o_col1_strm_transaction;
wire axi_s_o_col1_strm_TVALID;
wire axi_s_o_col1_strm_TREADY;

AESL_axi_s_o_col1_strm AESL_AXI_S_o_col1_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_o_col1_strm_TDATA(o_col1_strm_TDATA),
    .TRAN_o_col1_strm_TVALID(o_col1_strm_TVALID),
    .TRAN_o_col1_strm_TREADY(o_col1_strm_TREADY),
    .ready(o_col1_strm_ready),
    .done(o_col1_strm_done),
    .transaction(o_col1_strm_transaction));

assign o_col1_strm_ready = 0;
assign o_col1_strm_done = AESL_done;
wire o_col2_strm_ready;
wire o_col2_strm_done;
wire [31:0] o_col2_strm_transaction;
wire axi_s_o_col2_strm_TVALID;
wire axi_s_o_col2_strm_TREADY;

AESL_axi_s_o_col2_strm AESL_AXI_S_o_col2_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_o_col2_strm_TDATA(o_col2_strm_TDATA),
    .TRAN_o_col2_strm_TVALID(o_col2_strm_TVALID),
    .TRAN_o_col2_strm_TREADY(o_col2_strm_TREADY),
    .ready(o_col2_strm_ready),
    .done(o_col2_strm_done),
    .transaction(o_col2_strm_transaction));

assign o_col2_strm_ready = 0;
assign o_col2_strm_done = AESL_done;
wire o_col3_strm_ready;
wire o_col3_strm_done;
wire [31:0] o_col3_strm_transaction;
wire axi_s_o_col3_strm_TVALID;
wire axi_s_o_col3_strm_TREADY;

AESL_axi_s_o_col3_strm AESL_AXI_S_o_col3_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_o_col3_strm_TDATA(o_col3_strm_TDATA),
    .TRAN_o_col3_strm_TVALID(o_col3_strm_TVALID),
    .TRAN_o_col3_strm_TREADY(o_col3_strm_TREADY),
    .ready(o_col3_strm_ready),
    .done(o_col3_strm_done),
    .transaction(o_col3_strm_transaction));

assign o_col3_strm_ready = 0;
assign o_col3_strm_done = AESL_done;
wire o_payload_strm_ready;
wire o_payload_strm_done;
wire [31:0] o_payload_strm_transaction;
wire axi_s_o_payload_strm_TVALID;
wire axi_s_o_payload_strm_TREADY;

AESL_axi_s_o_payload_strm AESL_AXI_S_o_payload_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_o_payload_strm_TDATA(o_payload_strm_TDATA),
    .TRAN_o_payload_strm_TVALID(o_payload_strm_TVALID),
    .TRAN_o_payload_strm_TREADY(o_payload_strm_TREADY),
    .ready(o_payload_strm_ready),
    .done(o_payload_strm_done),
    .transaction(o_payload_strm_transaction));

assign o_payload_strm_ready = 0;
assign o_payload_strm_done = AESL_done;
wire o_e_strm_ready;
wire o_e_strm_done;
wire [31:0] o_e_strm_transaction;
wire axi_s_o_e_strm_TVALID;
wire axi_s_o_e_strm_TREADY;

AESL_axi_s_o_e_strm AESL_AXI_S_o_e_strm(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_o_e_strm_TDATA(o_e_strm_TDATA),
    .TRAN_o_e_strm_TVALID(o_e_strm_TVALID),
    .TRAN_o_e_strm_TREADY(o_e_strm_TREADY),
    .ready(o_e_strm_ready),
    .done(o_e_strm_done),
    .transaction(o_e_strm_transaction));

assign o_e_strm_ready = 0;
assign o_e_strm_done = AESL_done;

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_i_hash_strm;
reg [31:0] size_i_hash_strm;
reg [31:0] size_i_hash_strm_backup;
reg end_i_col1_strm;
reg [31:0] size_i_col1_strm;
reg [31:0] size_i_col1_strm_backup;
reg end_i_col2_strm;
reg [31:0] size_i_col2_strm;
reg [31:0] size_i_col2_strm_backup;
reg end_i_col3_strm;
reg [31:0] size_i_col3_strm;
reg [31:0] size_i_col3_strm_backup;
reg end_i_payload_strm;
reg [31:0] size_i_payload_strm;
reg [31:0] size_i_payload_strm_backup;
reg end_i_e_strm;
reg [31:0] size_i_e_strm;
reg [31:0] size_i_e_strm_backup;
reg end_i_d_key1_strm;
reg [31:0] size_i_d_key1_strm;
reg [31:0] size_i_d_key1_strm_backup;
reg end_o_hash_strm;
reg [31:0] size_o_hash_strm;
reg [31:0] size_o_hash_strm_backup;
reg end_o_col1_strm;
reg [31:0] size_o_col1_strm;
reg [31:0] size_o_col1_strm_backup;
reg end_o_col2_strm;
reg [31:0] size_o_col2_strm;
reg [31:0] size_o_col2_strm_backup;
reg end_o_col3_strm;
reg [31:0] size_o_col3_strm;
reg [31:0] size_o_col3_strm_backup;
reg end_o_payload_strm;
reg [31:0] size_o_payload_strm;
reg [31:0] size_o_payload_strm_backup;
reg end_o_e_strm;
reg [31:0] size_o_e_strm;
reg [31:0] size_o_e_strm_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 1;
end
    // i_hash_strm : axi_s
    reg ready_i_hash_strm;
    
    always @ (*) begin
        if (end_i_hash_strm) begin
            ready_i_hash_strm <= 1;
        end else if (ap_c_n_tvin_trans_num_i_hash_strm > ready_cnt) begin
            ready_i_hash_strm <= 1;
        end else begin
            ready_i_hash_strm <= 0;
        end
    end
    
    // i_col1_strm : axi_s
    reg ready_i_col1_strm;
    
    always @ (*) begin
        if (end_i_col1_strm) begin
            ready_i_col1_strm <= 1;
        end else if (ap_c_n_tvin_trans_num_i_col1_strm > ready_cnt) begin
            ready_i_col1_strm <= 1;
        end else begin
            ready_i_col1_strm <= 0;
        end
    end
    
    // i_col2_strm : axi_s
    reg ready_i_col2_strm;
    
    always @ (*) begin
        if (end_i_col2_strm) begin
            ready_i_col2_strm <= 1;
        end else if (ap_c_n_tvin_trans_num_i_col2_strm > ready_cnt) begin
            ready_i_col2_strm <= 1;
        end else begin
            ready_i_col2_strm <= 0;
        end
    end
    
    // i_col3_strm : axi_s
    reg ready_i_col3_strm;
    
    always @ (*) begin
        if (end_i_col3_strm) begin
            ready_i_col3_strm <= 1;
        end else if (ap_c_n_tvin_trans_num_i_col3_strm > ready_cnt) begin
            ready_i_col3_strm <= 1;
        end else begin
            ready_i_col3_strm <= 0;
        end
    end
    
    // i_payload_strm : axi_s
    reg ready_i_payload_strm;
    
    always @ (*) begin
        if (end_i_payload_strm) begin
            ready_i_payload_strm <= 1;
        end else if (ap_c_n_tvin_trans_num_i_payload_strm > ready_cnt) begin
            ready_i_payload_strm <= 1;
        end else begin
            ready_i_payload_strm <= 0;
        end
    end
    
    // i_e_strm : axi_s
    reg ready_i_e_strm;
    
    always @ (*) begin
        if (end_i_e_strm) begin
            ready_i_e_strm <= 1;
        end else if (ap_c_n_tvin_trans_num_i_e_strm > ready_cnt) begin
            ready_i_e_strm <= 1;
        end else begin
            ready_i_e_strm <= 0;
        end
    end
    
    // i_d_key1_strm : axi_s
    reg ready_i_d_key1_strm;
    
    always @ (*) begin
        if (end_i_d_key1_strm) begin
            ready_i_d_key1_strm <= 1;
        end else if (ap_c_n_tvin_trans_num_i_d_key1_strm > ready_cnt) begin
            ready_i_d_key1_strm <= 1;
        end else begin
            ready_i_d_key1_strm <= 0;
        end
    end
    
    // start
    always @ (*) begin
        if (~AESL_reset) begin
            start <= 0;
        end else begin
            start <= ready_i_hash_strm && ready_i_col1_strm && ready_i_col2_strm && ready_i_col3_strm && ready_i_payload_strm && ready_i_e_strm && ready_i_d_key1_strm;
        end
    end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait(AESL_reset === 1);
    @(posedge AESL_clock);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

assign ready = AESL_start;
assign ready_wire = ready;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    // o_hash_strm : axi_s
    reg done_o_hash_strm;
    
    always @ (*) begin
        if (end_o_hash_strm) begin
            done_o_hash_strm <= 1;
        end else if (ap_c_n_tvout_trans_num_o_hash_strm > done_cnt + 1) begin
            done_o_hash_strm <= 1;
        end else if (size_o_hash_strm > 1) begin
            done_o_hash_strm <= 0;
        end else if (o_hash_strm_TVALID == 1) begin
            done_o_hash_strm <= 1;
        end else begin
            done_o_hash_strm <= 0;
        end
    end
    
    // o_col1_strm : axi_s
    reg done_o_col1_strm;
    
    always @ (*) begin
        if (end_o_col1_strm) begin
            done_o_col1_strm <= 1;
        end else if (ap_c_n_tvout_trans_num_o_col1_strm > done_cnt + 1) begin
            done_o_col1_strm <= 1;
        end else if (size_o_col1_strm > 1) begin
            done_o_col1_strm <= 0;
        end else if (o_col1_strm_TVALID == 1) begin
            done_o_col1_strm <= 1;
        end else begin
            done_o_col1_strm <= 0;
        end
    end
    
    // o_col2_strm : axi_s
    reg done_o_col2_strm;
    
    always @ (*) begin
        if (end_o_col2_strm) begin
            done_o_col2_strm <= 1;
        end else if (ap_c_n_tvout_trans_num_o_col2_strm > done_cnt + 1) begin
            done_o_col2_strm <= 1;
        end else if (size_o_col2_strm > 1) begin
            done_o_col2_strm <= 0;
        end else if (o_col2_strm_TVALID == 1) begin
            done_o_col2_strm <= 1;
        end else begin
            done_o_col2_strm <= 0;
        end
    end
    
    // o_col3_strm : axi_s
    reg done_o_col3_strm;
    
    always @ (*) begin
        if (end_o_col3_strm) begin
            done_o_col3_strm <= 1;
        end else if (ap_c_n_tvout_trans_num_o_col3_strm > done_cnt + 1) begin
            done_o_col3_strm <= 1;
        end else if (size_o_col3_strm > 1) begin
            done_o_col3_strm <= 0;
        end else if (o_col3_strm_TVALID == 1) begin
            done_o_col3_strm <= 1;
        end else begin
            done_o_col3_strm <= 0;
        end
    end
    
    // o_payload_strm : axi_s
    reg done_o_payload_strm;
    
    always @ (*) begin
        if (end_o_payload_strm) begin
            done_o_payload_strm <= 1;
        end else if (ap_c_n_tvout_trans_num_o_payload_strm > done_cnt + 1) begin
            done_o_payload_strm <= 1;
        end else if (size_o_payload_strm > 1) begin
            done_o_payload_strm <= 0;
        end else if (o_payload_strm_TVALID == 1) begin
            done_o_payload_strm <= 1;
        end else begin
            done_o_payload_strm <= 0;
        end
    end
    
    // o_e_strm : axi_s
    reg done_o_e_strm;
    
    always @ (*) begin
        if (end_o_e_strm) begin
            done_o_e_strm <= 1;
        end else if (ap_c_n_tvout_trans_num_o_e_strm > done_cnt + 1) begin
            done_o_e_strm <= 1;
        end else if (size_o_e_strm > 1) begin
            done_o_e_strm <= 0;
        end else if (o_e_strm_TVALID == 1) begin
            done_o_e_strm <= 1;
        end else begin
            done_o_e_strm <= 0;
        end
    end
    
    // AESL_done
    always @ (*) begin
        if (~AESL_reset) begin
            AESL_done <= 0;
        end else begin
            AESL_done <= done_o_hash_strm && done_o_col1_strm && done_o_col2_strm && done_o_col3_strm && done_o_payload_strm && done_o_e_strm;
        end
    end
    
    `define STREAM_SIZE_IN_i_hash_strm "../tv/stream_size/stream_size_in_i_hash_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_i_hash_strm
        integer fp_i_hash_strm;
        reg [127:0] token_i_hash_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_i_hash_strm = 0;
        end_i_hash_strm = 0;
        wait (AESL_reset === 1);
        
        fp_i_hash_strm = $fopen(`STREAM_SIZE_IN_i_hash_strm, "r");
        if(fp_i_hash_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_i_hash_strm);
            $finish;
        end
        read_token(fp_i_hash_strm, token_i_hash_strm); // should be [[[runtime]]]
        if (token_i_hash_strm != "[[[runtime]]]") begin
            $display("ERROR: token_i_hash_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_i_hash_strm = 0;
        size_i_hash_strm_backup = 0;
        while (size_i_hash_strm == 0 && end_i_hash_strm == 0) begin
            ap_c_n_tvin_trans_num_i_hash_strm = ap_c_n_tvin_trans_num_i_hash_strm + 1;
            read_token(fp_i_hash_strm, token_i_hash_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_i_hash_strm == "[[transaction]]") begin
                read_token(fp_i_hash_strm, token_i_hash_strm); // should be transaction number
                read_token(fp_i_hash_strm, token_i_hash_strm); // should be size for hls::stream
                ret = $sscanf(token_i_hash_strm, "%d", size_i_hash_strm);
                if (size_i_hash_strm > 0) begin
                    size_i_hash_strm_backup = size_i_hash_strm;
                end
                read_token(fp_i_hash_strm, token_i_hash_strm); // should be [[/transaction]]
            end else if (token_i_hash_strm == "[[[/runtime]]]") begin
                $fclose(fp_i_hash_strm);
                end_i_hash_strm = 1;
            end else begin
                $display("ERROR: unknown token_i_hash_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_i_hash_strm == 0) begin
                if ((i_hash_strm_TREADY & i_hash_strm_TVALID) == 1) begin
                    if (size_i_hash_strm > 0) begin
                        size_i_hash_strm = size_i_hash_strm - 1;
                        while (size_i_hash_strm == 0 && end_i_hash_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_hash_strm = ap_c_n_tvin_trans_num_i_hash_strm + 1;
                            read_token(fp_i_hash_strm, token_i_hash_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_i_hash_strm == "[[transaction]]") begin
                                read_token(fp_i_hash_strm, token_i_hash_strm); // should be transaction number
                                read_token(fp_i_hash_strm, token_i_hash_strm); // should be size for hls::stream
                                ret = $sscanf(token_i_hash_strm, "%d", size_i_hash_strm);
                                if (size_i_hash_strm > 0) begin
                                    size_i_hash_strm_backup = size_i_hash_strm;
                                end
                                read_token(fp_i_hash_strm, token_i_hash_strm); // should be [[/transaction]]
                            end else if (token_i_hash_strm == "[[[/runtime]]]") begin
                                size_i_hash_strm = size_i_hash_strm_backup;
                                $fclose(fp_i_hash_strm);
                                end_i_hash_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_i_hash_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((i_hash_strm_TREADY & i_hash_strm_TVALID) == 1) begin
                    if (size_i_hash_strm > 0) begin
                        size_i_hash_strm = size_i_hash_strm - 1;
                        if (size_i_hash_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_hash_strm = ap_c_n_tvin_trans_num_i_hash_strm + 1;
                            size_i_hash_strm = size_i_hash_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_i_col1_strm "../tv/stream_size/stream_size_in_i_col1_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_i_col1_strm
        integer fp_i_col1_strm;
        reg [127:0] token_i_col1_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_i_col1_strm = 0;
        end_i_col1_strm = 0;
        wait (AESL_reset === 1);
        
        fp_i_col1_strm = $fopen(`STREAM_SIZE_IN_i_col1_strm, "r");
        if(fp_i_col1_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_i_col1_strm);
            $finish;
        end
        read_token(fp_i_col1_strm, token_i_col1_strm); // should be [[[runtime]]]
        if (token_i_col1_strm != "[[[runtime]]]") begin
            $display("ERROR: token_i_col1_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_i_col1_strm = 0;
        size_i_col1_strm_backup = 0;
        while (size_i_col1_strm == 0 && end_i_col1_strm == 0) begin
            ap_c_n_tvin_trans_num_i_col1_strm = ap_c_n_tvin_trans_num_i_col1_strm + 1;
            read_token(fp_i_col1_strm, token_i_col1_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_i_col1_strm == "[[transaction]]") begin
                read_token(fp_i_col1_strm, token_i_col1_strm); // should be transaction number
                read_token(fp_i_col1_strm, token_i_col1_strm); // should be size for hls::stream
                ret = $sscanf(token_i_col1_strm, "%d", size_i_col1_strm);
                if (size_i_col1_strm > 0) begin
                    size_i_col1_strm_backup = size_i_col1_strm;
                end
                read_token(fp_i_col1_strm, token_i_col1_strm); // should be [[/transaction]]
            end else if (token_i_col1_strm == "[[[/runtime]]]") begin
                $fclose(fp_i_col1_strm);
                end_i_col1_strm = 1;
            end else begin
                $display("ERROR: unknown token_i_col1_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_i_col1_strm == 0) begin
                if ((i_col1_strm_TREADY & i_col1_strm_TVALID) == 1) begin
                    if (size_i_col1_strm > 0) begin
                        size_i_col1_strm = size_i_col1_strm - 1;
                        while (size_i_col1_strm == 0 && end_i_col1_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_col1_strm = ap_c_n_tvin_trans_num_i_col1_strm + 1;
                            read_token(fp_i_col1_strm, token_i_col1_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_i_col1_strm == "[[transaction]]") begin
                                read_token(fp_i_col1_strm, token_i_col1_strm); // should be transaction number
                                read_token(fp_i_col1_strm, token_i_col1_strm); // should be size for hls::stream
                                ret = $sscanf(token_i_col1_strm, "%d", size_i_col1_strm);
                                if (size_i_col1_strm > 0) begin
                                    size_i_col1_strm_backup = size_i_col1_strm;
                                end
                                read_token(fp_i_col1_strm, token_i_col1_strm); // should be [[/transaction]]
                            end else if (token_i_col1_strm == "[[[/runtime]]]") begin
                                size_i_col1_strm = size_i_col1_strm_backup;
                                $fclose(fp_i_col1_strm);
                                end_i_col1_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_i_col1_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((i_col1_strm_TREADY & i_col1_strm_TVALID) == 1) begin
                    if (size_i_col1_strm > 0) begin
                        size_i_col1_strm = size_i_col1_strm - 1;
                        if (size_i_col1_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_col1_strm = ap_c_n_tvin_trans_num_i_col1_strm + 1;
                            size_i_col1_strm = size_i_col1_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_i_col2_strm "../tv/stream_size/stream_size_in_i_col2_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_i_col2_strm
        integer fp_i_col2_strm;
        reg [127:0] token_i_col2_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_i_col2_strm = 0;
        end_i_col2_strm = 0;
        wait (AESL_reset === 1);
        
        fp_i_col2_strm = $fopen(`STREAM_SIZE_IN_i_col2_strm, "r");
        if(fp_i_col2_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_i_col2_strm);
            $finish;
        end
        read_token(fp_i_col2_strm, token_i_col2_strm); // should be [[[runtime]]]
        if (token_i_col2_strm != "[[[runtime]]]") begin
            $display("ERROR: token_i_col2_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_i_col2_strm = 0;
        size_i_col2_strm_backup = 0;
        while (size_i_col2_strm == 0 && end_i_col2_strm == 0) begin
            ap_c_n_tvin_trans_num_i_col2_strm = ap_c_n_tvin_trans_num_i_col2_strm + 1;
            read_token(fp_i_col2_strm, token_i_col2_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_i_col2_strm == "[[transaction]]") begin
                read_token(fp_i_col2_strm, token_i_col2_strm); // should be transaction number
                read_token(fp_i_col2_strm, token_i_col2_strm); // should be size for hls::stream
                ret = $sscanf(token_i_col2_strm, "%d", size_i_col2_strm);
                if (size_i_col2_strm > 0) begin
                    size_i_col2_strm_backup = size_i_col2_strm;
                end
                read_token(fp_i_col2_strm, token_i_col2_strm); // should be [[/transaction]]
            end else if (token_i_col2_strm == "[[[/runtime]]]") begin
                $fclose(fp_i_col2_strm);
                end_i_col2_strm = 1;
            end else begin
                $display("ERROR: unknown token_i_col2_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_i_col2_strm == 0) begin
                if ((i_col2_strm_TREADY & i_col2_strm_TVALID) == 1) begin
                    if (size_i_col2_strm > 0) begin
                        size_i_col2_strm = size_i_col2_strm - 1;
                        while (size_i_col2_strm == 0 && end_i_col2_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_col2_strm = ap_c_n_tvin_trans_num_i_col2_strm + 1;
                            read_token(fp_i_col2_strm, token_i_col2_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_i_col2_strm == "[[transaction]]") begin
                                read_token(fp_i_col2_strm, token_i_col2_strm); // should be transaction number
                                read_token(fp_i_col2_strm, token_i_col2_strm); // should be size for hls::stream
                                ret = $sscanf(token_i_col2_strm, "%d", size_i_col2_strm);
                                if (size_i_col2_strm > 0) begin
                                    size_i_col2_strm_backup = size_i_col2_strm;
                                end
                                read_token(fp_i_col2_strm, token_i_col2_strm); // should be [[/transaction]]
                            end else if (token_i_col2_strm == "[[[/runtime]]]") begin
                                size_i_col2_strm = size_i_col2_strm_backup;
                                $fclose(fp_i_col2_strm);
                                end_i_col2_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_i_col2_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((i_col2_strm_TREADY & i_col2_strm_TVALID) == 1) begin
                    if (size_i_col2_strm > 0) begin
                        size_i_col2_strm = size_i_col2_strm - 1;
                        if (size_i_col2_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_col2_strm = ap_c_n_tvin_trans_num_i_col2_strm + 1;
                            size_i_col2_strm = size_i_col2_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_i_col3_strm "../tv/stream_size/stream_size_in_i_col3_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_i_col3_strm
        integer fp_i_col3_strm;
        reg [127:0] token_i_col3_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_i_col3_strm = 0;
        end_i_col3_strm = 0;
        wait (AESL_reset === 1);
        
        fp_i_col3_strm = $fopen(`STREAM_SIZE_IN_i_col3_strm, "r");
        if(fp_i_col3_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_i_col3_strm);
            $finish;
        end
        read_token(fp_i_col3_strm, token_i_col3_strm); // should be [[[runtime]]]
        if (token_i_col3_strm != "[[[runtime]]]") begin
            $display("ERROR: token_i_col3_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_i_col3_strm = 0;
        size_i_col3_strm_backup = 0;
        while (size_i_col3_strm == 0 && end_i_col3_strm == 0) begin
            ap_c_n_tvin_trans_num_i_col3_strm = ap_c_n_tvin_trans_num_i_col3_strm + 1;
            read_token(fp_i_col3_strm, token_i_col3_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_i_col3_strm == "[[transaction]]") begin
                read_token(fp_i_col3_strm, token_i_col3_strm); // should be transaction number
                read_token(fp_i_col3_strm, token_i_col3_strm); // should be size for hls::stream
                ret = $sscanf(token_i_col3_strm, "%d", size_i_col3_strm);
                if (size_i_col3_strm > 0) begin
                    size_i_col3_strm_backup = size_i_col3_strm;
                end
                read_token(fp_i_col3_strm, token_i_col3_strm); // should be [[/transaction]]
            end else if (token_i_col3_strm == "[[[/runtime]]]") begin
                $fclose(fp_i_col3_strm);
                end_i_col3_strm = 1;
            end else begin
                $display("ERROR: unknown token_i_col3_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_i_col3_strm == 0) begin
                if ((i_col3_strm_TREADY & i_col3_strm_TVALID) == 1) begin
                    if (size_i_col3_strm > 0) begin
                        size_i_col3_strm = size_i_col3_strm - 1;
                        while (size_i_col3_strm == 0 && end_i_col3_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_col3_strm = ap_c_n_tvin_trans_num_i_col3_strm + 1;
                            read_token(fp_i_col3_strm, token_i_col3_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_i_col3_strm == "[[transaction]]") begin
                                read_token(fp_i_col3_strm, token_i_col3_strm); // should be transaction number
                                read_token(fp_i_col3_strm, token_i_col3_strm); // should be size for hls::stream
                                ret = $sscanf(token_i_col3_strm, "%d", size_i_col3_strm);
                                if (size_i_col3_strm > 0) begin
                                    size_i_col3_strm_backup = size_i_col3_strm;
                                end
                                read_token(fp_i_col3_strm, token_i_col3_strm); // should be [[/transaction]]
                            end else if (token_i_col3_strm == "[[[/runtime]]]") begin
                                size_i_col3_strm = size_i_col3_strm_backup;
                                $fclose(fp_i_col3_strm);
                                end_i_col3_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_i_col3_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((i_col3_strm_TREADY & i_col3_strm_TVALID) == 1) begin
                    if (size_i_col3_strm > 0) begin
                        size_i_col3_strm = size_i_col3_strm - 1;
                        if (size_i_col3_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_col3_strm = ap_c_n_tvin_trans_num_i_col3_strm + 1;
                            size_i_col3_strm = size_i_col3_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_i_payload_strm "../tv/stream_size/stream_size_in_i_payload_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_i_payload_strm
        integer fp_i_payload_strm;
        reg [127:0] token_i_payload_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_i_payload_strm = 0;
        end_i_payload_strm = 0;
        wait (AESL_reset === 1);
        
        fp_i_payload_strm = $fopen(`STREAM_SIZE_IN_i_payload_strm, "r");
        if(fp_i_payload_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_i_payload_strm);
            $finish;
        end
        read_token(fp_i_payload_strm, token_i_payload_strm); // should be [[[runtime]]]
        if (token_i_payload_strm != "[[[runtime]]]") begin
            $display("ERROR: token_i_payload_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_i_payload_strm = 0;
        size_i_payload_strm_backup = 0;
        while (size_i_payload_strm == 0 && end_i_payload_strm == 0) begin
            ap_c_n_tvin_trans_num_i_payload_strm = ap_c_n_tvin_trans_num_i_payload_strm + 1;
            read_token(fp_i_payload_strm, token_i_payload_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_i_payload_strm == "[[transaction]]") begin
                read_token(fp_i_payload_strm, token_i_payload_strm); // should be transaction number
                read_token(fp_i_payload_strm, token_i_payload_strm); // should be size for hls::stream
                ret = $sscanf(token_i_payload_strm, "%d", size_i_payload_strm);
                if (size_i_payload_strm > 0) begin
                    size_i_payload_strm_backup = size_i_payload_strm;
                end
                read_token(fp_i_payload_strm, token_i_payload_strm); // should be [[/transaction]]
            end else if (token_i_payload_strm == "[[[/runtime]]]") begin
                $fclose(fp_i_payload_strm);
                end_i_payload_strm = 1;
            end else begin
                $display("ERROR: unknown token_i_payload_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_i_payload_strm == 0) begin
                if ((i_payload_strm_TREADY & i_payload_strm_TVALID) == 1) begin
                    if (size_i_payload_strm > 0) begin
                        size_i_payload_strm = size_i_payload_strm - 1;
                        while (size_i_payload_strm == 0 && end_i_payload_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_payload_strm = ap_c_n_tvin_trans_num_i_payload_strm + 1;
                            read_token(fp_i_payload_strm, token_i_payload_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_i_payload_strm == "[[transaction]]") begin
                                read_token(fp_i_payload_strm, token_i_payload_strm); // should be transaction number
                                read_token(fp_i_payload_strm, token_i_payload_strm); // should be size for hls::stream
                                ret = $sscanf(token_i_payload_strm, "%d", size_i_payload_strm);
                                if (size_i_payload_strm > 0) begin
                                    size_i_payload_strm_backup = size_i_payload_strm;
                                end
                                read_token(fp_i_payload_strm, token_i_payload_strm); // should be [[/transaction]]
                            end else if (token_i_payload_strm == "[[[/runtime]]]") begin
                                size_i_payload_strm = size_i_payload_strm_backup;
                                $fclose(fp_i_payload_strm);
                                end_i_payload_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_i_payload_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((i_payload_strm_TREADY & i_payload_strm_TVALID) == 1) begin
                    if (size_i_payload_strm > 0) begin
                        size_i_payload_strm = size_i_payload_strm - 1;
                        if (size_i_payload_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_payload_strm = ap_c_n_tvin_trans_num_i_payload_strm + 1;
                            size_i_payload_strm = size_i_payload_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_i_e_strm "../tv/stream_size/stream_size_in_i_e_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_i_e_strm
        integer fp_i_e_strm;
        reg [127:0] token_i_e_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_i_e_strm = 0;
        end_i_e_strm = 0;
        wait (AESL_reset === 1);
        
        fp_i_e_strm = $fopen(`STREAM_SIZE_IN_i_e_strm, "r");
        if(fp_i_e_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_i_e_strm);
            $finish;
        end
        read_token(fp_i_e_strm, token_i_e_strm); // should be [[[runtime]]]
        if (token_i_e_strm != "[[[runtime]]]") begin
            $display("ERROR: token_i_e_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_i_e_strm = 0;
        size_i_e_strm_backup = 0;
        while (size_i_e_strm == 0 && end_i_e_strm == 0) begin
            ap_c_n_tvin_trans_num_i_e_strm = ap_c_n_tvin_trans_num_i_e_strm + 1;
            read_token(fp_i_e_strm, token_i_e_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_i_e_strm == "[[transaction]]") begin
                read_token(fp_i_e_strm, token_i_e_strm); // should be transaction number
                read_token(fp_i_e_strm, token_i_e_strm); // should be size for hls::stream
                ret = $sscanf(token_i_e_strm, "%d", size_i_e_strm);
                if (size_i_e_strm > 0) begin
                    size_i_e_strm_backup = size_i_e_strm;
                end
                read_token(fp_i_e_strm, token_i_e_strm); // should be [[/transaction]]
            end else if (token_i_e_strm == "[[[/runtime]]]") begin
                $fclose(fp_i_e_strm);
                end_i_e_strm = 1;
            end else begin
                $display("ERROR: unknown token_i_e_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_i_e_strm == 0) begin
                if ((i_e_strm_TREADY & i_e_strm_TVALID) == 1) begin
                    if (size_i_e_strm > 0) begin
                        size_i_e_strm = size_i_e_strm - 1;
                        while (size_i_e_strm == 0 && end_i_e_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_e_strm = ap_c_n_tvin_trans_num_i_e_strm + 1;
                            read_token(fp_i_e_strm, token_i_e_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_i_e_strm == "[[transaction]]") begin
                                read_token(fp_i_e_strm, token_i_e_strm); // should be transaction number
                                read_token(fp_i_e_strm, token_i_e_strm); // should be size for hls::stream
                                ret = $sscanf(token_i_e_strm, "%d", size_i_e_strm);
                                if (size_i_e_strm > 0) begin
                                    size_i_e_strm_backup = size_i_e_strm;
                                end
                                read_token(fp_i_e_strm, token_i_e_strm); // should be [[/transaction]]
                            end else if (token_i_e_strm == "[[[/runtime]]]") begin
                                size_i_e_strm = size_i_e_strm_backup;
                                $fclose(fp_i_e_strm);
                                end_i_e_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_i_e_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((i_e_strm_TREADY & i_e_strm_TVALID) == 1) begin
                    if (size_i_e_strm > 0) begin
                        size_i_e_strm = size_i_e_strm - 1;
                        if (size_i_e_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_e_strm = ap_c_n_tvin_trans_num_i_e_strm + 1;
                            size_i_e_strm = size_i_e_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_i_d_key1_strm "../tv/stream_size/stream_size_in_i_d_key1_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_i_d_key1_strm
        integer fp_i_d_key1_strm;
        reg [127:0] token_i_d_key1_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_i_d_key1_strm = 0;
        end_i_d_key1_strm = 0;
        wait (AESL_reset === 1);
        
        fp_i_d_key1_strm = $fopen(`STREAM_SIZE_IN_i_d_key1_strm, "r");
        if(fp_i_d_key1_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_i_d_key1_strm);
            $finish;
        end
        read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be [[[runtime]]]
        if (token_i_d_key1_strm != "[[[runtime]]]") begin
            $display("ERROR: token_i_d_key1_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_i_d_key1_strm = 0;
        size_i_d_key1_strm_backup = 0;
        while (size_i_d_key1_strm == 0 && end_i_d_key1_strm == 0) begin
            ap_c_n_tvin_trans_num_i_d_key1_strm = ap_c_n_tvin_trans_num_i_d_key1_strm + 1;
            read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_i_d_key1_strm == "[[transaction]]") begin
                read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be transaction number
                read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be size for hls::stream
                ret = $sscanf(token_i_d_key1_strm, "%d", size_i_d_key1_strm);
                if (size_i_d_key1_strm > 0) begin
                    size_i_d_key1_strm_backup = size_i_d_key1_strm;
                end
                read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be [[/transaction]]
            end else if (token_i_d_key1_strm == "[[[/runtime]]]") begin
                $fclose(fp_i_d_key1_strm);
                end_i_d_key1_strm = 1;
            end else begin
                $display("ERROR: unknown token_i_d_key1_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_i_d_key1_strm == 0) begin
                if ((i_d_key1_strm_TREADY & i_d_key1_strm_TVALID) == 1) begin
                    if (size_i_d_key1_strm > 0) begin
                        size_i_d_key1_strm = size_i_d_key1_strm - 1;
                        while (size_i_d_key1_strm == 0 && end_i_d_key1_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_d_key1_strm = ap_c_n_tvin_trans_num_i_d_key1_strm + 1;
                            read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_i_d_key1_strm == "[[transaction]]") begin
                                read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be transaction number
                                read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be size for hls::stream
                                ret = $sscanf(token_i_d_key1_strm, "%d", size_i_d_key1_strm);
                                if (size_i_d_key1_strm > 0) begin
                                    size_i_d_key1_strm_backup = size_i_d_key1_strm;
                                end
                                read_token(fp_i_d_key1_strm, token_i_d_key1_strm); // should be [[/transaction]]
                            end else if (token_i_d_key1_strm == "[[[/runtime]]]") begin
                                size_i_d_key1_strm = size_i_d_key1_strm_backup;
                                $fclose(fp_i_d_key1_strm);
                                end_i_d_key1_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_i_d_key1_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((i_d_key1_strm_TREADY & i_d_key1_strm_TVALID) == 1) begin
                    if (size_i_d_key1_strm > 0) begin
                        size_i_d_key1_strm = size_i_d_key1_strm - 1;
                        if (size_i_d_key1_strm == 0) begin
                            ap_c_n_tvin_trans_num_i_d_key1_strm = ap_c_n_tvin_trans_num_i_d_key1_strm + 1;
                            size_i_d_key1_strm = size_i_d_key1_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    `define STREAM_SIZE_OUT_o_hash_strm "../tv/stream_size/stream_size_out_o_hash_strm.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_o_hash_strm
        integer fp_o_hash_strm;
        reg [127:0] token_o_hash_strm;
        integer ret;
        
        ap_c_n_tvout_trans_num_o_hash_strm = 0;
        end_o_hash_strm = 0;
        wait (AESL_reset === 1);
        
        fp_o_hash_strm = $fopen(`STREAM_SIZE_OUT_o_hash_strm, "r");
        if (fp_o_hash_strm == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_o_hash_strm);
            $finish;
        end
        read_token(fp_o_hash_strm, token_o_hash_strm);
        if (token_o_hash_strm != "[[[runtime]]]") begin
            $display("ERROR: token_o_hash_strm != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_o_hash_strm = 0;
        while (size_o_hash_strm == 0 && end_o_hash_strm == 0) begin
            ap_c_n_tvout_trans_num_o_hash_strm = ap_c_n_tvout_trans_num_o_hash_strm + 1;
            read_token(fp_o_hash_strm, token_o_hash_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_o_hash_strm == "[[transaction]]") begin
                read_token(fp_o_hash_strm, token_o_hash_strm); // should be transaction number
                read_token(fp_o_hash_strm, token_o_hash_strm); // should be size for hls::stream
                ret = $sscanf(token_o_hash_strm, "%d", size_o_hash_strm);
                read_token(fp_o_hash_strm, token_o_hash_strm); // should be [[/transaction]]
            end else if (token_o_hash_strm == "[[[/runtime]]]") begin
                $fclose(fp_o_hash_strm);
                end_o_hash_strm = 1;
            end else begin
                $display("ERROR: unknown token_o_hash_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_o_hash_strm == 0) begin 
                if (o_hash_strm_TVALID == 1) begin
                    if (size_o_hash_strm > 0) begin
                        size_o_hash_strm = size_o_hash_strm - 1;
                        while (size_o_hash_strm == 0 && end_o_hash_strm == 0) begin
                            ap_c_n_tvout_trans_num_o_hash_strm = ap_c_n_tvout_trans_num_o_hash_strm + 1;
                            read_token(fp_o_hash_strm, token_o_hash_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_o_hash_strm == "[[transaction]]") begin
                                read_token(fp_o_hash_strm, token_o_hash_strm); // should be transaction number
                                read_token(fp_o_hash_strm, token_o_hash_strm); // should be size for hls::stream
                                ret = $sscanf(token_o_hash_strm, "%d", size_o_hash_strm);
                                read_token(fp_o_hash_strm, token_o_hash_strm); // should be [[/transaction]]
                            end else if (token_o_hash_strm == "[[[/runtime]]]") begin
                                $fclose(fp_o_hash_strm);
                                end_o_hash_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_o_hash_strm");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
    `define STREAM_SIZE_OUT_o_col1_strm "../tv/stream_size/stream_size_out_o_col1_strm.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_o_col1_strm
        integer fp_o_col1_strm;
        reg [127:0] token_o_col1_strm;
        integer ret;
        
        ap_c_n_tvout_trans_num_o_col1_strm = 0;
        end_o_col1_strm = 0;
        wait (AESL_reset === 1);
        
        fp_o_col1_strm = $fopen(`STREAM_SIZE_OUT_o_col1_strm, "r");
        if (fp_o_col1_strm == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_o_col1_strm);
            $finish;
        end
        read_token(fp_o_col1_strm, token_o_col1_strm);
        if (token_o_col1_strm != "[[[runtime]]]") begin
            $display("ERROR: token_o_col1_strm != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_o_col1_strm = 0;
        while (size_o_col1_strm == 0 && end_o_col1_strm == 0) begin
            ap_c_n_tvout_trans_num_o_col1_strm = ap_c_n_tvout_trans_num_o_col1_strm + 1;
            read_token(fp_o_col1_strm, token_o_col1_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_o_col1_strm == "[[transaction]]") begin
                read_token(fp_o_col1_strm, token_o_col1_strm); // should be transaction number
                read_token(fp_o_col1_strm, token_o_col1_strm); // should be size for hls::stream
                ret = $sscanf(token_o_col1_strm, "%d", size_o_col1_strm);
                read_token(fp_o_col1_strm, token_o_col1_strm); // should be [[/transaction]]
            end else if (token_o_col1_strm == "[[[/runtime]]]") begin
                $fclose(fp_o_col1_strm);
                end_o_col1_strm = 1;
            end else begin
                $display("ERROR: unknown token_o_col1_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_o_col1_strm == 0) begin 
                if (o_col1_strm_TVALID == 1) begin
                    if (size_o_col1_strm > 0) begin
                        size_o_col1_strm = size_o_col1_strm - 1;
                        while (size_o_col1_strm == 0 && end_o_col1_strm == 0) begin
                            ap_c_n_tvout_trans_num_o_col1_strm = ap_c_n_tvout_trans_num_o_col1_strm + 1;
                            read_token(fp_o_col1_strm, token_o_col1_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_o_col1_strm == "[[transaction]]") begin
                                read_token(fp_o_col1_strm, token_o_col1_strm); // should be transaction number
                                read_token(fp_o_col1_strm, token_o_col1_strm); // should be size for hls::stream
                                ret = $sscanf(token_o_col1_strm, "%d", size_o_col1_strm);
                                read_token(fp_o_col1_strm, token_o_col1_strm); // should be [[/transaction]]
                            end else if (token_o_col1_strm == "[[[/runtime]]]") begin
                                $fclose(fp_o_col1_strm);
                                end_o_col1_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_o_col1_strm");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
    `define STREAM_SIZE_OUT_o_col2_strm "../tv/stream_size/stream_size_out_o_col2_strm.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_o_col2_strm
        integer fp_o_col2_strm;
        reg [127:0] token_o_col2_strm;
        integer ret;
        
        ap_c_n_tvout_trans_num_o_col2_strm = 0;
        end_o_col2_strm = 0;
        wait (AESL_reset === 1);
        
        fp_o_col2_strm = $fopen(`STREAM_SIZE_OUT_o_col2_strm, "r");
        if (fp_o_col2_strm == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_o_col2_strm);
            $finish;
        end
        read_token(fp_o_col2_strm, token_o_col2_strm);
        if (token_o_col2_strm != "[[[runtime]]]") begin
            $display("ERROR: token_o_col2_strm != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_o_col2_strm = 0;
        while (size_o_col2_strm == 0 && end_o_col2_strm == 0) begin
            ap_c_n_tvout_trans_num_o_col2_strm = ap_c_n_tvout_trans_num_o_col2_strm + 1;
            read_token(fp_o_col2_strm, token_o_col2_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_o_col2_strm == "[[transaction]]") begin
                read_token(fp_o_col2_strm, token_o_col2_strm); // should be transaction number
                read_token(fp_o_col2_strm, token_o_col2_strm); // should be size for hls::stream
                ret = $sscanf(token_o_col2_strm, "%d", size_o_col2_strm);
                read_token(fp_o_col2_strm, token_o_col2_strm); // should be [[/transaction]]
            end else if (token_o_col2_strm == "[[[/runtime]]]") begin
                $fclose(fp_o_col2_strm);
                end_o_col2_strm = 1;
            end else begin
                $display("ERROR: unknown token_o_col2_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_o_col2_strm == 0) begin 
                if (o_col2_strm_TVALID == 1) begin
                    if (size_o_col2_strm > 0) begin
                        size_o_col2_strm = size_o_col2_strm - 1;
                        while (size_o_col2_strm == 0 && end_o_col2_strm == 0) begin
                            ap_c_n_tvout_trans_num_o_col2_strm = ap_c_n_tvout_trans_num_o_col2_strm + 1;
                            read_token(fp_o_col2_strm, token_o_col2_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_o_col2_strm == "[[transaction]]") begin
                                read_token(fp_o_col2_strm, token_o_col2_strm); // should be transaction number
                                read_token(fp_o_col2_strm, token_o_col2_strm); // should be size for hls::stream
                                ret = $sscanf(token_o_col2_strm, "%d", size_o_col2_strm);
                                read_token(fp_o_col2_strm, token_o_col2_strm); // should be [[/transaction]]
                            end else if (token_o_col2_strm == "[[[/runtime]]]") begin
                                $fclose(fp_o_col2_strm);
                                end_o_col2_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_o_col2_strm");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
    `define STREAM_SIZE_OUT_o_col3_strm "../tv/stream_size/stream_size_out_o_col3_strm.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_o_col3_strm
        integer fp_o_col3_strm;
        reg [127:0] token_o_col3_strm;
        integer ret;
        
        ap_c_n_tvout_trans_num_o_col3_strm = 0;
        end_o_col3_strm = 0;
        wait (AESL_reset === 1);
        
        fp_o_col3_strm = $fopen(`STREAM_SIZE_OUT_o_col3_strm, "r");
        if (fp_o_col3_strm == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_o_col3_strm);
            $finish;
        end
        read_token(fp_o_col3_strm, token_o_col3_strm);
        if (token_o_col3_strm != "[[[runtime]]]") begin
            $display("ERROR: token_o_col3_strm != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_o_col3_strm = 0;
        while (size_o_col3_strm == 0 && end_o_col3_strm == 0) begin
            ap_c_n_tvout_trans_num_o_col3_strm = ap_c_n_tvout_trans_num_o_col3_strm + 1;
            read_token(fp_o_col3_strm, token_o_col3_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_o_col3_strm == "[[transaction]]") begin
                read_token(fp_o_col3_strm, token_o_col3_strm); // should be transaction number
                read_token(fp_o_col3_strm, token_o_col3_strm); // should be size for hls::stream
                ret = $sscanf(token_o_col3_strm, "%d", size_o_col3_strm);
                read_token(fp_o_col3_strm, token_o_col3_strm); // should be [[/transaction]]
            end else if (token_o_col3_strm == "[[[/runtime]]]") begin
                $fclose(fp_o_col3_strm);
                end_o_col3_strm = 1;
            end else begin
                $display("ERROR: unknown token_o_col3_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_o_col3_strm == 0) begin 
                if (o_col3_strm_TVALID == 1) begin
                    if (size_o_col3_strm > 0) begin
                        size_o_col3_strm = size_o_col3_strm - 1;
                        while (size_o_col3_strm == 0 && end_o_col3_strm == 0) begin
                            ap_c_n_tvout_trans_num_o_col3_strm = ap_c_n_tvout_trans_num_o_col3_strm + 1;
                            read_token(fp_o_col3_strm, token_o_col3_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_o_col3_strm == "[[transaction]]") begin
                                read_token(fp_o_col3_strm, token_o_col3_strm); // should be transaction number
                                read_token(fp_o_col3_strm, token_o_col3_strm); // should be size for hls::stream
                                ret = $sscanf(token_o_col3_strm, "%d", size_o_col3_strm);
                                read_token(fp_o_col3_strm, token_o_col3_strm); // should be [[/transaction]]
                            end else if (token_o_col3_strm == "[[[/runtime]]]") begin
                                $fclose(fp_o_col3_strm);
                                end_o_col3_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_o_col3_strm");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
    `define STREAM_SIZE_OUT_o_payload_strm "../tv/stream_size/stream_size_out_o_payload_strm.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_o_payload_strm
        integer fp_o_payload_strm;
        reg [127:0] token_o_payload_strm;
        integer ret;
        
        ap_c_n_tvout_trans_num_o_payload_strm = 0;
        end_o_payload_strm = 0;
        wait (AESL_reset === 1);
        
        fp_o_payload_strm = $fopen(`STREAM_SIZE_OUT_o_payload_strm, "r");
        if (fp_o_payload_strm == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_o_payload_strm);
            $finish;
        end
        read_token(fp_o_payload_strm, token_o_payload_strm);
        if (token_o_payload_strm != "[[[runtime]]]") begin
            $display("ERROR: token_o_payload_strm != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_o_payload_strm = 0;
        while (size_o_payload_strm == 0 && end_o_payload_strm == 0) begin
            ap_c_n_tvout_trans_num_o_payload_strm = ap_c_n_tvout_trans_num_o_payload_strm + 1;
            read_token(fp_o_payload_strm, token_o_payload_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_o_payload_strm == "[[transaction]]") begin
                read_token(fp_o_payload_strm, token_o_payload_strm); // should be transaction number
                read_token(fp_o_payload_strm, token_o_payload_strm); // should be size for hls::stream
                ret = $sscanf(token_o_payload_strm, "%d", size_o_payload_strm);
                read_token(fp_o_payload_strm, token_o_payload_strm); // should be [[/transaction]]
            end else if (token_o_payload_strm == "[[[/runtime]]]") begin
                $fclose(fp_o_payload_strm);
                end_o_payload_strm = 1;
            end else begin
                $display("ERROR: unknown token_o_payload_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_o_payload_strm == 0) begin 
                if (o_payload_strm_TVALID == 1) begin
                    if (size_o_payload_strm > 0) begin
                        size_o_payload_strm = size_o_payload_strm - 1;
                        while (size_o_payload_strm == 0 && end_o_payload_strm == 0) begin
                            ap_c_n_tvout_trans_num_o_payload_strm = ap_c_n_tvout_trans_num_o_payload_strm + 1;
                            read_token(fp_o_payload_strm, token_o_payload_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_o_payload_strm == "[[transaction]]") begin
                                read_token(fp_o_payload_strm, token_o_payload_strm); // should be transaction number
                                read_token(fp_o_payload_strm, token_o_payload_strm); // should be size for hls::stream
                                ret = $sscanf(token_o_payload_strm, "%d", size_o_payload_strm);
                                read_token(fp_o_payload_strm, token_o_payload_strm); // should be [[/transaction]]
                            end else if (token_o_payload_strm == "[[[/runtime]]]") begin
                                $fclose(fp_o_payload_strm);
                                end_o_payload_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_o_payload_strm");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
    `define STREAM_SIZE_OUT_o_e_strm "../tv/stream_size/stream_size_out_o_e_strm.dat"
    
    initial begin : proc_ap_c_n_tvout_trans_num_o_e_strm
        integer fp_o_e_strm;
        reg [127:0] token_o_e_strm;
        integer ret;
        
        ap_c_n_tvout_trans_num_o_e_strm = 0;
        end_o_e_strm = 0;
        wait (AESL_reset === 1);
        
        fp_o_e_strm = $fopen(`STREAM_SIZE_OUT_o_e_strm, "r");
        if (fp_o_e_strm == 0) begin // Failed to open file
            $display("Failed to open size file for \"%s\"!", `STREAM_SIZE_OUT_o_e_strm);
            $finish;
        end
        read_token(fp_o_e_strm, token_o_e_strm);
        if (token_o_e_strm != "[[[runtime]]]") begin
            $display("ERROR: token_o_e_strm != \"[[[runtime]]]\"");
            $finish;
        end
        
        size_o_e_strm = 0;
        while (size_o_e_strm == 0 && end_o_e_strm == 0) begin
            ap_c_n_tvout_trans_num_o_e_strm = ap_c_n_tvout_trans_num_o_e_strm + 1;
            read_token(fp_o_e_strm, token_o_e_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_o_e_strm == "[[transaction]]") begin
                read_token(fp_o_e_strm, token_o_e_strm); // should be transaction number
                read_token(fp_o_e_strm, token_o_e_strm); // should be size for hls::stream
                ret = $sscanf(token_o_e_strm, "%d", size_o_e_strm);
                read_token(fp_o_e_strm, token_o_e_strm); // should be [[/transaction]]
            end else if (token_o_e_strm == "[[[/runtime]]]") begin
                $fclose(fp_o_e_strm);
                end_o_e_strm = 1;
            end else begin
                $display("ERROR: unknown token_o_e_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_o_e_strm == 0) begin 
                if (o_e_strm_TVALID == 1) begin
                    if (size_o_e_strm > 0) begin
                        size_o_e_strm = size_o_e_strm - 1;
                        while (size_o_e_strm == 0 && end_o_e_strm == 0) begin
                            ap_c_n_tvout_trans_num_o_e_strm = ap_c_n_tvout_trans_num_o_e_strm + 1;
                            read_token(fp_o_e_strm, token_o_e_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_o_e_strm == "[[transaction]]") begin
                                read_token(fp_o_e_strm, token_o_e_strm); // should be transaction number
                                read_token(fp_o_e_strm, token_o_e_strm); // should be size for hls::stream
                                ret = $sscanf(token_o_e_strm, "%d", size_o_e_strm);
                                read_token(fp_o_e_strm, token_o_e_strm); // should be [[/transaction]]
                            end else if (token_o_e_strm == "[[[/runtime]]]") begin
                                $fclose(fp_o_e_strm);
                                end_o_e_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_o_e_strm");
                                $finish;
                            end
                        end
                    end
                end
            end
        end
    end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_o_hash_strm;

initial begin : dump_tvout_runtime_sign_o_hash_strm
    integer fp;
    dump_tvout_finish_o_hash_strm = 0;
    fp = $fopen(`AUTOTB_TVOUT_o_hash_strm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_hash_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_o_hash_strm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_hash_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_o_hash_strm = 1;
end


reg dump_tvout_finish_o_col1_strm;

initial begin : dump_tvout_runtime_sign_o_col1_strm
    integer fp;
    dump_tvout_finish_o_col1_strm = 0;
    fp = $fopen(`AUTOTB_TVOUT_o_col1_strm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_col1_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_o_col1_strm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_col1_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_o_col1_strm = 1;
end


reg dump_tvout_finish_o_col2_strm;

initial begin : dump_tvout_runtime_sign_o_col2_strm
    integer fp;
    dump_tvout_finish_o_col2_strm = 0;
    fp = $fopen(`AUTOTB_TVOUT_o_col2_strm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_col2_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_o_col2_strm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_col2_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_o_col2_strm = 1;
end


reg dump_tvout_finish_o_col3_strm;

initial begin : dump_tvout_runtime_sign_o_col3_strm
    integer fp;
    dump_tvout_finish_o_col3_strm = 0;
    fp = $fopen(`AUTOTB_TVOUT_o_col3_strm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_col3_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_o_col3_strm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_col3_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_o_col3_strm = 1;
end


reg dump_tvout_finish_o_payload_strm;

initial begin : dump_tvout_runtime_sign_o_payload_strm
    integer fp;
    dump_tvout_finish_o_payload_strm = 0;
    fp = $fopen(`AUTOTB_TVOUT_o_payload_strm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_payload_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_o_payload_strm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_payload_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_o_payload_strm = 1;
end


reg dump_tvout_finish_o_e_strm;

initial begin : dump_tvout_runtime_sign_o_e_strm
    integer fp;
    dump_tvout_finish_o_e_strm = 0;
    fp = $fopen(`AUTOTB_TVOUT_o_e_strm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_e_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_o_e_strm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_o_e_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_o_e_strm = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    integer real_cnt;
    integer valid_cnt;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;
        real_cnt = (start_cnt < finish_cnt) ? start_cnt : AUTOTB_TRANSACTION_NUM;
        valid_cnt = 0;

        for (i = 0; i < real_cnt; i = i + 1) begin
            // calculate latency
            if (finish_timestamp[i] >= start_timestamp[i]) begin
                latency[i] = finish_timestamp[i] - start_timestamp[i];
                if (latency[i] > latency_max) latency_max = latency[i];
                if (latency[i] < latency_min) latency_min = latency[i];
                latency_total = latency_total + latency[i];
                valid_cnt = valid_cnt + 1;
            end else begin
                latency[i] = 0;
            end
            // calculate interval
            if (real_cnt == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < real_cnt - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        if (valid_cnt > 0)
            latency_average = latency_total / valid_cnt;
        else
            latency_average = latency_total;
        if (real_cnt == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (real_cnt - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (real_cnt == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < real_cnt; i = i + 1) begin
                if (i < real_cnt - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
        if (start_cnt < finish_cnt)
            $display("Note: for this 'ap_ctrl_none' design the last %0d transactions have no output. In order to save runtime, cosim will end eariler after getting all needed output. So performance report only covers the first %0d transactions.",(finish_cnt - start_cnt), start_cnt);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_kernel_monitor_top kernel_monitor_top(
    .kernel_monitor_reset(~AESL_reset),
    .kernel_monitor_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
