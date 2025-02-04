set SynModuleInfo {
  {SRCNAME broadcast_Pipeline_VITIS_LOOP_88_1 MODELNAME broadcast_Pipeline_VITIS_LOOP_88_1 RTLNAME filter_dut_broadcast_Pipeline_VITIS_LOOP_88_1
    SUBMODULES {
      {MODELNAME filter_dut_flow_control_loop_pipe_sequential_init RTLNAME filter_dut_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME filter_dut_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME broadcast MODELNAME broadcast RTLNAME filter_dut_broadcast}
  {SRCNAME {parse_filter_config<4, 32>_Pipeline_VITIS_LOOP_419_1} MODELNAME parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1 RTLNAME filter_dut_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1}
  {SRCNAME {parse_filter_config<4, 32>_Pipeline_VITIS_LOOP_445_4} MODELNAME parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4 RTLNAME filter_dut_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4}
  {SRCNAME {parse_filter_config<4, 32>_Pipeline_VITIS_LOOP_467_5} MODELNAME parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5 RTLNAME filter_dut_parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5}
  {SRCNAME {parse_filter_config<4, 32>} MODELNAME parse_filter_config_4_32_s RTLNAME filter_dut_parse_filter_config_4_32_s}
  {SRCNAME var_const_cmp<32> MODELNAME var_const_cmp_32_s RTLNAME filter_dut_var_const_cmp_32_s
    SUBMODULES {
      {MODELNAME filter_dut_sparsemux_17_7_1_1_1 RTLNAME filter_dut_sparsemux_17_7_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME var_var_cmp<32> MODELNAME var_var_cmp_32_s RTLNAME filter_dut_var_var_cmp_32_s}
  {SRCNAME compare_ops<32>_Pipeline_FILTER_MAIN_LOOP MODELNAME compare_ops_32_Pipeline_FILTER_MAIN_LOOP RTLNAME filter_dut_compare_ops_32_Pipeline_FILTER_MAIN_LOOP}
  {SRCNAME compare_ops<32> MODELNAME compare_ops_32_s RTLNAME filter_dut_compare_ops_32_s}
  {SRCNAME true_table<4>_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32 MODELNAME true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32 RTLNAME filter_dut_true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32}
  {SRCNAME true_table<4>_Pipeline_TRUE_TABLE_READ MODELNAME true_table_4_Pipeline_TRUE_TABLE_READ RTLNAME filter_dut_true_table_4_Pipeline_TRUE_TABLE_READ}
  {SRCNAME true_table<4> MODELNAME true_table_4_s RTLNAME filter_dut_true_table_4_s
    SUBMODULES {
      {MODELNAME filter_dut_true_table_4_s_truetable_RAM_AUTO_1R1W RTLNAME filter_dut_true_table_4_s_truetable_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pred_pass<32>_Pipeline_FILTER_PRED_PASS MODELNAME pred_pass_32_Pipeline_FILTER_PRED_PASS RTLNAME filter_dut_pred_pass_32_Pipeline_FILTER_PRED_PASS}
  {SRCNAME pred_pass<32> MODELNAME pred_pass_32_s RTLNAME filter_dut_pred_pass_32_s}
  {SRCNAME {dynamicFilter<32, 32>} MODELNAME dynamicFilter_32_32_s RTLNAME filter_dut_dynamicFilter_32_32_s
    SUBMODULES {
      {MODELNAME filter_dut_fifo_w1_d8_S RTLNAME filter_dut_fifo_w1_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME e_v_strm_U}
      {MODELNAME filter_dut_fifo_w1_d32_S RTLNAME filter_dut_fifo_w1_d32_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME e_p_strm_U}
      {MODELNAME filter_dut_fifo_w72_d2_S RTLNAME filter_dut_fifo_w72_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvc_cfg_strms_0_U}
      {MODELNAME filter_dut_fifo_w72_d2_S RTLNAME filter_dut_fifo_w72_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvc_cfg_strms_1_U}
      {MODELNAME filter_dut_fifo_w72_d2_S RTLNAME filter_dut_fifo_w72_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvc_cfg_strms_2_U}
      {MODELNAME filter_dut_fifo_w72_d2_S RTLNAME filter_dut_fifo_w72_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvc_cfg_strms_3_U}
      {MODELNAME filter_dut_fifo_w4_d2_S RTLNAME filter_dut_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvv_cfg_strms_U}
      {MODELNAME filter_dut_fifo_w4_d2_S RTLNAME filter_dut_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvv_cfg_strms_1_U}
      {MODELNAME filter_dut_fifo_w4_d2_S RTLNAME filter_dut_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvv_cfg_strms_2_U}
      {MODELNAME filter_dut_fifo_w4_d2_S RTLNAME filter_dut_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvv_cfg_strms_3_U}
      {MODELNAME filter_dut_fifo_w4_d2_S RTLNAME filter_dut_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvv_cfg_strms_4_U}
      {MODELNAME filter_dut_fifo_w4_d2_S RTLNAME filter_dut_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmpvv_cfg_strms_5_U}
      {MODELNAME filter_dut_fifo_w32_d2_S RTLNAME filter_dut_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME tt_cfg_strm_U}
      {MODELNAME filter_dut_fifo_w10_d8_S RTLNAME filter_dut_fifo_w10_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME addr_strm_U}
      {MODELNAME filter_dut_fifo_w1_d8_S RTLNAME filter_dut_fifo_w1_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME e_addr_strm_U}
      {MODELNAME filter_dut_fifo_w1_d8_S RTLNAME filter_dut_fifo_w1_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME b_strm_U}
      {MODELNAME filter_dut_fifo_w1_d8_S RTLNAME filter_dut_fifo_w1_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME e_b_strm_U}
      {MODELNAME filter_dut_start_for_compare_ops_32_U0 RTLNAME filter_dut_start_for_compare_ops_32_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_compare_ops_32_U0_U}
      {MODELNAME filter_dut_start_for_pred_pass_32_U0 RTLNAME filter_dut_start_for_pred_pass_32_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pred_pass_32_U0_U}
      {MODELNAME filter_dut_start_for_true_table_4_U0 RTLNAME filter_dut_start_for_true_table_4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_true_table_4_U0_U}
    }
  }
  {SRCNAME filter_dut MODELNAME filter_dut RTLNAME filter_dut IS_TOP 1}
}
