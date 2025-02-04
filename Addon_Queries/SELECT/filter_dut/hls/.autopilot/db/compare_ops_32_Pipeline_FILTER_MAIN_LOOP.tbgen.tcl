set moduleName compare_ops_32_Pipeline_FILTER_MAIN_LOOP
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
set C_modelName {compare_ops<32>_Pipeline_FILTER_MAIN_LOOP}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ e int 1 regular  }
	{ e_v_strm int 1 regular {fifo 0 volatile }  }
	{ k_strms_0 int 32 regular {fifo 0 volatile }  }
	{ k_strms_1 int 32 regular {fifo 0 volatile }  }
	{ k_strms_2 int 32 regular {fifo 0 volatile }  }
	{ k_strms_3 int 32 regular {fifo 0 volatile }  }
	{ empty_18 int 4 regular  }
	{ trunc_ln232_1 int 4 regular  }
	{ trunc_ln232_2 int 32 regular  }
	{ trunc_ln232_3 int 32 regular  }
	{ empty_19 int 4 regular  }
	{ trunc_ln233_1 int 4 regular  }
	{ trunc_ln233_2 int 32 regular  }
	{ trunc_ln233_3 int 32 regular  }
	{ empty_20 int 4 regular  }
	{ trunc_ln234_1 int 4 regular  }
	{ trunc_ln234_2 int 32 regular  }
	{ trunc_ln234_3 int 32 regular  }
	{ empty_21 int 4 regular  }
	{ trunc_ln235_1 int 4 regular  }
	{ trunc_ln235_2 int 32 regular  }
	{ trunc_ln235_3 int 32 regular  }
	{ empty_22 int 4 regular  }
	{ empty_23 int 4 regular  }
	{ empty_24 int 4 regular  }
	{ empty_25 int 4 regular  }
	{ empty_26 int 4 regular  }
	{ empty int 4 regular  }
	{ addr_strm int 10 regular {fifo 1 volatile }  }
	{ e_addr_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "e", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "e_v_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_18", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln232_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln232_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln232_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_19", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln233_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln233_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln233_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_20", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln234_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln234_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln234_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_21", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln235_1", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln235_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln235_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_22", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty_23", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty_24", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty_25", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty_26", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "addr_strm", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_addr_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ e_v_strm_dout sc_in sc_lv 1 signal 1 } 
	{ e_v_strm_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ e_v_strm_fifo_cap sc_in sc_lv 4 signal 1 } 
	{ e_v_strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ e_v_strm_read sc_out sc_logic 1 signal 1 } 
	{ k_strms_0_dout sc_in sc_lv 32 signal 2 } 
	{ k_strms_0_empty_n sc_in sc_logic 1 signal 2 } 
	{ k_strms_0_read sc_out sc_logic 1 signal 2 } 
	{ k_strms_1_dout sc_in sc_lv 32 signal 3 } 
	{ k_strms_1_empty_n sc_in sc_logic 1 signal 3 } 
	{ k_strms_1_read sc_out sc_logic 1 signal 3 } 
	{ k_strms_2_dout sc_in sc_lv 32 signal 4 } 
	{ k_strms_2_empty_n sc_in sc_logic 1 signal 4 } 
	{ k_strms_2_read sc_out sc_logic 1 signal 4 } 
	{ k_strms_3_dout sc_in sc_lv 32 signal 5 } 
	{ k_strms_3_empty_n sc_in sc_logic 1 signal 5 } 
	{ k_strms_3_read sc_out sc_logic 1 signal 5 } 
	{ addr_strm_din sc_out sc_lv 10 signal 28 } 
	{ addr_strm_num_data_valid sc_in sc_lv 4 signal 28 } 
	{ addr_strm_fifo_cap sc_in sc_lv 4 signal 28 } 
	{ addr_strm_full_n sc_in sc_logic 1 signal 28 } 
	{ addr_strm_write sc_out sc_logic 1 signal 28 } 
	{ e_addr_strm_din sc_out sc_lv 1 signal 29 } 
	{ e_addr_strm_num_data_valid sc_in sc_lv 4 signal 29 } 
	{ e_addr_strm_fifo_cap sc_in sc_lv 4 signal 29 } 
	{ e_addr_strm_full_n sc_in sc_logic 1 signal 29 } 
	{ e_addr_strm_write sc_out sc_logic 1 signal 29 } 
	{ e sc_in sc_lv 1 signal 0 } 
	{ empty_18 sc_in sc_lv 4 signal 6 } 
	{ trunc_ln232_1 sc_in sc_lv 4 signal 7 } 
	{ trunc_ln232_2 sc_in sc_lv 32 signal 8 } 
	{ trunc_ln232_3 sc_in sc_lv 32 signal 9 } 
	{ empty_19 sc_in sc_lv 4 signal 10 } 
	{ trunc_ln233_1 sc_in sc_lv 4 signal 11 } 
	{ trunc_ln233_2 sc_in sc_lv 32 signal 12 } 
	{ trunc_ln233_3 sc_in sc_lv 32 signal 13 } 
	{ empty_20 sc_in sc_lv 4 signal 14 } 
	{ trunc_ln234_1 sc_in sc_lv 4 signal 15 } 
	{ trunc_ln234_2 sc_in sc_lv 32 signal 16 } 
	{ trunc_ln234_3 sc_in sc_lv 32 signal 17 } 
	{ empty_21 sc_in sc_lv 4 signal 18 } 
	{ trunc_ln235_1 sc_in sc_lv 4 signal 19 } 
	{ trunc_ln235_2 sc_in sc_lv 32 signal 20 } 
	{ trunc_ln235_3 sc_in sc_lv 32 signal 21 } 
	{ empty_22 sc_in sc_lv 4 signal 22 } 
	{ empty_23 sc_in sc_lv 4 signal 23 } 
	{ empty_24 sc_in sc_lv 4 signal 24 } 
	{ empty_25 sc_in sc_lv 4 signal 25 } 
	{ empty_26 sc_in sc_lv 4 signal 26 } 
	{ empty sc_in sc_lv 4 signal 27 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "e_v_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "dout" }} , 
 	{ "name": "e_v_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_v_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_v_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_v_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_v_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "empty_n" }} , 
 	{ "name": "e_v_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "read" }} , 
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
 	{ "name": "addr_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "addr_strm", "role": "din" }} , 
 	{ "name": "addr_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr_strm", "role": "num_data_valid" }} , 
 	{ "name": "addr_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr_strm", "role": "fifo_cap" }} , 
 	{ "name": "addr_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr_strm", "role": "full_n" }} , 
 	{ "name": "addr_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr_strm", "role": "write" }} , 
 	{ "name": "e_addr_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "din" }} , 
 	{ "name": "e_addr_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_addr_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_addr_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "full_n" }} , 
 	{ "name": "e_addr_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "write" }} , 
 	{ "name": "e", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "default" }} , 
 	{ "name": "empty_18", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_18", "role": "default" }} , 
 	{ "name": "trunc_ln232_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trunc_ln232_1", "role": "default" }} , 
 	{ "name": "trunc_ln232_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln232_2", "role": "default" }} , 
 	{ "name": "trunc_ln232_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln232_3", "role": "default" }} , 
 	{ "name": "empty_19", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_19", "role": "default" }} , 
 	{ "name": "trunc_ln233_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trunc_ln233_1", "role": "default" }} , 
 	{ "name": "trunc_ln233_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln233_2", "role": "default" }} , 
 	{ "name": "trunc_ln233_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln233_3", "role": "default" }} , 
 	{ "name": "empty_20", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_20", "role": "default" }} , 
 	{ "name": "trunc_ln234_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trunc_ln234_1", "role": "default" }} , 
 	{ "name": "trunc_ln234_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln234_2", "role": "default" }} , 
 	{ "name": "trunc_ln234_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln234_3", "role": "default" }} , 
 	{ "name": "empty_21", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_21", "role": "default" }} , 
 	{ "name": "trunc_ln235_1", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "trunc_ln235_1", "role": "default" }} , 
 	{ "name": "trunc_ln235_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln235_2", "role": "default" }} , 
 	{ "name": "trunc_ln235_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trunc_ln235_3", "role": "default" }} , 
 	{ "name": "empty_22", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_22", "role": "default" }} , 
 	{ "name": "empty_23", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_23", "role": "default" }} , 
 	{ "name": "empty_24", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_24", "role": "default" }} , 
 	{ "name": "empty_25", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_25", "role": "default" }} , 
 	{ "name": "empty_26", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty_26", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "empty", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "10", "13", "14", "15", "16", "17", "18", "19"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv0c_var_const_cmp_32_s_fu_294", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bv0c_var_const_cmp_32_s_fu_294.sparsemux_17_7_1_1_1_U34", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bv0c_var_const_cmp_32_s_fu_294.sparsemux_17_7_1_1_1_U35", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv1c_var_const_cmp_32_s_fu_304", "Parent" : "0", "Child" : ["5", "6"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bv1c_var_const_cmp_32_s_fu_304.sparsemux_17_7_1_1_1_U34", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bv1c_var_const_cmp_32_s_fu_304.sparsemux_17_7_1_1_1_U35", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv2c_var_const_cmp_32_s_fu_314", "Parent" : "0", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bv2c_var_const_cmp_32_s_fu_314.sparsemux_17_7_1_1_1_U34", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bv2c_var_const_cmp_32_s_fu_314.sparsemux_17_7_1_1_1_U35", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv3c_var_const_cmp_32_s_fu_324", "Parent" : "0", "Child" : ["11", "12"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bv3c_var_const_cmp_32_s_fu_324.sparsemux_17_7_1_1_1_U34", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bv3c_var_const_cmp_32_s_fu_324.sparsemux_17_7_1_1_1_U35", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv0v1_var_var_cmp_32_s_fu_334", "Parent" : "0",
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
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv0v2_var_var_cmp_32_s_fu_343", "Parent" : "0",
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
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv0v3_var_var_cmp_32_s_fu_352", "Parent" : "0",
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
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv1v2_var_var_cmp_32_s_fu_361", "Parent" : "0",
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
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv1v3_var_var_cmp_32_s_fu_370", "Parent" : "0",
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
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bv2v3_var_var_cmp_32_s_fu_379", "Parent" : "0",
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
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		yu {Type I LastRead 0 FirstWrite -1}}}

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
	e_v_strm { ap_fifo {  { e_v_strm_dout fifo_data_in 0 1 }  { e_v_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_v_strm_fifo_cap fifo_update 0 4 }  { e_v_strm_empty_n fifo_status 0 1 }  { e_v_strm_read fifo_port_we 1 1 } } }
	k_strms_0 { ap_fifo {  { k_strms_0_dout fifo_data_in 0 32 }  { k_strms_0_empty_n fifo_status 0 1 }  { k_strms_0_read fifo_port_we 1 1 } } }
	k_strms_1 { ap_fifo {  { k_strms_1_dout fifo_data_in 0 32 }  { k_strms_1_empty_n fifo_status 0 1 }  { k_strms_1_read fifo_port_we 1 1 } } }
	k_strms_2 { ap_fifo {  { k_strms_2_dout fifo_data_in 0 32 }  { k_strms_2_empty_n fifo_status 0 1 }  { k_strms_2_read fifo_port_we 1 1 } } }
	k_strms_3 { ap_fifo {  { k_strms_3_dout fifo_data_in 0 32 }  { k_strms_3_empty_n fifo_status 0 1 }  { k_strms_3_read fifo_port_we 1 1 } } }
	empty_18 { ap_none {  { empty_18 in_data 0 4 } } }
	trunc_ln232_1 { ap_none {  { trunc_ln232_1 in_data 0 4 } } }
	trunc_ln232_2 { ap_none {  { trunc_ln232_2 in_data 0 32 } } }
	trunc_ln232_3 { ap_none {  { trunc_ln232_3 in_data 0 32 } } }
	empty_19 { ap_none {  { empty_19 in_data 0 4 } } }
	trunc_ln233_1 { ap_none {  { trunc_ln233_1 in_data 0 4 } } }
	trunc_ln233_2 { ap_none {  { trunc_ln233_2 in_data 0 32 } } }
	trunc_ln233_3 { ap_none {  { trunc_ln233_3 in_data 0 32 } } }
	empty_20 { ap_none {  { empty_20 in_data 0 4 } } }
	trunc_ln234_1 { ap_none {  { trunc_ln234_1 in_data 0 4 } } }
	trunc_ln234_2 { ap_none {  { trunc_ln234_2 in_data 0 32 } } }
	trunc_ln234_3 { ap_none {  { trunc_ln234_3 in_data 0 32 } } }
	empty_21 { ap_none {  { empty_21 in_data 0 4 } } }
	trunc_ln235_1 { ap_none {  { trunc_ln235_1 in_data 0 4 } } }
	trunc_ln235_2 { ap_none {  { trunc_ln235_2 in_data 0 32 } } }
	trunc_ln235_3 { ap_none {  { trunc_ln235_3 in_data 0 32 } } }
	empty_22 { ap_none {  { empty_22 in_data 0 4 } } }
	empty_23 { ap_none {  { empty_23 in_data 0 4 } } }
	empty_24 { ap_none {  { empty_24 in_data 0 4 } } }
	empty_25 { ap_none {  { empty_25 in_data 0 4 } } }
	empty_26 { ap_none {  { empty_26 in_data 0 4 } } }
	empty { ap_none {  { empty in_data 0 4 } } }
	addr_strm { ap_fifo {  { addr_strm_din fifo_data_in 1 10 }  { addr_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { addr_strm_fifo_cap fifo_update 0 4 }  { addr_strm_full_n fifo_status 0 1 }  { addr_strm_write fifo_port_we 1 1 } } }
	e_addr_strm { ap_fifo {  { e_addr_strm_din fifo_data_in 1 1 }  { e_addr_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_addr_strm_fifo_cap fifo_update 0 4 }  { e_addr_strm_full_n fifo_status 0 1 }  { e_addr_strm_write fifo_port_we 1 1 } } }
}
