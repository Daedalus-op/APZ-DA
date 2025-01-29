`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [14:0] axis_block_sigs;
wire [1:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_delete_top.i_e_strm_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_delete_top.o_e_strm_TDATA_blk_n;
assign axis_block_sigs[2] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.i_e_strm_TDATA_blk_n;
assign axis_block_sigs[3] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.i_hash_strm_TDATA_blk_n;
assign axis_block_sigs[4] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.i_col1_strm_TDATA_blk_n;
assign axis_block_sigs[5] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.i_col2_strm_TDATA_blk_n;
assign axis_block_sigs[6] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.i_col3_strm_TDATA_blk_n;
assign axis_block_sigs[7] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.i_payload_strm_TDATA_blk_n;
assign axis_block_sigs[8] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.i_d_key1_strm_TDATA_blk_n;
assign axis_block_sigs[9] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.o_hash_strm_TDATA_blk_n;
assign axis_block_sigs[10] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.o_col1_strm_TDATA_blk_n;
assign axis_block_sigs[11] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.o_col2_strm_TDATA_blk_n;
assign axis_block_sigs[12] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.o_col3_strm_TDATA_blk_n;
assign axis_block_sigs[13] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.o_payload_strm_TDATA_blk_n;
assign axis_block_sigs[14] = ~AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.o_e_strm_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = AESL_inst_delete_top.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.ap_idle;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


initial begin : trigger_axis_deadlock
reg block_delay;
    block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
        block_delay = kernel_block;
    end
end

endmodule
