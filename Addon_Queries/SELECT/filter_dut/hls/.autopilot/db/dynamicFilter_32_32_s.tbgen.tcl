set moduleName dynamicFilter_32_32_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dynamicFilter<32, 32>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ filter_cfg_strm int 32 regular {fifo 0 volatile }  }
	{ k_strms_0 int 32 regular {fifo 0 volatile }  }
	{ k_strms_1 int 32 regular {fifo 0 volatile }  }
	{ k_strms_2 int 32 regular {fifo 0 volatile }  }
	{ k_strms_3 int 32 regular {fifo 0 volatile }  }
	{ p_strm int 32 regular {fifo 0 volatile }  }
	{ e_strm int 1 regular {fifo 0 volatile }  }
	{ f_strm int 32 regular {fifo 1 volatile }  }
	{ e_f_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "filter_cfg_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "f_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_f_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ filter_cfg_strm_dout sc_in sc_lv 32 signal 0 } 
	{ filter_cfg_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ filter_cfg_strm_read sc_out sc_logic 1 signal 0 } 
	{ k_strms_0_dout sc_in sc_lv 32 signal 1 } 
	{ k_strms_0_empty_n sc_in sc_logic 1 signal 1 } 
	{ k_strms_0_read sc_out sc_logic 1 signal 1 } 
	{ k_strms_1_dout sc_in sc_lv 32 signal 2 } 
	{ k_strms_1_empty_n sc_in sc_logic 1 signal 2 } 
	{ k_strms_1_read sc_out sc_logic 1 signal 2 } 
	{ k_strms_2_dout sc_in sc_lv 32 signal 3 } 
	{ k_strms_2_empty_n sc_in sc_logic 1 signal 3 } 
	{ k_strms_2_read sc_out sc_logic 1 signal 3 } 
	{ k_strms_3_dout sc_in sc_lv 32 signal 4 } 
	{ k_strms_3_empty_n sc_in sc_logic 1 signal 4 } 
	{ k_strms_3_read sc_out sc_logic 1 signal 4 } 
	{ p_strm_dout sc_in sc_lv 32 signal 5 } 
	{ p_strm_empty_n sc_in sc_logic 1 signal 5 } 
	{ p_strm_read sc_out sc_logic 1 signal 5 } 
	{ e_strm_dout sc_in sc_lv 1 signal 6 } 
	{ e_strm_empty_n sc_in sc_logic 1 signal 6 } 
	{ e_strm_read sc_out sc_logic 1 signal 6 } 
	{ f_strm_din sc_out sc_lv 32 signal 7 } 
	{ f_strm_full_n sc_in sc_logic 1 signal 7 } 
	{ f_strm_write sc_out sc_logic 1 signal 7 } 
	{ e_f_strm_din sc_out sc_lv 1 signal 8 } 
	{ e_f_strm_full_n sc_in sc_logic 1 signal 8 } 
	{ e_f_strm_write sc_out sc_logic 1 signal 8 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "filter_cfg_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_cfg_strm", "role": "dout" }} , 
 	{ "name": "filter_cfg_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filter_cfg_strm", "role": "empty_n" }} , 
 	{ "name": "filter_cfg_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filter_cfg_strm", "role": "read" }} , 
 	{ "name": "k_strms_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k_strms_0", "role": "dout" }} , 
 	{ "name": "k_strms_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_strms_0", "role": "empty_n" }} , 
 	{ "name": "k_strms_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_strms_0", "role": "read" }} , 
 	{ "name": "k_strms_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k_strms_1", "role": "dout" }} , 
 	{ "name": "k_strms_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_strms_1", "role": "empty_n" }} , 
 	{ "name": "k_strms_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_strms_1", "role": "read" }} , 
 	{ "name": "k_strms_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k_strms_2", "role": "dout" }} , 
 	{ "name": "k_strms_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_strms_2", "role": "empty_n" }} , 
 	{ "name": "k_strms_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_strms_2", "role": "read" }} , 
 	{ "name": "k_strms_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k_strms_3", "role": "dout" }} , 
 	{ "name": "k_strms_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_strms_3", "role": "empty_n" }} , 
 	{ "name": "k_strms_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_strms_3", "role": "read" }} , 
 	{ "name": "p_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_strm", "role": "dout" }} , 
 	{ "name": "p_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_strm", "role": "empty_n" }} , 
 	{ "name": "p_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_strm", "role": "read" }} , 
 	{ "name": "e_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_strm", "role": "dout" }} , 
 	{ "name": "e_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_strm", "role": "empty_n" }} , 
 	{ "name": "e_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_strm", "role": "read" }} , 
 	{ "name": "f_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_strm", "role": "din" }} , 
 	{ "name": "f_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_strm", "role": "full_n" }} , 
 	{ "name": "f_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_strm", "role": "write" }} , 
 	{ "name": "e_f_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_f_strm", "role": "din" }} , 
 	{ "name": "e_f_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_f_strm", "role": "full_n" }} , 
 	{ "name": "e_f_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_f_strm", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "11", "32", "38", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "dynamicFilter_32_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "broadcast_U0"},
			{"ID" : "4", "Name" : "parse_filter_config_4_32_U0"}],
		"OutputProcess" : [
			{"ID" : "38", "Name" : "pred_pass_32_U0"}],
		"Port" : [
			{"Name" : "filter_cfg_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "parse_filter_config_4_32_U0", "Port" : "filter_cfg_strm"}]},
			{"Name" : "k_strms_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compare_ops_32_U0", "Port" : "k_strms_0"}]},
			{"Name" : "k_strms_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compare_ops_32_U0", "Port" : "k_strms_1"}]},
			{"Name" : "k_strms_2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compare_ops_32_U0", "Port" : "k_strms_2"}]},
			{"Name" : "k_strms_3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "compare_ops_32_U0", "Port" : "k_strms_3"}]},
			{"Name" : "p_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "pred_pass_32_U0", "Port" : "p_strm"}]},
			{"Name" : "e_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcast_U0", "Port" : "e_strm"}]},
			{"Name" : "f_strm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "pred_pass_32_U0", "Port" : "f_strm"}]},
			{"Name" : "e_f_strm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "pred_pass_32_U0", "Port" : "e_f_strm"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.broadcast_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "broadcast",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "e_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48", "Port" : "e_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_v_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "41", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_v_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48", "Port" : "e_v_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_p_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38"], "DependentChan" : "42", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_p_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48", "Port" : "e_p_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.broadcast_U0.grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "broadcast_Pipeline_VITIS_LOOP_88_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_v_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "e_v_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "e_p_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "e_p_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "e_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.broadcast_U0.grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.parse_filter_config_4_32_U0", "Parent" : "0", "Child" : ["5", "7", "9"],
		"CDFG" : "parse_filter_config_4_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "filter_cfg_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56", "Port" : "filter_cfg_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "9", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5_fu_74", "Port" : "filter_cfg_strm", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1_fu_42", "Port" : "filter_cfg_strm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cmpvc_cfg_strms_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1_fu_42", "Port" : "cmpvc_cfg_strms_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cmpvc_cfg_strms_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1_fu_42", "Port" : "cmpvc_cfg_strms_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cmpvc_cfg_strms_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1_fu_42", "Port" : "cmpvc_cfg_strms_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cmpvc_cfg_strms_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1_fu_42", "Port" : "cmpvc_cfg_strms_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "cmpvv_cfg_strms_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56", "Port" : "cmpvv_cfg_strms_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cmpvv_cfg_strms_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56", "Port" : "cmpvv_cfg_strms_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cmpvv_cfg_strms_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56", "Port" : "cmpvv_cfg_strms_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cmpvv_cfg_strms_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56", "Port" : "cmpvv_cfg_strms_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cmpvv_cfg_strms_4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56", "Port" : "cmpvv_cfg_strms_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "cmpvv_cfg_strms_5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56", "Port" : "cmpvv_cfg_strms_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "tt_cfg_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5_fu_74", "Port" : "tt_cfg_strm", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.parse_filter_config_4_32_U0.grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1_fu_42", "Parent" : "4", "Child" : ["6"],
		"CDFG" : "parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cmpvc_cfg_strms_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "filter_cfg_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "filter_cfg_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_419_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.parse_filter_config_4_32_U0.grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.parse_filter_config_4_32_U0.grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56", "Parent" : "4", "Child" : ["8"],
		"CDFG" : "parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cmpvv_cfg_strms_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "filter_cfg_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "filter_cfg_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_4", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_5", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_5_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_445_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.parse_filter_config_4_32_U0.grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.parse_filter_config_4_32_U0.grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5_fu_74", "Parent" : "4", "Child" : ["10"],
		"CDFG" : "parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "filter_cfg_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "filter_cfg_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tt_cfg_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "tt_cfg_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_467_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.parse_filter_config_4_32_U0.grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5_fu_74.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "compare_ops_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_compare_ops_32_U0_U",
		"Port" : [
			{"Name" : "cmpvc_cfg_strms_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_strms_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "k_strms_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "k_strms_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "k_strms_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "k_strms_2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "k_strms_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "k_strms_3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "k_strms_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_v_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "41", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_v_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "e_v_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "54", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "addr_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_addr_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "55", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_addr_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "e_addr_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Parent" : "11", "Child" : ["13", "16", "19", "22", "25", "26", "27", "28", "29", "30", "31"],
		"CDFG" : "compare_ops_32_Pipeline_FILTER_MAIN_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_v_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_v_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_strms_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "k_strms_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_strms_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "k_strms_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_strms_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "k_strms_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_strms_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "k_strms_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln232_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln232_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln232_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln233_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln233_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln233_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln234_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln234_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln234_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln235_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln235_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln235_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "addr_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "addr_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "e_addr_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "e_addr_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "FILTER_MAIN_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0c_var_const_cmp_32_s_fu_294", "Parent" : "12", "Child" : ["14", "15"],
		"CDFG" : "var_const_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg_lop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_rop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_l", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0c_var_const_cmp_32_s_fu_294.sparsemux_17_7_1_1_1_U34", "Parent" : "13"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0c_var_const_cmp_32_s_fu_294.sparsemux_17_7_1_1_1_U35", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1c_var_const_cmp_32_s_fu_304", "Parent" : "12", "Child" : ["17", "18"],
		"CDFG" : "var_const_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg_lop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_rop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_l", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1c_var_const_cmp_32_s_fu_304.sparsemux_17_7_1_1_1_U34", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1c_var_const_cmp_32_s_fu_304.sparsemux_17_7_1_1_1_U35", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv2c_var_const_cmp_32_s_fu_314", "Parent" : "12", "Child" : ["20", "21"],
		"CDFG" : "var_const_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg_lop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_rop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_l", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv2c_var_const_cmp_32_s_fu_314.sparsemux_17_7_1_1_1_U34", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv2c_var_const_cmp_32_s_fu_314.sparsemux_17_7_1_1_1_U35", "Parent" : "19"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv3c_var_const_cmp_32_s_fu_324", "Parent" : "12", "Child" : ["23", "24"],
		"CDFG" : "var_const_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg_lop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_rop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_l", "Type" : "None", "Direction" : "I"},
			{"Name" : "cfg_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv3c_var_const_cmp_32_s_fu_324.sparsemux_17_7_1_1_1_U34", "Parent" : "22"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv3c_var_const_cmp_32_s_fu_324.sparsemux_17_7_1_1_1_U35", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0v1_var_var_cmp_32_s_fu_334", "Parent" : "12",
		"CDFG" : "var_var_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"},
			{"Name" : "yu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0v2_var_var_cmp_32_s_fu_343", "Parent" : "12",
		"CDFG" : "var_var_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"},
			{"Name" : "yu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0v3_var_var_cmp_32_s_fu_352", "Parent" : "12",
		"CDFG" : "var_var_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"},
			{"Name" : "yu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1v2_var_var_cmp_32_s_fu_361", "Parent" : "12",
		"CDFG" : "var_var_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"},
			{"Name" : "yu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1v3_var_var_cmp_32_s_fu_370", "Parent" : "12",
		"CDFG" : "var_var_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"},
			{"Name" : "yu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv2v3_var_var_cmp_32_s_fu_379", "Parent" : "12",
		"CDFG" : "var_var_cmp_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cfg", "Type" : "None", "Direction" : "I"},
			{"Name" : "xu", "Type" : "None", "Direction" : "I"},
			{"Name" : "yu", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.compare_ops_32_U0.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.true_table_4_U0", "Parent" : "0", "Child" : ["33", "34", "36"],
		"CDFG" : "true_table_4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "4",
		"StartFifo" : "start_for_true_table_4_U0_U",
		"Port" : [
			{"Name" : "tt_cfg_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32_fu_52", "Port" : "tt_cfg_strm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "addr_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "54", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Port" : "addr_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "e_addr_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "55", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_addr_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Port" : "e_addr_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "b_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38"], "DependentChan" : "56", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Port" : "b_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "e_b_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38"], "DependentChan" : "57", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_b_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Port" : "e_b_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.true_table_4_U0.truetable_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.true_table_4_U0.grp_true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32_fu_52", "Parent" : "32", "Child" : ["35"],
		"CDFG" : "true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1027", "EstimateLatencyMax" : "1027",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "truetable", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tt_cfg_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tt_cfg_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_318_1_TRUE_TABLE_INIT32", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.true_table_4_U0.grp_true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.true_table_4_U0.grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Parent" : "32", "Child" : ["37"],
		"CDFG" : "true_table_4_Pipeline_TRUE_TABLE_READ",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "e", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_addr_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_addr_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "addr_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "addr_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "truetable", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "b_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "e_b_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "e_b_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "TRUE_TABLE_READ", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.true_table_4_U0.grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pred_pass_32_U0", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "pred_pass_32_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_pred_pass_32_U0_U",
		"Port" : [
			{"Name" : "p_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "p_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_p_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "42", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_p_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "e_p_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "b_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["32"], "DependentChan" : "56", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "b_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_b_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["32"], "DependentChan" : "57", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_b_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "e_b_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "f_strm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "f_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_f_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "e_f_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "e_f_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pred_pass_32_U0.grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Parent" : "38", "Child" : ["40"],
		"CDFG" : "pred_pass_32_Pipeline_FILTER_PRED_PASS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ep", "Type" : "None", "Direction" : "I"},
			{"Name" : "eb", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_p_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "e_b_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "e_b_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "b_strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "f_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "f_strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "e_f_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "e_f_strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "FILTER_PRED_PASS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pred_pass_32_U0.grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_v_strm_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_p_strm_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvc_cfg_strms_0_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvc_cfg_strms_1_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvc_cfg_strms_2_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvc_cfg_strms_3_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvv_cfg_strms_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvv_cfg_strms_1_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvv_cfg_strms_2_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvv_cfg_strms_3_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvv_cfg_strms_4_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cmpvv_cfg_strms_5_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tt_cfg_strm_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.addr_strm_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_addr_strm_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_strm_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.e_b_strm_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_compare_ops_32_U0_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pred_pass_32_U0_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_true_table_4_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dynamicFilter_32_32_s {
		filter_cfg_strm {Type I LastRead 3 FirstWrite -1}
		k_strms_0 {Type I LastRead 1 FirstWrite -1}
		k_strms_1 {Type I LastRead 1 FirstWrite -1}
		k_strms_2 {Type I LastRead 1 FirstWrite -1}
		k_strms_3 {Type I LastRead 1 FirstWrite -1}
		p_strm {Type I LastRead 1 FirstWrite -1}
		e_strm {Type I LastRead 0 FirstWrite -1}
		f_strm {Type O LastRead -1 FirstWrite 2}
		e_f_strm {Type O LastRead -1 FirstWrite 2}}
	broadcast {
		e_strm {Type I LastRead 0 FirstWrite -1}
		e_v_strm {Type O LastRead -1 FirstWrite 1}
		e_p_strm {Type O LastRead -1 FirstWrite 1}}
	broadcast_Pipeline_VITIS_LOOP_88_1 {
		e {Type I LastRead 0 FirstWrite -1}
		e_v_strm {Type O LastRead -1 FirstWrite 1}
		e_p_strm {Type O LastRead -1 FirstWrite 1}
		e_strm {Type I LastRead 0 FirstWrite -1}}
	parse_filter_config_4_32_s {
		filter_cfg_strm {Type I LastRead 3 FirstWrite -1}
		cmpvc_cfg_strms_0 {Type O LastRead -1 FirstWrite 3}
		cmpvc_cfg_strms_1 {Type O LastRead -1 FirstWrite 3}
		cmpvc_cfg_strms_2 {Type O LastRead -1 FirstWrite 3}
		cmpvc_cfg_strms_3 {Type O LastRead -1 FirstWrite 3}
		cmpvv_cfg_strms_0 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_1 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_2 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_3 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_4 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_5 {Type O LastRead -1 FirstWrite 1}
		tt_cfg_strm {Type O LastRead -1 FirstWrite 1}}
	parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1 {
		cmpvc_cfg_strms_0 {Type O LastRead -1 FirstWrite 3}
		filter_cfg_strm {Type I LastRead 3 FirstWrite -1}
		cmpvc_cfg_strms_1 {Type O LastRead -1 FirstWrite 3}
		cmpvc_cfg_strms_2 {Type O LastRead -1 FirstWrite 3}
		cmpvc_cfg_strms_3 {Type O LastRead -1 FirstWrite 3}}
	parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4 {
		cmpvv_cfg_strms_0 {Type O LastRead -1 FirstWrite 1}
		filter_cfg_strm {Type I LastRead 1 FirstWrite -1}
		cmpvv_cfg_strms_1 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_2 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_3 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_4 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_5 {Type O LastRead -1 FirstWrite 1}}
	parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5 {
		filter_cfg_strm {Type I LastRead 1 FirstWrite -1}
		tt_cfg_strm {Type O LastRead -1 FirstWrite 1}}
	compare_ops_32_s {
		cmpvc_cfg_strms_0 {Type I LastRead 0 FirstWrite -1}
		cmpvc_cfg_strms_1 {Type I LastRead 0 FirstWrite -1}
		cmpvc_cfg_strms_2 {Type I LastRead 0 FirstWrite -1}
		cmpvc_cfg_strms_3 {Type I LastRead 0 FirstWrite -1}
		cmpvv_cfg_strms_0 {Type I LastRead 0 FirstWrite -1}
		cmpvv_cfg_strms_1 {Type I LastRead 0 FirstWrite -1}
		cmpvv_cfg_strms_2 {Type I LastRead 0 FirstWrite -1}
		cmpvv_cfg_strms_3 {Type I LastRead 0 FirstWrite -1}
		cmpvv_cfg_strms_4 {Type I LastRead 0 FirstWrite -1}
		cmpvv_cfg_strms_5 {Type I LastRead 0 FirstWrite -1}
		k_strms_0 {Type I LastRead 1 FirstWrite -1}
		k_strms_1 {Type I LastRead 1 FirstWrite -1}
		k_strms_2 {Type I LastRead 1 FirstWrite -1}
		k_strms_3 {Type I LastRead 1 FirstWrite -1}
		e_v_strm {Type I LastRead 0 FirstWrite -1}
		addr_strm {Type O LastRead -1 FirstWrite 1}
		e_addr_strm {Type O LastRead -1 FirstWrite 1}}
	compare_ops_32_Pipeline_FILTER_MAIN_LOOP {
		e {Type I LastRead 0 FirstWrite -1}
		e_v_strm {Type I LastRead 0 FirstWrite -1}
		k_strms_0 {Type I LastRead 1 FirstWrite -1}
		k_strms_1 {Type I LastRead 1 FirstWrite -1}
		k_strms_2 {Type I LastRead 1 FirstWrite -1}
		k_strms_3 {Type I LastRead 1 FirstWrite -1}
		empty_18 {Type I LastRead 0 FirstWrite -1}
		trunc_ln232_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln232_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln232_3 {Type I LastRead 0 FirstWrite -1}
		empty_19 {Type I LastRead 0 FirstWrite -1}
		trunc_ln233_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln233_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln233_3 {Type I LastRead 0 FirstWrite -1}
		empty_20 {Type I LastRead 0 FirstWrite -1}
		trunc_ln234_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln234_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln234_3 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		trunc_ln235_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln235_2 {Type I LastRead 0 FirstWrite -1}
		trunc_ln235_3 {Type I LastRead 0 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		addr_strm {Type O LastRead -1 FirstWrite 1}
		e_addr_strm {Type O LastRead -1 FirstWrite 1}}
	var_const_cmp_32_s {
		cfg_lop {Type I LastRead 0 FirstWrite -1}
		cfg_rop {Type I LastRead 0 FirstWrite -1}
		cfg_l {Type I LastRead 0 FirstWrite -1}
		cfg_r {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}}
	var_const_cmp_32_s {
		cfg_lop {Type I LastRead 0 FirstWrite -1}
		cfg_rop {Type I LastRead 0 FirstWrite -1}
		cfg_l {Type I LastRead 0 FirstWrite -1}
		cfg_r {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}}
	var_const_cmp_32_s {
		cfg_lop {Type I LastRead 0 FirstWrite -1}
		cfg_rop {Type I LastRead 0 FirstWrite -1}
		cfg_l {Type I LastRead 0 FirstWrite -1}
		cfg_r {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}}
	var_const_cmp_32_s {
		cfg_lop {Type I LastRead 0 FirstWrite -1}
		cfg_rop {Type I LastRead 0 FirstWrite -1}
		cfg_l {Type I LastRead 0 FirstWrite -1}
		cfg_r {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}}
	var_var_cmp_32_s {
		cfg {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}
		yu {Type I LastRead 0 FirstWrite -1}}
	var_var_cmp_32_s {
		cfg {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}
		yu {Type I LastRead 0 FirstWrite -1}}
	var_var_cmp_32_s {
		cfg {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}
		yu {Type I LastRead 0 FirstWrite -1}}
	var_var_cmp_32_s {
		cfg {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}
		yu {Type I LastRead 0 FirstWrite -1}}
	var_var_cmp_32_s {
		cfg {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}
		yu {Type I LastRead 0 FirstWrite -1}}
	var_var_cmp_32_s {
		cfg {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}
		yu {Type I LastRead 0 FirstWrite -1}}
	true_table_4_s {
		tt_cfg_strm {Type I LastRead 1 FirstWrite -1}
		addr_strm {Type I LastRead 1 FirstWrite -1}
		e_addr_strm {Type I LastRead 2 FirstWrite -1}
		b_strm {Type O LastRead -1 FirstWrite 2}
		e_b_strm {Type O LastRead -1 FirstWrite 2}}
	true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32 {
		truetable {Type O LastRead -1 FirstWrite 2}
		tt_cfg_strm {Type I LastRead 1 FirstWrite -1}}
	true_table_4_Pipeline_TRUE_TABLE_READ {
		e {Type I LastRead 0 FirstWrite -1}
		e_addr_strm {Type I LastRead 0 FirstWrite -1}
		addr_strm {Type I LastRead 1 FirstWrite -1}
		truetable {Type I LastRead 1 FirstWrite -1}
		b_strm {Type O LastRead -1 FirstWrite 2}
		e_b_strm {Type O LastRead -1 FirstWrite 2}}
	pred_pass_32_s {
		p_strm {Type I LastRead 1 FirstWrite -1}
		e_p_strm {Type I LastRead 0 FirstWrite -1}
		b_strm {Type I LastRead 1 FirstWrite -1}
		e_b_strm {Type I LastRead 0 FirstWrite -1}
		f_strm {Type O LastRead -1 FirstWrite 2}
		e_f_strm {Type O LastRead -1 FirstWrite 2}}
	pred_pass_32_Pipeline_FILTER_PRED_PASS {
		ep {Type I LastRead 0 FirstWrite -1}
		eb {Type I LastRead 0 FirstWrite -1}
		e_p_strm {Type I LastRead 0 FirstWrite -1}
		e_b_strm {Type I LastRead 0 FirstWrite -1}
		p_strm {Type I LastRead 1 FirstWrite -1}
		b_strm {Type I LastRead 1 FirstWrite -1}
		f_strm {Type O LastRead -1 FirstWrite 2}
		e_f_strm {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	filter_cfg_strm { ap_fifo {  { filter_cfg_strm_dout fifo_data_in 0 32 }  { filter_cfg_strm_empty_n fifo_status 0 1 }  { filter_cfg_strm_read fifo_port_we 1 1 } } }
	k_strms_0 { ap_fifo {  { k_strms_0_dout fifo_data_in 0 32 }  { k_strms_0_empty_n fifo_status 0 1 }  { k_strms_0_read fifo_port_we 1 1 } } }
	k_strms_1 { ap_fifo {  { k_strms_1_dout fifo_data_in 0 32 }  { k_strms_1_empty_n fifo_status 0 1 }  { k_strms_1_read fifo_port_we 1 1 } } }
	k_strms_2 { ap_fifo {  { k_strms_2_dout fifo_data_in 0 32 }  { k_strms_2_empty_n fifo_status 0 1 }  { k_strms_2_read fifo_port_we 1 1 } } }
	k_strms_3 { ap_fifo {  { k_strms_3_dout fifo_data_in 0 32 }  { k_strms_3_empty_n fifo_status 0 1 }  { k_strms_3_read fifo_port_we 1 1 } } }
	p_strm { ap_fifo {  { p_strm_dout fifo_data_in 0 32 }  { p_strm_empty_n fifo_status 0 1 }  { p_strm_read fifo_port_we 1 1 } } }
	e_strm { ap_fifo {  { e_strm_dout fifo_data_in 0 1 }  { e_strm_empty_n fifo_status 0 1 }  { e_strm_read fifo_port_we 1 1 } } }
	f_strm { ap_fifo {  { f_strm_din fifo_data_in 1 32 }  { f_strm_full_n fifo_status 0 1 }  { f_strm_write fifo_port_we 1 1 } } }
	e_f_strm { ap_fifo {  { e_f_strm_din fifo_data_in 1 1 }  { e_f_strm_full_n fifo_status 0 1 }  { e_f_strm_write fifo_port_we 1 1 } } }
}
