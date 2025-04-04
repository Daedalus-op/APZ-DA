// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module filter_dut_broadcast_Pipeline_VITIS_LOOP_88_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        e_strm_dout,
        e_strm_empty_n,
        e_strm_read,
        e_v_strm_din,
        e_v_strm_num_data_valid,
        e_v_strm_fifo_cap,
        e_v_strm_full_n,
        e_v_strm_write,
        e_p_strm_din,
        e_p_strm_num_data_valid,
        e_p_strm_fifo_cap,
        e_p_strm_full_n,
        e_p_strm_write,
        e
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] e_strm_dout;
input   e_strm_empty_n;
output   e_strm_read;
output  [0:0] e_v_strm_din;
input  [3:0] e_v_strm_num_data_valid;
input  [3:0] e_v_strm_fifo_cap;
input   e_v_strm_full_n;
output   e_v_strm_write;
output  [0:0] e_p_strm_din;
input  [5:0] e_p_strm_num_data_valid;
input  [5:0] e_p_strm_fifo_cap;
input   e_p_strm_full_n;
output   e_p_strm_write;
input  [0:0] e;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg   [0:0] ap_phi_mux_e_5_phi_fu_63_p4;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] e_5_reg_60;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    e_v_strm_blk_n;
wire    ap_block_pp0_stage0;
reg    e_p_strm_blk_n;
reg    e_strm_blk_n;
reg   [0:0] e_6_reg_71;
reg    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
reg    e_strm_read_local;
reg    ap_block_pp0_stage0_01001;
reg    e_v_strm_write_local;
reg    e_p_strm_write_local;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_155;
reg    ap_condition_160;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_160)) begin
            e_5_reg_60 <= e_6_reg_71;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            e_5_reg_60 <= e;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_6_reg_71 <= e_strm_dout;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_phi_mux_e_5_phi_fu_63_p4 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_155)) begin
            ap_phi_mux_e_5_phi_fu_63_p4 = e_6_reg_71;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_e_5_phi_fu_63_p4 = e;
        end else begin
            ap_phi_mux_e_5_phi_fu_63_p4 = e_5_reg_60;
        end
    end else begin
        ap_phi_mux_e_5_phi_fu_63_p4 = e_5_reg_60;
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
    if (((1'b0 == ap_block_pp0_stage0) & (e_5_reg_60 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_p_strm_blk_n = e_p_strm_full_n;
    end else begin
        e_p_strm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (e_5_reg_60 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_p_strm_write_local = 1'b1;
    end else begin
        e_p_strm_write_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_phi_mux_e_5_phi_fu_63_p4 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_strm_blk_n = e_strm_empty_n;
    end else begin
        e_strm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_phi_mux_e_5_phi_fu_63_p4 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_strm_read_local = 1'b1;
    end else begin
        e_strm_read_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (e_5_reg_60 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_v_strm_blk_n = e_v_strm_full_n;
    end else begin
        e_v_strm_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (e_5_reg_60 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_v_strm_write_local = 1'b1;
    end else begin
        e_v_strm_write_local = 1'b0;
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
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage0_iter1)) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_phi_mux_e_5_phi_fu_63_p4 == 1'd0) & (e_strm_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((e_p_strm_full_n == 1'b0) & (e_5_reg_60 == 1'd0)) | ((e_5_reg_60 == 1'd0) & (e_v_strm_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_155 = ((1'b0 == ap_block_pp0_stage0) & (e_5_reg_60 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_condition_160 = ((1'b0 == ap_block_pp0_stage0_11001) & (e_5_reg_60 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign e_p_strm_din = 1'd0;

assign e_p_strm_write = e_p_strm_write_local;

assign e_strm_read = e_strm_read_local;

assign e_v_strm_din = 1'd0;

assign e_v_strm_write = e_v_strm_write_local;

endmodule //filter_dut_broadcast_Pipeline_VITIS_LOOP_88_1
