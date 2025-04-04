// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module delete_top_delete_top_Pipeline_VITIS_LOOP_24_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        i_e_strm_TVALID,
        i_hash_strm_TVALID,
        i_col1_strm_TVALID,
        i_col2_strm_TVALID,
        i_col3_strm_TVALID,
        i_payload_strm_TVALID,
        i_d_key1_strm_TVALID,
        o_hash_strm_TREADY,
        o_col1_strm_TREADY,
        o_col2_strm_TREADY,
        o_col3_strm_TREADY,
        o_payload_strm_TREADY,
        o_e_strm_TREADY,
        empty,
        i_e_strm_TDATA,
        i_e_strm_TREADY,
        i_hash_strm_TDATA,
        i_hash_strm_TREADY,
        i_col1_strm_TDATA,
        i_col1_strm_TREADY,
        i_col2_strm_TDATA,
        i_col2_strm_TREADY,
        i_col3_strm_TDATA,
        i_col3_strm_TREADY,
        i_payload_strm_TDATA,
        i_payload_strm_TREADY,
        i_d_key1_strm_TDATA,
        i_d_key1_strm_TREADY,
        o_hash_strm_TDATA,
        o_hash_strm_TVALID,
        o_col1_strm_TDATA,
        o_col1_strm_TVALID,
        o_col2_strm_TDATA,
        o_col2_strm_TVALID,
        o_col3_strm_TDATA,
        o_col3_strm_TVALID,
        o_payload_strm_TDATA,
        o_payload_strm_TVALID,
        o_e_strm_TDATA,
        o_e_strm_TVALID
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   i_e_strm_TVALID;
input   i_hash_strm_TVALID;
input   i_col1_strm_TVALID;
input   i_col2_strm_TVALID;
input   i_col3_strm_TVALID;
input   i_payload_strm_TVALID;
input   i_d_key1_strm_TVALID;
input   o_hash_strm_TREADY;
input   o_col1_strm_TREADY;
input   o_col2_strm_TREADY;
input   o_col3_strm_TREADY;
input   o_payload_strm_TREADY;
input   o_e_strm_TREADY;
input  [0:0] empty;
input  [7:0] i_e_strm_TDATA;
output   i_e_strm_TREADY;
input  [31:0] i_hash_strm_TDATA;
output   i_hash_strm_TREADY;
input  [31:0] i_col1_strm_TDATA;
output   i_col1_strm_TREADY;
input  [31:0] i_col2_strm_TDATA;
output   i_col2_strm_TREADY;
input  [31:0] i_col3_strm_TDATA;
output   i_col3_strm_TREADY;
input  [127:0] i_payload_strm_TDATA;
output   i_payload_strm_TREADY;
input  [31:0] i_d_key1_strm_TDATA;
output   i_d_key1_strm_TREADY;
output  [31:0] o_hash_strm_TDATA;
output   o_hash_strm_TVALID;
output  [31:0] o_col1_strm_TDATA;
output   o_col1_strm_TVALID;
output  [31:0] o_col2_strm_TDATA;
output   o_col2_strm_TVALID;
output  [31:0] o_col3_strm_TDATA;
output   o_col3_strm_TVALID;
output  [127:0] o_payload_strm_TDATA;
output   o_payload_strm_TVALID;
output  [7:0] o_e_strm_TDATA;
output   o_e_strm_TVALID;

reg ap_idle;
reg i_e_strm_TREADY;
reg i_hash_strm_TREADY;
reg i_col1_strm_TREADY;
reg i_col2_strm_TREADY;
reg i_col3_strm_TREADY;
reg i_payload_strm_TREADY;
reg i_d_key1_strm_TREADY;
reg o_hash_strm_TVALID;
reg o_col1_strm_TVALID;
reg o_col2_strm_TVALID;
reg o_col3_strm_TVALID;
reg o_payload_strm_TVALID;
reg o_e_strm_TVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg   [0:0] ap_phi_mux_e_phi_fu_170_p4;
wire   [0:0] tmp_nbreadreq_fu_74_p3;
reg    ap_predicate_op25_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1_grp1;
reg    ap_block_pp0_stage0_subdone_grp1_done_reg;
reg    ap_block_pp0_stage0_subdone_grp1;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] icmp_ln32_reg_230;
reg    ap_block_state3_pp0_stage0_iter2_grp1;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    i_e_strm_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    i_hash_strm_TDATA_blk_n;
wire    ap_block_pp0_stage0_grp1;
reg    i_col1_strm_TDATA_blk_n;
reg    i_col2_strm_TDATA_blk_n;
reg    i_col3_strm_TDATA_blk_n;
reg    i_payload_strm_TDATA_blk_n;
reg    i_d_key1_strm_TDATA_blk_n;
reg    o_hash_strm_TDATA_blk_n;
reg    o_col1_strm_TDATA_blk_n;
reg    o_col2_strm_TDATA_blk_n;
reg    o_col3_strm_TDATA_blk_n;
reg    o_payload_strm_TDATA_blk_n;
reg    o_e_strm_TDATA_blk_n;
reg   [0:0] e_reg_167;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] e_2_reg_178;
reg   [31:0] i_hash_strm_read_reg_205;
reg    ap_block_pp0_stage0_11001_grp1;
reg   [31:0] col1_reg_210;
reg   [31:0] i_col2_strm_read_reg_215;
reg   [31:0] i_col3_strm_read_reg_220;
reg   [127:0] i_payload_strm_read_reg_225;
wire   [0:0] icmp_ln32_fu_195_p2;
wire    ap_loop_init;
wire   [0:0] e_1_fu_190_p1;
wire   [0:0] ap_phi_reg_pp0_iter0_e_2_reg_178;
reg    ap_block_pp0_stage0_01001_grp1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_281;
reg    ap_condition_218;
reg    ap_condition_288;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_block_pp0_stage0_subdone_grp1_done_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

delete_top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_block_pp0_stage0_subdone_grp1_done_reg <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_block_pp0_stage0_subdone_grp1_done_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone_grp1)) begin
            ap_block_pp0_stage0_subdone_grp1_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_218)) begin
        if (((tmp_nbreadreq_fu_74_p3 == 1'd0) & (ap_phi_mux_e_phi_fu_170_p4 == 1'd0))) begin
            e_2_reg_178 <= 1'd0;
        end else if (((tmp_nbreadreq_fu_74_p3 == 1'd1) & (ap_phi_mux_e_phi_fu_170_p4 == 1'd0))) begin
            e_2_reg_178 <= e_1_fu_190_p1;
        end else if (~(ap_phi_mux_e_phi_fu_170_p4 == 1'd1)) begin
            e_2_reg_178 <= ap_phi_reg_pp0_iter0_e_2_reg_178;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_288)) begin
            e_reg_167 <= e_2_reg_178;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            e_reg_167 <= empty;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        col1_reg_210 <= i_col1_strm_TDATA;
        i_col2_strm_read_reg_215 <= i_col2_strm_TDATA;
        i_col3_strm_read_reg_220 <= i_col3_strm_TDATA;
        i_hash_strm_read_reg_205 <= i_hash_strm_TDATA;
        i_payload_strm_read_reg_225 <= i_payload_strm_TDATA;
        icmp_ln32_reg_230 <= icmp_ln32_fu_195_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_phi_mux_e_phi_fu_170_p4 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_281)) begin
            ap_phi_mux_e_phi_fu_170_p4 = e_2_reg_178;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_e_phi_fu_170_p4 = empty;
        end else begin
            ap_phi_mux_e_phi_fu_170_p4 = e_reg_167;
        end
    end else begin
        ap_phi_mux_e_phi_fu_170_p4 = e_reg_167;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_col1_strm_TDATA_blk_n = i_col1_strm_TVALID;
    end else begin
        i_col1_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_col1_strm_TREADY = 1'b1;
    end else begin
        i_col1_strm_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_col2_strm_TDATA_blk_n = i_col2_strm_TVALID;
    end else begin
        i_col2_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_col2_strm_TREADY = 1'b1;
    end else begin
        i_col2_strm_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_col3_strm_TDATA_blk_n = i_col3_strm_TVALID;
    end else begin
        i_col3_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_col3_strm_TREADY = 1'b1;
    end else begin
        i_col3_strm_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_d_key1_strm_TDATA_blk_n = i_d_key1_strm_TVALID;
    end else begin
        i_d_key1_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_d_key1_strm_TREADY = 1'b1;
    end else begin
        i_d_key1_strm_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_predicate_op25_read_state1 == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_e_strm_TDATA_blk_n = i_e_strm_TVALID;
    end else begin
        i_e_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op25_read_state1 == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_e_strm_TREADY = 1'b1;
    end else begin
        i_e_strm_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_hash_strm_TDATA_blk_n = i_hash_strm_TVALID;
    end else begin
        i_hash_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_hash_strm_TREADY = 1'b1;
    end else begin
        i_hash_strm_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_payload_strm_TDATA_blk_n = i_payload_strm_TVALID;
    end else begin
        i_payload_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_payload_strm_TREADY = 1'b1;
    end else begin
        i_payload_strm_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_col1_strm_TDATA_blk_n = o_col1_strm_TREADY;
    end else begin
        o_col1_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_col1_strm_TVALID = 1'b1;
    end else begin
        o_col1_strm_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_col2_strm_TDATA_blk_n = o_col2_strm_TREADY;
    end else begin
        o_col2_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_col2_strm_TVALID = 1'b1;
    end else begin
        o_col2_strm_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_col3_strm_TDATA_blk_n = o_col3_strm_TREADY;
    end else begin
        o_col3_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_col3_strm_TVALID = 1'b1;
    end else begin
        o_col3_strm_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_e_strm_TDATA_blk_n = o_e_strm_TREADY;
    end else begin
        o_e_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_e_strm_TVALID = 1'b1;
    end else begin
        o_e_strm_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_hash_strm_TDATA_blk_n = o_hash_strm_TREADY;
    end else begin
        o_hash_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_hash_strm_TVALID = 1'b1;
    end else begin
        o_hash_strm_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_payload_strm_TDATA_blk_n = o_payload_strm_TREADY;
    end else begin
        o_payload_strm_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln32_reg_230 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (1'b0 == ap_block_pp0_stage0_11001_grp1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        o_payload_strm_TVALID = 1'b1;
    end else begin
        o_payload_strm_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001_grp1 = (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1_grp1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2_grp1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1_grp1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2_grp1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_grp1 = (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1_grp1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2_grp1)));
end

assign ap_block_pp0_stage0_grp1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1_grp1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2_grp1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone_grp1 = (((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1_grp1)) | ((1'b0 == ap_block_pp0_stage0_subdone_grp1_done_reg) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2_grp1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_predicate_op25_read_state1 == 1'b1) & (i_e_strm_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1_grp1 = ((i_d_key1_strm_TVALID == 1'b0) | (i_payload_strm_TVALID == 1'b0) | (i_col3_strm_TVALID == 1'b0) | (i_col2_strm_TVALID == 1'b0) | (i_col1_strm_TVALID == 1'b0) | (i_hash_strm_TVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2_grp1 = (((icmp_ln32_reg_230 == 1'd0) & (o_payload_strm_TREADY == 1'b0)) | ((icmp_ln32_reg_230 == 1'd0) & (o_col3_strm_TREADY == 1'b0)) | ((icmp_ln32_reg_230 == 1'd0) & (o_col2_strm_TREADY == 1'b0)) | ((icmp_ln32_reg_230 == 1'd0) & (o_col1_strm_TREADY == 1'b0)) | ((icmp_ln32_reg_230 == 1'd0) & (o_hash_strm_TREADY == 1'b0)) | ((icmp_ln32_reg_230 == 1'd0) & (o_e_strm_TREADY == 1'b0)));
end

always @ (*) begin
    ap_condition_218 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_281 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (e_reg_167 == 1'd0));
end

always @ (*) begin
    ap_condition_288 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (e_reg_167 == 1'd0));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter0_e_2_reg_178 = 'bx;

always @ (*) begin
    ap_predicate_op25_read_state1 = ((tmp_nbreadreq_fu_74_p3 == 1'd1) & (ap_phi_mux_e_phi_fu_170_p4 == 1'd0));
end

assign ap_ready = ap_ready_sig;

assign e_1_fu_190_p1 = i_e_strm_TDATA[0:0];

assign icmp_ln32_fu_195_p2 = ((i_col1_strm_TDATA == i_d_key1_strm_TDATA) ? 1'b1 : 1'b0);

assign o_col1_strm_TDATA = col1_reg_210;

assign o_col2_strm_TDATA = i_col2_strm_read_reg_215;

assign o_col3_strm_TDATA = i_col3_strm_read_reg_220;

assign o_e_strm_TDATA = 8'd0;

assign o_hash_strm_TDATA = i_hash_strm_read_reg_205;

assign o_payload_strm_TDATA = i_payload_strm_read_reg_225;

assign tmp_nbreadreq_fu_74_p3 = i_e_strm_TVALID;

endmodule //delete_top_delete_top_Pipeline_VITIS_LOOP_24_1
