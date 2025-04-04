set moduleName pred_pass_32_s
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
set C_modelName {pred_pass<32>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_strm int 32 regular {fifo 0 volatile }  }
	{ e_p_strm int 1 regular {fifo 0 volatile }  }
	{ b_strm int 1 regular {fifo 0 volatile }  }
	{ e_b_strm int 1 regular {fifo 0 volatile }  }
	{ f_strm int 32 regular {fifo 1 volatile }  }
	{ e_f_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_p_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "e_b_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "f_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_f_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_strm_dout sc_in sc_lv 32 signal 0 } 
	{ p_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_strm_read sc_out sc_logic 1 signal 0 } 
	{ e_p_strm_dout sc_in sc_lv 1 signal 1 } 
	{ e_p_strm_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ e_p_strm_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ e_p_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ e_p_strm_read sc_out sc_logic 1 signal 1 } 
	{ b_strm_dout sc_in sc_lv 1 signal 2 } 
	{ b_strm_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ b_strm_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ b_strm_empty_n sc_in sc_logic 1 signal 2 } 
	{ b_strm_read sc_out sc_logic 1 signal 2 } 
	{ e_b_strm_dout sc_in sc_lv 1 signal 3 } 
	{ e_b_strm_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ e_b_strm_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ e_b_strm_empty_n sc_in sc_logic 1 signal 3 } 
	{ e_b_strm_read sc_out sc_logic 1 signal 3 } 
	{ f_strm_din sc_out sc_lv 32 signal 4 } 
	{ f_strm_full_n sc_in sc_logic 1 signal 4 } 
	{ f_strm_write sc_out sc_logic 1 signal 4 } 
	{ e_f_strm_din sc_out sc_lv 1 signal 5 } 
	{ e_f_strm_full_n sc_in sc_logic 1 signal 5 } 
	{ e_f_strm_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_strm", "role": "dout" }} , 
 	{ "name": "p_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_strm", "role": "empty_n" }} , 
 	{ "name": "p_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_strm", "role": "read" }} , 
 	{ "name": "e_p_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_p_strm", "role": "dout" }} , 
 	{ "name": "e_p_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "e_p_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_p_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "e_p_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_p_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_p_strm", "role": "empty_n" }} , 
 	{ "name": "e_p_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_p_strm", "role": "read" }} , 
 	{ "name": "b_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "dout" }} , 
 	{ "name": "b_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_strm", "role": "num_data_valid" }} , 
 	{ "name": "b_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_strm", "role": "fifo_cap" }} , 
 	{ "name": "b_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "empty_n" }} , 
 	{ "name": "b_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "read" }} , 
 	{ "name": "e_b_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "dout" }} , 
 	{ "name": "e_b_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_b_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_b_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_b_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_b_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "empty_n" }} , 
 	{ "name": "e_b_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "read" }} , 
 	{ "name": "f_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "f_strm", "role": "din" }} , 
 	{ "name": "f_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_strm", "role": "full_n" }} , 
 	{ "name": "f_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "f_strm", "role": "write" }} , 
 	{ "name": "e_f_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_f_strm", "role": "din" }} , 
 	{ "name": "e_f_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_f_strm", "role": "full_n" }} , 
 	{ "name": "e_f_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_f_strm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "p_strm", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "p_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_p_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_p_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "e_p_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "b_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "b_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_b_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_b_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "e_b_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "f_strm", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "f_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_f_strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "e_f_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Port" : "e_f_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
	p_strm { ap_fifo {  { p_strm_dout fifo_data_in 0 32 }  { p_strm_empty_n fifo_status 0 1 }  { p_strm_read fifo_port_we 1 1 } } }
	e_p_strm { ap_fifo {  { e_p_strm_dout fifo_data_in 0 1 }  { e_p_strm_num_data_valid fifo_status_num_data_valid 0 6 }  { e_p_strm_fifo_cap fifo_update 0 6 }  { e_p_strm_empty_n fifo_status 0 1 }  { e_p_strm_read fifo_port_we 1 1 } } }
	b_strm { ap_fifo {  { b_strm_dout fifo_data_in 0 1 }  { b_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { b_strm_fifo_cap fifo_update 0 4 }  { b_strm_empty_n fifo_status 0 1 }  { b_strm_read fifo_port_we 1 1 } } }
	e_b_strm { ap_fifo {  { e_b_strm_dout fifo_data_in 0 1 }  { e_b_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_b_strm_fifo_cap fifo_update 0 4 }  { e_b_strm_empty_n fifo_status 0 1 }  { e_b_strm_read fifo_port_we 1 1 } } }
	f_strm { ap_fifo {  { f_strm_din fifo_data_in 1 32 }  { f_strm_full_n fifo_status 0 1 }  { f_strm_write fifo_port_we 1 1 } } }
	e_f_strm { ap_fifo {  { e_f_strm_din fifo_data_in 1 1 }  { e_f_strm_full_n fifo_status 0 1 }  { e_f_strm_write fifo_port_we 1 1 } } }
}
