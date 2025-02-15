set moduleName parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {parse_filter_config<4, 32>_Pipeline_VITIS_LOOP_445_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cmpvv_cfg_strms_0 int 4 regular {fifo 1 volatile }  }
	{ filter_cfg_strm int 32 regular {fifo 0 volatile }  }
	{ cmpvv_cfg_strms_1 int 4 regular {fifo 1 volatile }  }
	{ cmpvv_cfg_strms_2 int 4 regular {fifo 1 volatile }  }
	{ cmpvv_cfg_strms_3 int 4 regular {fifo 1 volatile }  }
	{ cmpvv_cfg_strms_4 int 4 regular {fifo 1 volatile }  }
	{ cmpvv_cfg_strms_5 int 4 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cmpvv_cfg_strms_0", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "filter_cfg_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_1", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_2", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_3", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_4", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_5", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ filter_cfg_strm_dout sc_in sc_lv 32 signal 1 } 
	{ filter_cfg_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ filter_cfg_strm_read sc_out sc_logic 1 signal 1 } 
	{ cmpvv_cfg_strms_4_din sc_out sc_lv 4 signal 5 } 
	{ cmpvv_cfg_strms_4_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ cmpvv_cfg_strms_4_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ cmpvv_cfg_strms_4_full_n sc_in sc_logic 1 signal 5 } 
	{ cmpvv_cfg_strms_4_write sc_out sc_logic 1 signal 5 } 
	{ cmpvv_cfg_strms_3_din sc_out sc_lv 4 signal 4 } 
	{ cmpvv_cfg_strms_3_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ cmpvv_cfg_strms_3_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ cmpvv_cfg_strms_3_full_n sc_in sc_logic 1 signal 4 } 
	{ cmpvv_cfg_strms_3_write sc_out sc_logic 1 signal 4 } 
	{ cmpvv_cfg_strms_2_din sc_out sc_lv 4 signal 3 } 
	{ cmpvv_cfg_strms_2_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ cmpvv_cfg_strms_2_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ cmpvv_cfg_strms_2_full_n sc_in sc_logic 1 signal 3 } 
	{ cmpvv_cfg_strms_2_write sc_out sc_logic 1 signal 3 } 
	{ cmpvv_cfg_strms_1_din sc_out sc_lv 4 signal 2 } 
	{ cmpvv_cfg_strms_1_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ cmpvv_cfg_strms_1_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ cmpvv_cfg_strms_1_full_n sc_in sc_logic 1 signal 2 } 
	{ cmpvv_cfg_strms_1_write sc_out sc_logic 1 signal 2 } 
	{ cmpvv_cfg_strms_0_din sc_out sc_lv 4 signal 0 } 
	{ cmpvv_cfg_strms_0_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ cmpvv_cfg_strms_0_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ cmpvv_cfg_strms_0_full_n sc_in sc_logic 1 signal 0 } 
	{ cmpvv_cfg_strms_0_write sc_out sc_logic 1 signal 0 } 
	{ cmpvv_cfg_strms_5_din sc_out sc_lv 4 signal 6 } 
	{ cmpvv_cfg_strms_5_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ cmpvv_cfg_strms_5_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ cmpvv_cfg_strms_5_full_n sc_in sc_logic 1 signal 6 } 
	{ cmpvv_cfg_strms_5_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "filter_cfg_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filter_cfg_strm", "role": "dout" }} , 
 	{ "name": "filter_cfg_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filter_cfg_strm", "role": "empty_n" }} , 
 	{ "name": "filter_cfg_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filter_cfg_strm", "role": "read" }} , 
 	{ "name": "cmpvv_cfg_strms_4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "din" }} , 
 	{ "name": "cmpvv_cfg_strms_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "full_n" }} , 
 	{ "name": "cmpvv_cfg_strms_4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "write" }} , 
 	{ "name": "cmpvv_cfg_strms_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "din" }} , 
 	{ "name": "cmpvv_cfg_strms_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "full_n" }} , 
 	{ "name": "cmpvv_cfg_strms_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "write" }} , 
 	{ "name": "cmpvv_cfg_strms_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "din" }} , 
 	{ "name": "cmpvv_cfg_strms_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "full_n" }} , 
 	{ "name": "cmpvv_cfg_strms_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "write" }} , 
 	{ "name": "cmpvv_cfg_strms_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "din" }} , 
 	{ "name": "cmpvv_cfg_strms_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "full_n" }} , 
 	{ "name": "cmpvv_cfg_strms_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "write" }} , 
 	{ "name": "cmpvv_cfg_strms_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "din" }} , 
 	{ "name": "cmpvv_cfg_strms_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "full_n" }} , 
 	{ "name": "cmpvv_cfg_strms_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "write" }} , 
 	{ "name": "cmpvv_cfg_strms_5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "din" }} , 
 	{ "name": "cmpvv_cfg_strms_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "full_n" }} , 
 	{ "name": "cmpvv_cfg_strms_5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4 {
		cmpvv_cfg_strms_0 {Type O LastRead -1 FirstWrite 1}
		filter_cfg_strm {Type I LastRead 1 FirstWrite -1}
		cmpvv_cfg_strms_1 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_2 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_3 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_4 {Type O LastRead -1 FirstWrite 1}
		cmpvv_cfg_strms_5 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	cmpvv_cfg_strms_0 { ap_fifo {  { cmpvv_cfg_strms_0_din fifo_data_in 1 4 }  { cmpvv_cfg_strms_0_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_0_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_0_full_n fifo_status 0 1 }  { cmpvv_cfg_strms_0_write fifo_port_we 1 1 } } }
	filter_cfg_strm { ap_fifo {  { filter_cfg_strm_dout fifo_data_in 0 32 }  { filter_cfg_strm_empty_n fifo_status 0 1 }  { filter_cfg_strm_read fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_1 { ap_fifo {  { cmpvv_cfg_strms_1_din fifo_data_in 1 4 }  { cmpvv_cfg_strms_1_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_1_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_1_full_n fifo_status 0 1 }  { cmpvv_cfg_strms_1_write fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_2 { ap_fifo {  { cmpvv_cfg_strms_2_din fifo_data_in 1 4 }  { cmpvv_cfg_strms_2_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_2_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_2_full_n fifo_status 0 1 }  { cmpvv_cfg_strms_2_write fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_3 { ap_fifo {  { cmpvv_cfg_strms_3_din fifo_data_in 1 4 }  { cmpvv_cfg_strms_3_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_3_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_3_full_n fifo_status 0 1 }  { cmpvv_cfg_strms_3_write fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_4 { ap_fifo {  { cmpvv_cfg_strms_4_din fifo_data_in 1 4 }  { cmpvv_cfg_strms_4_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_4_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_4_full_n fifo_status 0 1 }  { cmpvv_cfg_strms_4_write fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_5 { ap_fifo {  { cmpvv_cfg_strms_5_din fifo_data_in 1 4 }  { cmpvv_cfg_strms_5_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_5_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_5_full_n fifo_status 0 1 }  { cmpvv_cfg_strms_5_write fifo_port_we 1 1 } } }
}
