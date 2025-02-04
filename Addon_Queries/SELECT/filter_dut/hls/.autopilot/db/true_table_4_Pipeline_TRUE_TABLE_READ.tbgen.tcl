set moduleName true_table_4_Pipeline_TRUE_TABLE_READ
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
set C_modelName {true_table<4>_Pipeline_TRUE_TABLE_READ}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict truetable { MEM_WIDTH 1 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ e int 1 regular  }
	{ e_addr_strm int 1 regular {fifo 0 volatile }  }
	{ addr_strm int 10 regular {fifo 0 volatile }  }
	{ truetable int 1 regular {array 1024 { 1 3 } 1 1 }  }
	{ b_strm int 1 regular {fifo 1 volatile }  }
	{ e_b_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "e", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "e_addr_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "addr_strm", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "truetable", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "b_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_b_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ e_addr_strm_dout sc_in sc_lv 1 signal 1 } 
	{ e_addr_strm_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ e_addr_strm_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ e_addr_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ e_addr_strm_read sc_out sc_logic 1 signal 1 } 
	{ addr_strm_dout sc_in sc_lv 10 signal 2 } 
	{ addr_strm_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ addr_strm_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ addr_strm_empty_n sc_in sc_logic 1 signal 2 } 
	{ addr_strm_read sc_out sc_logic 1 signal 2 } 
	{ b_strm_din sc_out sc_lv 1 signal 4 } 
	{ b_strm_num_data_valid sc_in sc_lv 4 signal 4 } 
	{ b_strm_fifo_cap sc_in sc_lv 4 signal 4 } 
	{ b_strm_full_n sc_in sc_logic 1 signal 4 } 
	{ b_strm_write sc_out sc_logic 1 signal 4 } 
	{ e_b_strm_din sc_out sc_lv 1 signal 5 } 
	{ e_b_strm_num_data_valid sc_in sc_lv 4 signal 5 } 
	{ e_b_strm_fifo_cap sc_in sc_lv 4 signal 5 } 
	{ e_b_strm_full_n sc_in sc_logic 1 signal 5 } 
	{ e_b_strm_write sc_out sc_logic 1 signal 5 } 
	{ e sc_in sc_lv 1 signal 0 } 
	{ truetable_address0 sc_out sc_lv 10 signal 3 } 
	{ truetable_ce0 sc_out sc_logic 1 signal 3 } 
	{ truetable_q0 sc_in sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "e_addr_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "dout" }} , 
 	{ "name": "e_addr_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_addr_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_addr_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "empty_n" }} , 
 	{ "name": "e_addr_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "read" }} , 
 	{ "name": "addr_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "addr_strm", "role": "dout" }} , 
 	{ "name": "addr_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr_strm", "role": "num_data_valid" }} , 
 	{ "name": "addr_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr_strm", "role": "fifo_cap" }} , 
 	{ "name": "addr_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr_strm", "role": "empty_n" }} , 
 	{ "name": "addr_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr_strm", "role": "read" }} , 
 	{ "name": "b_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "din" }} , 
 	{ "name": "b_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_strm", "role": "num_data_valid" }} , 
 	{ "name": "b_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_strm", "role": "fifo_cap" }} , 
 	{ "name": "b_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "full_n" }} , 
 	{ "name": "b_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_strm", "role": "write" }} , 
 	{ "name": "e_b_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "din" }} , 
 	{ "name": "e_b_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_b_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_b_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_b_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_b_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "full_n" }} , 
 	{ "name": "e_b_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_b_strm", "role": "write" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "default" }} , 
 	{ "name": "truetable_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "truetable", "role": "address0" }} , 
 	{ "name": "truetable_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "truetable", "role": "ce0" }} , 
 	{ "name": "truetable_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "truetable", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	e { ap_none {  { e in_data 0 1 } } }
	e_addr_strm { ap_fifo {  { e_addr_strm_dout fifo_data_in 0 1 }  { e_addr_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_addr_strm_fifo_cap fifo_update 0 4 }  { e_addr_strm_empty_n fifo_status 0 1 }  { e_addr_strm_read fifo_port_we 1 1 } } }
	addr_strm { ap_fifo {  { addr_strm_dout fifo_data_in 0 10 }  { addr_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { addr_strm_fifo_cap fifo_update 0 4 }  { addr_strm_empty_n fifo_status 0 1 }  { addr_strm_read fifo_port_we 1 1 } } }
	truetable { ap_memory {  { truetable_address0 mem_address 1 10 }  { truetable_ce0 mem_ce 1 1 }  { truetable_q0 mem_dout 0 1 } } }
	b_strm { ap_fifo {  { b_strm_din fifo_data_in 1 1 }  { b_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { b_strm_fifo_cap fifo_update 0 4 }  { b_strm_full_n fifo_status 0 1 }  { b_strm_write fifo_port_we 1 1 } } }
	e_b_strm { ap_fifo {  { e_b_strm_din fifo_data_in 1 1 }  { e_b_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_b_strm_fifo_cap fifo_update 0 4 }  { e_b_strm_full_n fifo_status 0 1 }  { e_b_strm_write fifo_port_we 1 1 } } }
}
