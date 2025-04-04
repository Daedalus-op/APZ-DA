set moduleName var_const_cmp_32_s
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {var_const_cmp<32>}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cfg_lop int 4 regular  }
	{ cfg_rop int 4 regular  }
	{ cfg_l int 32 regular  }
	{ cfg_r int 32 regular  }
	{ xu int 32 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cfg_lop", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cfg_rop", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cfg_l", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cfg_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xu", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cfg_lop sc_in sc_lv 4 signal 0 } 
	{ cfg_rop sc_in sc_lv 4 signal 1 } 
	{ cfg_l sc_in sc_lv 32 signal 2 } 
	{ cfg_r sc_in sc_lv 32 signal 3 } 
	{ xu sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cfg_lop", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cfg_lop", "role": "default" }} , 
 	{ "name": "cfg_rop", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cfg_rop", "role": "default" }} , 
 	{ "name": "cfg_l", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cfg_l", "role": "default" }} , 
 	{ "name": "cfg_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cfg_r", "role": "default" }} , 
 	{ "name": "xu", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xu", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_7_1_1_1_U34", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_7_1_1_1_U35", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	var_const_cmp_32_s {
		cfg_lop {Type I LastRead 0 FirstWrite -1}
		cfg_rop {Type I LastRead 0 FirstWrite -1}
		cfg_l {Type I LastRead 0 FirstWrite -1}
		cfg_r {Type I LastRead 0 FirstWrite -1}
		xu {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cfg_lop { ap_none {  { cfg_lop in_data 0 4 } } }
	cfg_rop { ap_none {  { cfg_rop in_data 0 4 } } }
	cfg_l { ap_none {  { cfg_l in_data 0 32 } } }
	cfg_r { ap_none {  { cfg_r in_data 0 32 } } }
	xu { ap_none {  { xu in_data 0 32 } } }
}
