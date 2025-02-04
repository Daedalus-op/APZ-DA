set moduleName true_table_4_s
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
set C_modelName {true_table<4>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ tt_cfg_strm int 32 regular {fifo 0 volatile }  }
	{ addr_strm int 10 regular {fifo 0 volatile }  }
	{ e_addr_strm int 1 regular {fifo 0 volatile }  }
	{ b_strm int 1 regular {fifo 1 volatile }  }
	{ e_b_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tt_cfg_strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "addr_strm", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "e_addr_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_b_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tt_cfg_strm_dout sc_in sc_lv 32 signal 0 } 
	{ tt_cfg_strm_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ tt_cfg_strm_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ tt_cfg_strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ tt_cfg_strm_read sc_out sc_logic 1 signal 0 } 
	{ addr_strm_dout sc_in sc_lv 10 signal 1 } 
	{ addr_strm_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ addr_strm_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ addr_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ addr_strm_read sc_out sc_logic 1 signal 1 } 
	{ e_addr_strm_dout sc_in sc_lv 1 signal 2 } 
	{ e_addr_strm_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ e_addr_strm_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ e_addr_strm_empty_n sc_in sc_logic 1 signal 2 } 
	{ e_addr_strm_read sc_out sc_logic 1 signal 2 } 
	{ b_strm_din sc_out sc_lv 1 signal 3 } 
	{ b_strm_num_data_valid sc_in sc_lv 4 signal 3 } 
	{ b_strm_fifo_cap sc_in sc_lv 4 signal 3 } 
	{ b_strm_full_n sc_in sc_logic 1 signal 3 } 
	{ b_strm_write sc_out sc_logic 1 signal 3 } 
	{ e_b_strm_din sc_out sc_lv 1 signal 4 } 
	{ e_b_strm_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ e_b_strm_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ e_b_strm_full_n sc_in sc_logic 1 signal 4 } 
	{ e_b_strm_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tt_cfg_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tt_cfg_strm", "role": "dout" }} , 
 	{ "name": "tt_cfg_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tt_cfg_strm", "role": "num_data_valid" }} , 
 	{ "name": "tt_cfg_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tt_cfg_strm", "role": "fifo_cap" }} , 
 	{ "name": "tt_cfg_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt_cfg_strm", "role": "empty_n" }} , 
 	{ "name": "tt_cfg_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tt_cfg_strm", "role": "read" }} , 
 	{ "name": "addr_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "addr_strm", "role": "dout" }} , 
 	{ "name": "addr_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr_strm", "role": "num_data_valid" }} , 
 	{ "name": "addr_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr_strm", "role": "fifo_cap" }} , 
 	{ "name": "addr_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr_strm", "role": "empty_n" }} , 
 	{ "name": "addr_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr_strm", "role": "read" }} , 
 	{ "name": "e_addr_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "dout" }} , 
 	{ "name": "e_addr_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_addr_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_addr_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "empty_n" }} , 
 	{ "name": "e_addr_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "read" }} , 
 	{ "name": "b_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "din" }} , 
 	{ "name": "b_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_strm", "role": "num_data_valid" }} , 
 	{ "name": "b_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_strm", "role": "fifo_cap" }} , 
 	{ "name": "b_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "full_n" }} , 
 	{ "name": "b_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "write" }} , 
 	{ "name": "e_b_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "din" }} , 
 	{ "name": "e_b_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_b_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_b_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_b_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_b_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "full_n" }} , 
 	{ "name": "e_b_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
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
		"Port" : [
			{"Name" : "tt_cfg_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32_fu_52", "Port" : "tt_cfg_strm", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "addr_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Port" : "addr_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "e_addr_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_addr_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Port" : "e_addr_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "b_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Port" : "b_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "e_b_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_b_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Port" : "e_b_strm", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.truetable_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32_fu_52", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
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
		e_b_strm {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tt_cfg_strm { ap_fifo {  { tt_cfg_strm_dout fifo_data_in 0 32 }  { tt_cfg_strm_num_data_valid fifo_status_num_data_valid 0 3 }  { tt_cfg_strm_fifo_cap fifo_update 0 3 }  { tt_cfg_strm_empty_n fifo_status 0 1 }  { tt_cfg_strm_read fifo_port_we 1 1 } } }
	addr_strm { ap_fifo {  { addr_strm_dout fifo_data_in 0 10 }  { addr_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { addr_strm_fifo_cap fifo_update 0 4 }  { addr_strm_empty_n fifo_status 0 1 }  { addr_strm_read fifo_port_we 1 1 } } }
	e_addr_strm { ap_fifo {  { e_addr_strm_dout fifo_data_in 0 1 }  { e_addr_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_addr_strm_fifo_cap fifo_update 0 4 }  { e_addr_strm_empty_n fifo_status 0 1 }  { e_addr_strm_read fifo_port_we 1 1 } } }
	b_strm { ap_fifo {  { b_strm_din fifo_data_in 1 1 }  { b_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { b_strm_fifo_cap fifo_update 0 4 }  { b_strm_full_n fifo_status 0 1 }  { b_strm_write fifo_port_we 1 1 } } }
	e_b_strm { ap_fifo {  { e_b_strm_din fifo_data_in 1 1 }  { e_b_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_b_strm_fifo_cap fifo_update 0 4 }  { e_b_strm_full_n fifo_status 0 1 }  { e_b_strm_write fifo_port_we 1 1 } } }
}
