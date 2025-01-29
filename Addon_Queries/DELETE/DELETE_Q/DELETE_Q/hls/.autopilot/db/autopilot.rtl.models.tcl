set SynModuleInfo {
  {SRCNAME delete_top_Pipeline_VITIS_LOOP_24_1 MODELNAME delete_top_Pipeline_VITIS_LOOP_24_1 RTLNAME delete_top_delete_top_Pipeline_VITIS_LOOP_24_1
    SUBMODULES {
      {MODELNAME delete_top_flow_control_loop_pipe_sequential_init RTLNAME delete_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME delete_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME delete_top MODELNAME delete_top RTLNAME delete_top IS_TOP 1
    SUBMODULES {
      {MODELNAME delete_top_regslice_both RTLNAME delete_top_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
