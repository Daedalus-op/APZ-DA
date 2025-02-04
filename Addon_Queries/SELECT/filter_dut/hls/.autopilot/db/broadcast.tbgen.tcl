set moduleName broadcast
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {broadcast}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ e_strm int 1 regular {fifo 0 volatile }  }
	{ e_v_strm int 1 regular {fifo 1 volatile }  }
	{ e_p_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "e_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "e_v_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_p_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ e_strm_dout sc_in sc_lv 1 signal 0 } 
	{ e_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ e_strm_read sc_out sc_logic 1 signal 0 } 
	{ e_v_strm_din sc_out sc_lv 1 signal 1 } 
	{ e_v_strm_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ e_v_strm_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ e_v_strm_full_n sc_in sc_logic 1 signal 1 } 
	{ e_v_strm_write sc_out sc_logic 1 signal 1 } 
	{ e_p_strm_din sc_out sc_lv 1 signal 2 } 
	{ e_p_strm_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ e_p_strm_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ e_p_strm_full_n sc_in sc_logic 1 signal 2 } 
	{ e_p_strm_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "e_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_strm", "role": "dout" }} , 
 	{ "name": "e_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_strm", "role": "empty_n" }} , 
 	{ "name": "e_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_strm", "role": "read" }} , 
 	{ "name": "e_v_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "din" }} , 
 	{ "name": "e_v_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_v_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_v_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_v_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_v_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "full_n" }} , 
 	{ "name": "e_v_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "write" }} , 
 	{ "name": "e_p_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_p_strm", "role": "din" }} , 
 	{ "name": "e_p_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "e_p_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_p_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "e_p_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_p_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_p_strm", "role": "full_n" }} , 
 	{ "name": "e_p_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_p_strm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
					{"ID" : "1", "SubInstance" : "grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48", "Port" : "e_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_v_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_v_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48", "Port" : "e_v_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_p_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_p_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48", "Port" : "e_p_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	broadcast {
		e_strm {Type I LastRead 0 FirstWrite -1}
		e_v_strm {Type O LastRead -1 FirstWrite 1}
		e_p_strm {Type O LastRead -1 FirstWrite 1}}
	broadcast_Pipeline_VITIS_LOOP_88_1 {
		e {Type I LastRead 0 FirstWrite -1}
		e_v_strm {Type O LastRead -1 FirstWrite 1}
		e_p_strm {Type O LastRead -1 FirstWrite 1}
		e_strm {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	e_strm { ap_fifo {  { e_strm_dout fifo_data_in 0 1 }  { e_strm_empty_n fifo_status 0 1 }  { e_strm_read fifo_port_we 1 1 } } }
	e_v_strm { ap_fifo {  { e_v_strm_din fifo_data_in 1 1 }  { e_v_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_v_strm_fifo_cap fifo_update 0 4 }  { e_v_strm_full_n fifo_status 0 1 }  { e_v_strm_write fifo_port_we 1 1 } } }
	e_p_strm { ap_fifo {  { e_p_strm_din fifo_data_in 1 1 }  { e_p_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { e_p_strm_fifo_cap fifo_update 0 6 }  { e_p_strm_full_n fifo_status 0 1 }  { e_p_strm_write fifo_port_we 1 1 } } }
}
