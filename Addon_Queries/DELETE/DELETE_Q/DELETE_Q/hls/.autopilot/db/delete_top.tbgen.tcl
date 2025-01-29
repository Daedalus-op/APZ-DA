set moduleName delete_top
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 3
set C_modelName {delete_top}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ i_hash_strm int 32 regular {axi_s 0 volatile  { i_hash_strm Data } }  }
	{ i_col1_strm int 32 regular {axi_s 0 volatile  { i_col1_strm Data } }  }
	{ i_col2_strm int 32 regular {axi_s 0 volatile  { i_col2_strm Data } }  }
	{ i_col3_strm int 32 regular {axi_s 0 volatile  { i_col3_strm Data } }  }
	{ i_payload_strm int 128 regular {axi_s 0 volatile  { i_payload_strm Data } }  }
	{ i_e_strm int 8 regular {axi_s 0 volatile  { i_e_strm Data } }  }
	{ i_d_key1_strm int 32 regular {axi_s 0 volatile  { i_d_key1_strm Data } }  }
	{ o_hash_strm int 32 regular {axi_s 1 volatile  { o_hash_strm Data } }  }
	{ o_col1_strm int 32 regular {axi_s 1 volatile  { o_col1_strm Data } }  }
	{ o_col2_strm int 32 regular {axi_s 1 volatile  { o_col2_strm Data } }  }
	{ o_col3_strm int 32 regular {axi_s 1 volatile  { o_col3_strm Data } }  }
	{ o_payload_strm int 128 regular {axi_s 1 volatile  { o_payload_strm Data } }  }
	{ o_e_strm int 8 regular {axi_s 1 volatile  { o_e_strm Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "i_hash_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "i_col1_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "i_col2_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "i_col3_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "i_payload_strm", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "i_e_strm", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "i_d_key1_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "o_hash_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "o_col1_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "o_col2_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "o_col3_strm", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "o_payload_strm", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "o_e_strm", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ i_hash_strm_TDATA sc_in sc_lv 32 signal 0 } 
	{ i_hash_strm_TVALID sc_in sc_logic 1 invld 0 } 
	{ i_hash_strm_TREADY sc_out sc_logic 1 inacc 0 } 
	{ i_col1_strm_TDATA sc_in sc_lv 32 signal 1 } 
	{ i_col1_strm_TVALID sc_in sc_logic 1 invld 1 } 
	{ i_col1_strm_TREADY sc_out sc_logic 1 inacc 1 } 
	{ i_col2_strm_TDATA sc_in sc_lv 32 signal 2 } 
	{ i_col2_strm_TVALID sc_in sc_logic 1 invld 2 } 
	{ i_col2_strm_TREADY sc_out sc_logic 1 inacc 2 } 
	{ i_col3_strm_TDATA sc_in sc_lv 32 signal 3 } 
	{ i_col3_strm_TVALID sc_in sc_logic 1 invld 3 } 
	{ i_col3_strm_TREADY sc_out sc_logic 1 inacc 3 } 
	{ i_payload_strm_TDATA sc_in sc_lv 128 signal 4 } 
	{ i_payload_strm_TVALID sc_in sc_logic 1 invld 4 } 
	{ i_payload_strm_TREADY sc_out sc_logic 1 inacc 4 } 
	{ i_e_strm_TDATA sc_in sc_lv 8 signal 5 } 
	{ i_e_strm_TVALID sc_in sc_logic 1 invld 5 } 
	{ i_e_strm_TREADY sc_out sc_logic 1 inacc 5 } 
	{ i_d_key1_strm_TDATA sc_in sc_lv 32 signal 6 } 
	{ i_d_key1_strm_TVALID sc_in sc_logic 1 invld 6 } 
	{ i_d_key1_strm_TREADY sc_out sc_logic 1 inacc 6 } 
	{ o_hash_strm_TDATA sc_out sc_lv 32 signal 7 } 
	{ o_hash_strm_TVALID sc_out sc_logic 1 outvld 7 } 
	{ o_hash_strm_TREADY sc_in sc_logic 1 outacc 7 } 
	{ o_col1_strm_TDATA sc_out sc_lv 32 signal 8 } 
	{ o_col1_strm_TVALID sc_out sc_logic 1 outvld 8 } 
	{ o_col1_strm_TREADY sc_in sc_logic 1 outacc 8 } 
	{ o_col2_strm_TDATA sc_out sc_lv 32 signal 9 } 
	{ o_col2_strm_TVALID sc_out sc_logic 1 outvld 9 } 
	{ o_col2_strm_TREADY sc_in sc_logic 1 outacc 9 } 
	{ o_col3_strm_TDATA sc_out sc_lv 32 signal 10 } 
	{ o_col3_strm_TVALID sc_out sc_logic 1 outvld 10 } 
	{ o_col3_strm_TREADY sc_in sc_logic 1 outacc 10 } 
	{ o_payload_strm_TDATA sc_out sc_lv 128 signal 11 } 
	{ o_payload_strm_TVALID sc_out sc_logic 1 outvld 11 } 
	{ o_payload_strm_TREADY sc_in sc_logic 1 outacc 11 } 
	{ o_e_strm_TDATA sc_out sc_lv 8 signal 12 } 
	{ o_e_strm_TVALID sc_out sc_logic 1 outvld 12 } 
	{ o_e_strm_TREADY sc_in sc_logic 1 outacc 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "i_hash_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_hash_strm", "role": "TDATA" }} , 
 	{ "name": "i_hash_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_hash_strm", "role": "TVALID" }} , 
 	{ "name": "i_hash_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_hash_strm", "role": "TREADY" }} , 
 	{ "name": "i_col1_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_col1_strm", "role": "TDATA" }} , 
 	{ "name": "i_col1_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_col1_strm", "role": "TVALID" }} , 
 	{ "name": "i_col1_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_col1_strm", "role": "TREADY" }} , 
 	{ "name": "i_col2_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_col2_strm", "role": "TDATA" }} , 
 	{ "name": "i_col2_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_col2_strm", "role": "TVALID" }} , 
 	{ "name": "i_col2_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_col2_strm", "role": "TREADY" }} , 
 	{ "name": "i_col3_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_col3_strm", "role": "TDATA" }} , 
 	{ "name": "i_col3_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_col3_strm", "role": "TVALID" }} , 
 	{ "name": "i_col3_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_col3_strm", "role": "TREADY" }} , 
 	{ "name": "i_payload_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "i_payload_strm", "role": "TDATA" }} , 
 	{ "name": "i_payload_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_payload_strm", "role": "TVALID" }} , 
 	{ "name": "i_payload_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_payload_strm", "role": "TREADY" }} , 
 	{ "name": "i_e_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "i_e_strm", "role": "TDATA" }} , 
 	{ "name": "i_e_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_e_strm", "role": "TVALID" }} , 
 	{ "name": "i_e_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_e_strm", "role": "TREADY" }} , 
 	{ "name": "i_d_key1_strm_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "i_d_key1_strm", "role": "TDATA" }} , 
 	{ "name": "i_d_key1_strm_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_d_key1_strm", "role": "TVALID" }} , 
 	{ "name": "i_d_key1_strm_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "i_d_key1_strm", "role": "TREADY" }} , 
 	{ "name": "o_hash_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "o_hash_strm", "role": "TDATA" }} , 
 	{ "name": "o_hash_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "o_hash_strm", "role": "TVALID" }} , 
 	{ "name": "o_hash_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "o_hash_strm", "role": "TREADY" }} , 
 	{ "name": "o_col1_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "o_col1_strm", "role": "TDATA" }} , 
 	{ "name": "o_col1_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "o_col1_strm", "role": "TVALID" }} , 
 	{ "name": "o_col1_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "o_col1_strm", "role": "TREADY" }} , 
 	{ "name": "o_col2_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "o_col2_strm", "role": "TDATA" }} , 
 	{ "name": "o_col2_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "o_col2_strm", "role": "TVALID" }} , 
 	{ "name": "o_col2_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "o_col2_strm", "role": "TREADY" }} , 
 	{ "name": "o_col3_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "o_col3_strm", "role": "TDATA" }} , 
 	{ "name": "o_col3_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "o_col3_strm", "role": "TVALID" }} , 
 	{ "name": "o_col3_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "o_col3_strm", "role": "TREADY" }} , 
 	{ "name": "o_payload_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "o_payload_strm", "role": "TDATA" }} , 
 	{ "name": "o_payload_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "o_payload_strm", "role": "TVALID" }} , 
 	{ "name": "o_payload_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "o_payload_strm", "role": "TREADY" }} , 
 	{ "name": "o_e_strm_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "o_e_strm", "role": "TDATA" }} , 
 	{ "name": "o_e_strm_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "o_e_strm", "role": "TVALID" }} , 
 	{ "name": "o_e_strm_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "o_e_strm", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "delete_top",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
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
			{"Name" : "i_hash_strm", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "i_hash_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "i_col1_strm", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "i_col1_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "i_col2_strm", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "i_col2_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "i_col3_strm", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "i_col3_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "i_payload_strm", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "i_payload_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "i_e_strm", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_e_strm_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "i_e_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "i_d_key1_strm", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "i_d_key1_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "o_hash_strm", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "o_hash_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "o_col1_strm", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "o_col1_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "o_col2_strm", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "o_col2_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "o_col3_strm", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "o_col3_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "o_payload_strm", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "o_payload_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "o_e_strm", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_e_strm_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Port" : "o_e_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "delete_top_Pipeline_VITIS_LOOP_24_1",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_e_strm", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_e_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_hash_strm", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_hash_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_col1_strm", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_col1_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_col2_strm", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_col2_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_col3_strm", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_col3_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_payload_strm", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_payload_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "i_d_key1_strm", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_d_key1_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "o_hash_strm", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_hash_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "o_col1_strm", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_col1_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "o_col2_strm", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_col2_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "o_col3_strm", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_col3_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "o_payload_strm", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_payload_strm_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "o_e_strm", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "o_e_strm_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_24_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_delete_top_Pipeline_VITIS_LOOP_24_1_fu_70.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_i_hash_strm_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_i_col1_strm_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_i_col2_strm_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_i_col3_strm_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_i_payload_strm_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_i_e_strm_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_i_d_key1_strm_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_o_hash_strm_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_o_col1_strm_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_o_col2_strm_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_o_col3_strm_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_o_payload_strm_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_o_e_strm_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	delete_top {
		i_hash_strm {Type I LastRead 1 FirstWrite -1}
		i_col1_strm {Type I LastRead 1 FirstWrite -1}
		i_col2_strm {Type I LastRead 1 FirstWrite -1}
		i_col3_strm {Type I LastRead 1 FirstWrite -1}
		i_payload_strm {Type I LastRead 1 FirstWrite -1}
		i_e_strm {Type I LastRead 0 FirstWrite -1}
		i_d_key1_strm {Type I LastRead 1 FirstWrite -1}
		o_hash_strm {Type O LastRead -1 FirstWrite 2}
		o_col1_strm {Type O LastRead -1 FirstWrite 2}
		o_col2_strm {Type O LastRead -1 FirstWrite 2}
		o_col3_strm {Type O LastRead -1 FirstWrite 2}
		o_payload_strm {Type O LastRead -1 FirstWrite 2}
		o_e_strm {Type O LastRead -1 FirstWrite 2}}
	delete_top_Pipeline_VITIS_LOOP_24_1 {
		empty {Type I LastRead 0 FirstWrite -1}
		i_e_strm {Type I LastRead 0 FirstWrite -1}
		i_hash_strm {Type I LastRead 1 FirstWrite -1}
		i_col1_strm {Type I LastRead 1 FirstWrite -1}
		i_col2_strm {Type I LastRead 1 FirstWrite -1}
		i_col3_strm {Type I LastRead 1 FirstWrite -1}
		i_payload_strm {Type I LastRead 1 FirstWrite -1}
		i_d_key1_strm {Type I LastRead 1 FirstWrite -1}
		o_hash_strm {Type O LastRead -1 FirstWrite 2}
		o_col1_strm {Type O LastRead -1 FirstWrite 2}
		o_col2_strm {Type O LastRead -1 FirstWrite 2}
		o_col3_strm {Type O LastRead -1 FirstWrite 2}
		o_payload_strm {Type O LastRead -1 FirstWrite 2}
		o_e_strm {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i_hash_strm { axis {  { i_hash_strm_TDATA in_data 0 32 }  { i_hash_strm_TVALID in_vld 0 1 }  { i_hash_strm_TREADY in_acc 1 1 } } }
	i_col1_strm { axis {  { i_col1_strm_TDATA in_data 0 32 }  { i_col1_strm_TVALID in_vld 0 1 }  { i_col1_strm_TREADY in_acc 1 1 } } }
	i_col2_strm { axis {  { i_col2_strm_TDATA in_data 0 32 }  { i_col2_strm_TVALID in_vld 0 1 }  { i_col2_strm_TREADY in_acc 1 1 } } }
	i_col3_strm { axis {  { i_col3_strm_TDATA in_data 0 32 }  { i_col3_strm_TVALID in_vld 0 1 }  { i_col3_strm_TREADY in_acc 1 1 } } }
	i_payload_strm { axis {  { i_payload_strm_TDATA in_data 0 128 }  { i_payload_strm_TVALID in_vld 0 1 }  { i_payload_strm_TREADY in_acc 1 1 } } }
	i_e_strm { axis {  { i_e_strm_TDATA in_data 0 8 }  { i_e_strm_TVALID in_vld 0 1 }  { i_e_strm_TREADY in_acc 1 1 } } }
	i_d_key1_strm { axis {  { i_d_key1_strm_TDATA in_data 0 32 }  { i_d_key1_strm_TVALID in_vld 0 1 }  { i_d_key1_strm_TREADY in_acc 1 1 } } }
	o_hash_strm { axis {  { o_hash_strm_TDATA out_data 1 32 }  { o_hash_strm_TVALID out_vld 1 1 }  { o_hash_strm_TREADY out_acc 0 1 } } }
	o_col1_strm { axis {  { o_col1_strm_TDATA out_data 1 32 }  { o_col1_strm_TVALID out_vld 1 1 }  { o_col1_strm_TREADY out_acc 0 1 } } }
	o_col2_strm { axis {  { o_col2_strm_TDATA out_data 1 32 }  { o_col2_strm_TVALID out_vld 1 1 }  { o_col2_strm_TREADY out_acc 0 1 } } }
	o_col3_strm { axis {  { o_col3_strm_TDATA out_data 1 32 }  { o_col3_strm_TVALID out_vld 1 1 }  { o_col3_strm_TREADY out_acc 0 1 } } }
	o_payload_strm { axis {  { o_payload_strm_TDATA out_data 1 128 }  { o_payload_strm_TVALID out_vld 1 1 }  { o_payload_strm_TREADY out_acc 0 1 } } }
	o_e_strm { axis {  { o_e_strm_TDATA out_data 1 8 }  { o_e_strm_TVALID out_vld 1 1 }  { o_e_strm_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
