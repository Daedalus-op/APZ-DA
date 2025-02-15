// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module filter_dut_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        filter_cfg_strm_dout,
        filter_cfg_strm_empty_n,
        filter_cfg_strm_read,
        cmpvv_cfg_strms_4_din,
        cmpvv_cfg_strms_4_num_data_valid,
        cmpvv_cfg_strms_4_fifo_cap,
        cmpvv_cfg_strms_4_full_n,
        cmpvv_cfg_strms_4_write,
        cmpvv_cfg_strms_3_din,
        cmpvv_cfg_strms_3_num_data_valid,
        cmpvv_cfg_strms_3_fifo_cap,
        cmpvv_cfg_strms_3_full_n,
        cmpvv_cfg_strms_3_write,
        cmpvv_cfg_strms_2_din,
        cmpvv_cfg_strms_2_num_data_valid,
        cmpvv_cfg_strms_2_fifo_cap,
        cmpvv_cfg_strms_2_full_n,
        cmpvv_cfg_strms_2_write,
        cmpvv_cfg_strms_1_din,
        cmpvv_cfg_strms_1_num_data_valid,
        cmpvv_cfg_strms_1_fifo_cap,
        cmpvv_cfg_strms_1_full_n,
        cmpvv_cfg_strms_1_write,
        cmpvv_cfg_strms_0_din,
        cmpvv_cfg_strms_0_num_data_valid,
        cmpvv_cfg_strms_0_fifo_cap,
        cmpvv_cfg_strms_0_full_n,
        cmpvv_cfg_strms_0_write,
        cmpvv_cfg_strms_5_din,
        cmpvv_cfg_strms_5_num_data_valid,
        cmpvv_cfg_strms_5_fifo_cap,
        cmpvv_cfg_strms_5_full_n,
        cmpvv_cfg_strms_5_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] filter_cfg_strm_dout;
input   filter_cfg_strm_empty_n;
output   filter_cfg_strm_read;
output  [3:0] cmpvv_cfg_strms_4_din;
input  [2:0] cmpvv_cfg_strms_4_num_data_valid;
input  [2:0] cmpvv_cfg_strms_4_fifo_cap;
input   cmpvv_cfg_strms_4_full_n;
output   cmpvv_cfg_strms_4_write;
output  [3:0] cmpvv_cfg_strms_3_din;
input  [2:0] cmpvv_cfg_strms_3_num_data_valid;
input  [2:0] cmpvv_cfg_strms_3_fifo_cap;
input   cmpvv_cfg_strms_3_full_n;
output   cmpvv_cfg_strms_3_write;
output  [3:0] cmpvv_cfg_strms_2_din;
input  [2:0] cmpvv_cfg_strms_2_num_data_valid;
input  [2:0] cmpvv_cfg_strms_2_fifo_cap;
input   cmpvv_cfg_strms_2_full_n;
output   cmpvv_cfg_strms_2_write;
output  [3:0] cmpvv_cfg_strms_1_din;
input  [2:0] cmpvv_cfg_strms_1_num_data_valid;
input  [2:0] cmpvv_cfg_strms_1_fifo_cap;
input   cmpvv_cfg_strms_1_full_n;
output   cmpvv_cfg_strms_1_write;
output  [3:0] cmpvv_cfg_strms_0_din;
input  [2:0] cmpvv_cfg_strms_0_num_data_valid;
input  [2:0] cmpvv_cfg_strms_0_fifo_cap;
input   cmpvv_cfg_strms_0_full_n;
output   cmpvv_cfg_strms_0_write;
output  [3:0] cmpvv_cfg_strms_5_din;
input  [2:0] cmpvv_cfg_strms_5_num_data_valid;
input  [2:0] cmpvv_cfg_strms_5_fifo_cap;
input   cmpvv_cfg_strms_5_full_n;
output   cmpvv_cfg_strms_5_write;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln445_reg_269;
reg   [0:0] icmp_ln446_reg_273;
reg    ap_predicate_op37_read_state2;
reg   [2:0] i_reg_265;
reg    ap_predicate_op51_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln445_fu_155_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    cmpvv_cfg_strms_0_blk_n;
wire    ap_block_pp0_stage0;
reg    filter_cfg_strm_blk_n;
reg    cmpvv_cfg_strms_1_blk_n;
reg    cmpvv_cfg_strms_2_blk_n;
reg    cmpvv_cfg_strms_3_blk_n;
reg    cmpvv_cfg_strms_4_blk_n;
reg    cmpvv_cfg_strms_5_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln446_fu_180_p2;
reg   [31:0] ap_phi_mux_dw_2_phi_fu_135_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_dw_2_reg_132;
wire   [31:0] zext_ln445_fu_213_p1;
reg   [27:0] dw_fu_72;
reg   [2:0] i_1_fu_76;
wire   [2:0] add_ln445_fu_161_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i;
reg   [7:0] nb_fu_80;
wire   [7:0] nb_1_fu_194_p2;
reg   [7:0] ap_sig_allocacmp_nb_load;
reg   [7:0] ap_sig_allocacmp_nb_load_1;
reg    filter_cfg_strm_read_local;
wire   [3:0] cfg_fu_218_p1;
reg    ap_block_pp0_stage0_01001;
reg    cmpvv_cfg_strms_4_write_local;
reg    cmpvv_cfg_strms_3_write_local;
reg    cmpvv_cfg_strms_2_write_local;
reg    cmpvv_cfg_strms_1_write_local;
reg    cmpvv_cfg_strms_0_write_local;
reg    cmpvv_cfg_strms_5_write_local;
wire   [5:0] tmp_fu_170_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_320;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 dw_fu_72 = 28'd0;
#0 i_1_fu_76 = 3'd0;
#0 nb_fu_80 = 8'd0;
#0 ap_done_reg = 1'b0;
end

filter_dut_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln445_fu_155_p2 == 1'd0))) begin
            i_1_fu_76 <= add_ln445_fu_161_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_76 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln445_fu_155_p2 == 1'd0))) begin
            nb_fu_80 <= nb_1_fu_194_p2;
        end else if ((1'b1 == ap_condition_320)) begin
            nb_fu_80 <= 8'd32;
        end else if ((ap_loop_init == 1'b1)) begin
            nb_fu_80 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        dw_fu_72 <= {{ap_phi_mux_dw_2_phi_fu_135_p4[31:4]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_265 <= ap_sig_allocacmp_i;
        icmp_ln445_reg_269 <= icmp_ln445_fu_155_p2;
        icmp_ln446_reg_273 <= icmp_ln446_fu_180_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln445_fu_155_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln445_reg_269 == 1'd0)) begin
        if ((icmp_ln446_reg_273 == 1'd0)) begin
            ap_phi_mux_dw_2_phi_fu_135_p4 = zext_ln445_fu_213_p1;
        end else if ((icmp_ln446_reg_273 == 1'd1)) begin
            ap_phi_mux_dw_2_phi_fu_135_p4 = filter_cfg_strm_dout;
        end else begin
            ap_phi_mux_dw_2_phi_fu_135_p4 = ap_phi_reg_pp0_iter1_dw_2_reg_132;
        end
    end else begin
        ap_phi_mux_dw_2_phi_fu_135_p4 = ap_phi_reg_pp0_iter1_dw_2_reg_132;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i = 3'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_76;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_nb_load = 8'd0;
    end else begin
        ap_sig_allocacmp_nb_load = nb_fu_80;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        if ((1'b1 == ap_condition_320)) begin
            ap_sig_allocacmp_nb_load_1 = 8'd32;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_nb_load_1 = 8'd0;
        end else begin
            ap_sig_allocacmp_nb_load_1 = nb_fu_80;
        end
    end else begin
        ap_sig_allocacmp_nb_load_1 = nb_fu_80;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        cmpvv_cfg_strms_0_blk_n = cmpvv_cfg_strms_0_full_n;
    end else begin
        cmpvv_cfg_strms_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        cmpvv_cfg_strms_0_write_local = 1'b1;
    end else begin
        cmpvv_cfg_strms_0_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        cmpvv_cfg_strms_1_blk_n = cmpvv_cfg_strms_1_full_n;
    end else begin
        cmpvv_cfg_strms_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        cmpvv_cfg_strms_1_write_local = 1'b1;
    end else begin
        cmpvv_cfg_strms_1_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        cmpvv_cfg_strms_2_blk_n = cmpvv_cfg_strms_2_full_n;
    end else begin
        cmpvv_cfg_strms_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        cmpvv_cfg_strms_2_write_local = 1'b1;
    end else begin
        cmpvv_cfg_strms_2_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        cmpvv_cfg_strms_3_blk_n = cmpvv_cfg_strms_3_full_n;
    end else begin
        cmpvv_cfg_strms_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        cmpvv_cfg_strms_3_write_local = 1'b1;
    end else begin
        cmpvv_cfg_strms_3_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        cmpvv_cfg_strms_4_blk_n = cmpvv_cfg_strms_4_full_n;
    end else begin
        cmpvv_cfg_strms_4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((i_reg_265 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        cmpvv_cfg_strms_4_write_local = 1'b1;
    end else begin
        cmpvv_cfg_strms_4_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op51_write_state2 == 1'b1))) begin
        cmpvv_cfg_strms_5_blk_n = cmpvv_cfg_strms_5_full_n;
    end else begin
        cmpvv_cfg_strms_5_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op51_write_state2 == 1'b1))) begin
        cmpvv_cfg_strms_5_write_local = 1'b1;
    end else begin
        cmpvv_cfg_strms_5_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op37_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        filter_cfg_strm_blk_n = filter_cfg_strm_empty_n;
    end else begin
        filter_cfg_strm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op37_read_state2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        filter_cfg_strm_read_local = 1'b1;
    end else begin
        filter_cfg_strm_read_local = 1'b0;
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

assign add_ln445_fu_161_p2 = (ap_sig_allocacmp_i + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((cmpvv_cfg_strms_0_full_n == 1'b0) & (i_reg_265 == 3'd0)) | ((cmpvv_cfg_strms_1_full_n == 1'b0) & (i_reg_265 == 3'd1)) | ((cmpvv_cfg_strms_2_full_n == 1'b0) & (i_reg_265 == 3'd2)) | ((cmpvv_cfg_strms_3_full_n == 1'b0) & (i_reg_265 == 3'd3)) | ((i_reg_265 == 3'd4) & (cmpvv_cfg_strms_4_full_n == 1'b0)) | ((ap_predicate_op37_read_state2 == 1'b1) & (filter_cfg_strm_empty_n == 1'b0)) | ((ap_predicate_op51_write_state2 == 1'b1) & (cmpvv_cfg_strms_5_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_320 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln446_fu_180_p2 == 1'd1) & (icmp_ln445_fu_155_p2 == 1'd0));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_phi_reg_pp0_iter1_dw_2_reg_132 = 'bx;

always @ (*) begin
    ap_predicate_op37_read_state2 = ((icmp_ln446_reg_273 == 1'd1) & (icmp_ln445_reg_269 == 1'd0));
end

always @ (*) begin
    ap_predicate_op51_write_state2 = (~(i_reg_265 == 3'd0) & ~(i_reg_265 == 3'd1) & ~(i_reg_265 == 3'd2) & ~(i_reg_265 == 3'd3) & ~(i_reg_265 == 3'd4));
end

assign ap_ready = ap_ready_sig;

assign cfg_fu_218_p1 = ap_phi_mux_dw_2_phi_fu_135_p4[3:0];

assign cmpvv_cfg_strms_0_din = cfg_fu_218_p1;

assign cmpvv_cfg_strms_0_write = cmpvv_cfg_strms_0_write_local;

assign cmpvv_cfg_strms_1_din = cfg_fu_218_p1;

assign cmpvv_cfg_strms_1_write = cmpvv_cfg_strms_1_write_local;

assign cmpvv_cfg_strms_2_din = cfg_fu_218_p1;

assign cmpvv_cfg_strms_2_write = cmpvv_cfg_strms_2_write_local;

assign cmpvv_cfg_strms_3_din = cfg_fu_218_p1;

assign cmpvv_cfg_strms_3_write = cmpvv_cfg_strms_3_write_local;

assign cmpvv_cfg_strms_4_din = cfg_fu_218_p1;

assign cmpvv_cfg_strms_4_write = cmpvv_cfg_strms_4_write_local;

assign cmpvv_cfg_strms_5_din = cfg_fu_218_p1;

assign cmpvv_cfg_strms_5_write = cmpvv_cfg_strms_5_write_local;

assign filter_cfg_strm_read = filter_cfg_strm_read_local;

assign icmp_ln445_fu_155_p2 = ((ap_sig_allocacmp_i == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln446_fu_180_p2 = (($signed(tmp_fu_170_p4) < $signed(6'd1)) ? 1'b1 : 1'b0);

assign nb_1_fu_194_p2 = ($signed(ap_sig_allocacmp_nb_load_1) + $signed(8'd252));

assign tmp_fu_170_p4 = {{ap_sig_allocacmp_nb_load[7:2]}};

assign zext_ln445_fu_213_p1 = dw_fu_72;

endmodule //filter_dut_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4
