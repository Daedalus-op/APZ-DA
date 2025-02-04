set moduleName compare_ops_32_s
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
set C_modelName {compare_ops<32>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ cmpvc_cfg_strms_0 int 72 regular {fifo 0 volatile }  }
	{ cmpvc_cfg_strms_1 int 72 regular {fifo 0 volatile }  }
	{ cmpvc_cfg_strms_2 int 72 regular {fifo 0 volatile }  }
	{ cmpvc_cfg_strms_3 int 72 regular {fifo 0 volatile }  }
	{ cmpvv_cfg_strms_0 int 4 regular {fifo 0 volatile }  }
	{ cmpvv_cfg_strms_1 int 4 regular {fifo 0 volatile }  }
	{ cmpvv_cfg_strms_2 int 4 regular {fifo 0 volatile }  }
	{ cmpvv_cfg_strms_3 int 4 regular {fifo 0 volatile }  }
	{ cmpvv_cfg_strms_4 int 4 regular {fifo 0 volatile }  }
	{ cmpvv_cfg_strms_5 int 4 regular {fifo 0 volatile }  }
	{ k_strms_0 int 32 regular {fifo 0 volatile }  }
	{ k_strms_1 int 32 regular {fifo 0 volatile }  }
	{ k_strms_2 int 32 regular {fifo 0 volatile }  }
	{ k_strms_3 int 32 regular {fifo 0 volatile }  }
	{ e_v_strm int 1 regular {fifo 0 volatile }  }
	{ addr_strm int 10 regular {fifo 1 volatile }  }
	{ e_addr_strm int 1 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "cmpvc_cfg_strms_0", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvc_cfg_strms_1", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvc_cfg_strms_2", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvc_cfg_strms_3", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_0", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_1", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_2", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_3", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_4", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "cmpvv_cfg_strms_5", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k_strms_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_v_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "addr_strm", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e_addr_strm", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 84
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cmpvc_cfg_strms_0_dout sc_in sc_lv 72 signal 0 } 
	{ cmpvc_cfg_strms_0_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ cmpvc_cfg_strms_0_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ cmpvc_cfg_strms_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ cmpvc_cfg_strms_0_read sc_out sc_logic 1 signal 0 } 
	{ cmpvc_cfg_strms_1_dout sc_in sc_lv 72 signal 1 } 
	{ cmpvc_cfg_strms_1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ cmpvc_cfg_strms_1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ cmpvc_cfg_strms_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ cmpvc_cfg_strms_1_read sc_out sc_logic 1 signal 1 } 
	{ cmpvc_cfg_strms_2_dout sc_in sc_lv 72 signal 2 } 
	{ cmpvc_cfg_strms_2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ cmpvc_cfg_strms_2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ cmpvc_cfg_strms_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ cmpvc_cfg_strms_2_read sc_out sc_logic 1 signal 2 } 
	{ cmpvc_cfg_strms_3_dout sc_in sc_lv 72 signal 3 } 
	{ cmpvc_cfg_strms_3_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ cmpvc_cfg_strms_3_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ cmpvc_cfg_strms_3_empty_n sc_in sc_logic 1 signal 3 } 
	{ cmpvc_cfg_strms_3_read sc_out sc_logic 1 signal 3 } 
	{ cmpvv_cfg_strms_0_dout sc_in sc_lv 4 signal 4 } 
	{ cmpvv_cfg_strms_0_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ cmpvv_cfg_strms_0_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ cmpvv_cfg_strms_0_empty_n sc_in sc_logic 1 signal 4 } 
	{ cmpvv_cfg_strms_0_read sc_out sc_logic 1 signal 4 } 
	{ cmpvv_cfg_strms_1_dout sc_in sc_lv 4 signal 5 } 
	{ cmpvv_cfg_strms_1_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ cmpvv_cfg_strms_1_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ cmpvv_cfg_strms_1_empty_n sc_in sc_logic 1 signal 5 } 
	{ cmpvv_cfg_strms_1_read sc_out sc_logic 1 signal 5 } 
	{ cmpvv_cfg_strms_2_dout sc_in sc_lv 4 signal 6 } 
	{ cmpvv_cfg_strms_2_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ cmpvv_cfg_strms_2_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ cmpvv_cfg_strms_2_empty_n sc_in sc_logic 1 signal 6 } 
	{ cmpvv_cfg_strms_2_read sc_out sc_logic 1 signal 6 } 
	{ cmpvv_cfg_strms_3_dout sc_in sc_lv 4 signal 7 } 
	{ cmpvv_cfg_strms_3_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ cmpvv_cfg_strms_3_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ cmpvv_cfg_strms_3_empty_n sc_in sc_logic 1 signal 7 } 
	{ cmpvv_cfg_strms_3_read sc_out sc_logic 1 signal 7 } 
	{ cmpvv_cfg_strms_4_dout sc_in sc_lv 4 signal 8 } 
	{ cmpvv_cfg_strms_4_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ cmpvv_cfg_strms_4_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ cmpvv_cfg_strms_4_empty_n sc_in sc_logic 1 signal 8 } 
	{ cmpvv_cfg_strms_4_read sc_out sc_logic 1 signal 8 } 
	{ cmpvv_cfg_strms_5_dout sc_in sc_lv 4 signal 9 } 
	{ cmpvv_cfg_strms_5_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ cmpvv_cfg_strms_5_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ cmpvv_cfg_strms_5_empty_n sc_in sc_logic 1 signal 9 } 
	{ cmpvv_cfg_strms_5_read sc_out sc_logic 1 signal 9 } 
	{ k_strms_0_dout sc_in sc_lv 32 signal 10 } 
	{ k_strms_0_empty_n sc_in sc_logic 1 signal 10 } 
	{ k_strms_0_read sc_out sc_logic 1 signal 10 } 
	{ k_strms_1_dout sc_in sc_lv 32 signal 11 } 
	{ k_strms_1_empty_n sc_in sc_logic 1 signal 11 } 
	{ k_strms_1_read sc_out sc_logic 1 signal 11 } 
	{ k_strms_2_dout sc_in sc_lv 32 signal 12 } 
	{ k_strms_2_empty_n sc_in sc_logic 1 signal 12 } 
	{ k_strms_2_read sc_out sc_logic 1 signal 12 } 
	{ k_strms_3_dout sc_in sc_lv 32 signal 13 } 
	{ k_strms_3_empty_n sc_in sc_logic 1 signal 13 } 
	{ k_strms_3_read sc_out sc_logic 1 signal 13 } 
	{ e_v_strm_dout sc_in sc_lv 1 signal 14 } 
	{ e_v_strm_num_data_valid sc_in sc_lv 4 signal 14 } 
	{ e_v_strm_fifo_cap sc_in sc_lv 4 signal 14 } 
	{ e_v_strm_empty_n sc_in sc_logic 1 signal 14 } 
	{ e_v_strm_read sc_out sc_logic 1 signal 14 } 
	{ addr_strm_din sc_out sc_lv 10 signal 15 } 
	{ addr_strm_num_data_valid sc_in sc_lv 4 signal 15 } 
	{ addr_strm_fifo_cap sc_in sc_lv 4 signal 15 } 
	{ addr_strm_full_n sc_in sc_logic 1 signal 15 } 
	{ addr_strm_write sc_out sc_logic 1 signal 15 } 
	{ e_addr_strm_din sc_out sc_lv 1 signal 16 } 
	{ e_addr_strm_num_data_valid sc_in sc_lv 4 signal 16 } 
	{ e_addr_strm_fifo_cap sc_in sc_lv 4 signal 16 } 
	{ e_addr_strm_full_n sc_in sc_logic 1 signal 16 } 
	{ e_addr_strm_write sc_out sc_logic 1 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cmpvc_cfg_strms_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_0", "role": "dout" }} , 
 	{ "name": "cmpvc_cfg_strms_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_0", "role": "num_data_valid" }} , 
 	{ "name": "cmpvc_cfg_strms_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_0", "role": "fifo_cap" }} , 
 	{ "name": "cmpvc_cfg_strms_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_0", "role": "empty_n" }} , 
 	{ "name": "cmpvc_cfg_strms_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_0", "role": "read" }} , 
 	{ "name": "cmpvc_cfg_strms_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_1", "role": "dout" }} , 
 	{ "name": "cmpvc_cfg_strms_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_1", "role": "num_data_valid" }} , 
 	{ "name": "cmpvc_cfg_strms_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_1", "role": "fifo_cap" }} , 
 	{ "name": "cmpvc_cfg_strms_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_1", "role": "empty_n" }} , 
 	{ "name": "cmpvc_cfg_strms_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_1", "role": "read" }} , 
 	{ "name": "cmpvc_cfg_strms_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_2", "role": "dout" }} , 
 	{ "name": "cmpvc_cfg_strms_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_2", "role": "num_data_valid" }} , 
 	{ "name": "cmpvc_cfg_strms_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_2", "role": "fifo_cap" }} , 
 	{ "name": "cmpvc_cfg_strms_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_2", "role": "empty_n" }} , 
 	{ "name": "cmpvc_cfg_strms_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_2", "role": "read" }} , 
 	{ "name": "cmpvc_cfg_strms_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_3", "role": "dout" }} , 
 	{ "name": "cmpvc_cfg_strms_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_3", "role": "num_data_valid" }} , 
 	{ "name": "cmpvc_cfg_strms_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_3", "role": "fifo_cap" }} , 
 	{ "name": "cmpvc_cfg_strms_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_3", "role": "empty_n" }} , 
 	{ "name": "cmpvc_cfg_strms_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvc_cfg_strms_3", "role": "read" }} , 
 	{ "name": "cmpvv_cfg_strms_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "dout" }} , 
 	{ "name": "cmpvv_cfg_strms_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "empty_n" }} , 
 	{ "name": "cmpvv_cfg_strms_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_0", "role": "read" }} , 
 	{ "name": "cmpvv_cfg_strms_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "dout" }} , 
 	{ "name": "cmpvv_cfg_strms_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "empty_n" }} , 
 	{ "name": "cmpvv_cfg_strms_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_1", "role": "read" }} , 
 	{ "name": "cmpvv_cfg_strms_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "dout" }} , 
 	{ "name": "cmpvv_cfg_strms_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "empty_n" }} , 
 	{ "name": "cmpvv_cfg_strms_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_2", "role": "read" }} , 
 	{ "name": "cmpvv_cfg_strms_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "dout" }} , 
 	{ "name": "cmpvv_cfg_strms_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "empty_n" }} , 
 	{ "name": "cmpvv_cfg_strms_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_3", "role": "read" }} , 
 	{ "name": "cmpvv_cfg_strms_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "dout" }} , 
 	{ "name": "cmpvv_cfg_strms_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "empty_n" }} , 
 	{ "name": "cmpvv_cfg_strms_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_4", "role": "read" }} , 
 	{ "name": "cmpvv_cfg_strms_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "dout" }} , 
 	{ "name": "cmpvv_cfg_strms_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "num_data_valid" }} , 
 	{ "name": "cmpvv_cfg_strms_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "fifo_cap" }} , 
 	{ "name": "cmpvv_cfg_strms_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "empty_n" }} , 
 	{ "name": "cmpvv_cfg_strms_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cmpvv_cfg_strms_5", "role": "read" }} , 
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
 	{ "name": "e_v_strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "dout" }} , 
 	{ "name": "e_v_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_v_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_v_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_v_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_v_strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "empty_n" }} , 
 	{ "name": "e_v_strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_v_strm", "role": "read" }} , 
 	{ "name": "addr_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "addr_strm", "role": "din" }} , 
 	{ "name": "addr_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr_strm", "role": "num_data_valid" }} , 
 	{ "name": "addr_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "addr_strm", "role": "fifo_cap" }} , 
 	{ "name": "addr_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr_strm", "role": "full_n" }} , 
 	{ "name": "addr_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "addr_strm", "role": "write" }} , 
 	{ "name": "e_addr_strm_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "din" }} , 
 	{ "name": "e_addr_strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "num_data_valid" }} , 
 	{ "name": "e_addr_strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "fifo_cap" }} , 
 	{ "name": "e_addr_strm_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "full_n" }} , 
 	{ "name": "e_addr_strm_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e_addr_strm", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
		"Port" : [
			{"Name" : "cmpvc_cfg_strms_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvc_cfg_strms_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvc_cfg_strms_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmpvv_cfg_strms_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "cmpvv_cfg_strms_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "k_strms_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "k_strms_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "k_strms_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "k_strms_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "k_strms_2", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "k_strms_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "k_strms_3", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "k_strms_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_v_strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_v_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "e_v_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "addr_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "addr_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "e_addr_strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "e_addr_strm_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Port" : "e_addr_strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148", "Parent" : "0", "Child" : ["2", "5", "8", "11", "14", "15", "16", "17", "18", "19", "20"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0c_var_const_cmp_32_s_fu_294", "Parent" : "1", "Child" : ["3", "4"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0c_var_const_cmp_32_s_fu_294.sparsemux_17_7_1_1_1_U34", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0c_var_const_cmp_32_s_fu_294.sparsemux_17_7_1_1_1_U35", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1c_var_const_cmp_32_s_fu_304", "Parent" : "1", "Child" : ["6", "7"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1c_var_const_cmp_32_s_fu_304.sparsemux_17_7_1_1_1_U34", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1c_var_const_cmp_32_s_fu_304.sparsemux_17_7_1_1_1_U35", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv2c_var_const_cmp_32_s_fu_314", "Parent" : "1", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv2c_var_const_cmp_32_s_fu_314.sparsemux_17_7_1_1_1_U34", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv2c_var_const_cmp_32_s_fu_314.sparsemux_17_7_1_1_1_U35", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv3c_var_const_cmp_32_s_fu_324", "Parent" : "1", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv3c_var_const_cmp_32_s_fu_324.sparsemux_17_7_1_1_1_U34", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv3c_var_const_cmp_32_s_fu_324.sparsemux_17_7_1_1_1_U35", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0v1_var_var_cmp_32_s_fu_334", "Parent" : "1",
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0v2_var_var_cmp_32_s_fu_343", "Parent" : "1",
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
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv0v3_var_var_cmp_32_s_fu_352", "Parent" : "1",
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1v2_var_var_cmp_32_s_fu_361", "Parent" : "1",
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
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv1v3_var_var_cmp_32_s_fu_370", "Parent" : "1",
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
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.bv2v3_var_var_cmp_32_s_fu_379", "Parent" : "1",
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
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
		yu {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cmpvc_cfg_strms_0 { ap_fifo {  { cmpvc_cfg_strms_0_dout fifo_data_in 0 72 }  { cmpvc_cfg_strms_0_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvc_cfg_strms_0_fifo_cap fifo_update 0 3 }  { cmpvc_cfg_strms_0_empty_n fifo_status 0 1 }  { cmpvc_cfg_strms_0_read fifo_port_we 1 1 } } }
	cmpvc_cfg_strms_1 { ap_fifo {  { cmpvc_cfg_strms_1_dout fifo_data_in 0 72 }  { cmpvc_cfg_strms_1_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvc_cfg_strms_1_fifo_cap fifo_update 0 3 }  { cmpvc_cfg_strms_1_empty_n fifo_status 0 1 }  { cmpvc_cfg_strms_1_read fifo_port_we 1 1 } } }
	cmpvc_cfg_strms_2 { ap_fifo {  { cmpvc_cfg_strms_2_dout fifo_data_in 0 72 }  { cmpvc_cfg_strms_2_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvc_cfg_strms_2_fifo_cap fifo_update 0 3 }  { cmpvc_cfg_strms_2_empty_n fifo_status 0 1 }  { cmpvc_cfg_strms_2_read fifo_port_we 1 1 } } }
	cmpvc_cfg_strms_3 { ap_fifo {  { cmpvc_cfg_strms_3_dout fifo_data_in 0 72 }  { cmpvc_cfg_strms_3_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvc_cfg_strms_3_fifo_cap fifo_update 0 3 }  { cmpvc_cfg_strms_3_empty_n fifo_status 0 1 }  { cmpvc_cfg_strms_3_read fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_0 { ap_fifo {  { cmpvv_cfg_strms_0_dout fifo_data_in 0 4 }  { cmpvv_cfg_strms_0_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_0_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_0_empty_n fifo_status 0 1 }  { cmpvv_cfg_strms_0_read fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_1 { ap_fifo {  { cmpvv_cfg_strms_1_dout fifo_data_in 0 4 }  { cmpvv_cfg_strms_1_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_1_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_1_empty_n fifo_status 0 1 }  { cmpvv_cfg_strms_1_read fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_2 { ap_fifo {  { cmpvv_cfg_strms_2_dout fifo_data_in 0 4 }  { cmpvv_cfg_strms_2_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_2_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_2_empty_n fifo_status 0 1 }  { cmpvv_cfg_strms_2_read fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_3 { ap_fifo {  { cmpvv_cfg_strms_3_dout fifo_data_in 0 4 }  { cmpvv_cfg_strms_3_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_3_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_3_empty_n fifo_status 0 1 }  { cmpvv_cfg_strms_3_read fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_4 { ap_fifo {  { cmpvv_cfg_strms_4_dout fifo_data_in 0 4 }  { cmpvv_cfg_strms_4_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_4_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_4_empty_n fifo_status 0 1 }  { cmpvv_cfg_strms_4_read fifo_port_we 1 1 } } }
	cmpvv_cfg_strms_5 { ap_fifo {  { cmpvv_cfg_strms_5_dout fifo_data_in 0 4 }  { cmpvv_cfg_strms_5_num_data_valid fifo_status_num_data_valid 0 3 }  { cmpvv_cfg_strms_5_fifo_cap fifo_update 0 3 }  { cmpvv_cfg_strms_5_empty_n fifo_status 0 1 }  { cmpvv_cfg_strms_5_read fifo_port_we 1 1 } } }
	k_strms_0 { ap_fifo {  { k_strms_0_dout fifo_data_in 0 32 }  { k_strms_0_empty_n fifo_status 0 1 }  { k_strms_0_read fifo_port_we 1 1 } } }
	k_strms_1 { ap_fifo {  { k_strms_1_dout fifo_data_in 0 32 }  { k_strms_1_empty_n fifo_status 0 1 }  { k_strms_1_read fifo_port_we 1 1 } } }
	k_strms_2 { ap_fifo {  { k_strms_2_dout fifo_data_in 0 32 }  { k_strms_2_empty_n fifo_status 0 1 }  { k_strms_2_read fifo_port_we 1 1 } } }
	k_strms_3 { ap_fifo {  { k_strms_3_dout fifo_data_in 0 32 }  { k_strms_3_empty_n fifo_status 0 1 }  { k_strms_3_read fifo_port_we 1 1 } } }
	e_v_strm { ap_fifo {  { e_v_strm_dout fifo_data_in 0 1 }  { e_v_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_v_strm_fifo_cap fifo_update 0 4 }  { e_v_strm_empty_n fifo_status 0 1 }  { e_v_strm_read fifo_port_we 1 1 } } }
	addr_strm { ap_fifo {  { addr_strm_din fifo_data_in 1 10 }  { addr_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { addr_strm_fifo_cap fifo_update 0 4 }  { addr_strm_full_n fifo_status 0 1 }  { addr_strm_write fifo_port_we 1 1 } } }
	e_addr_strm { ap_fifo {  { e_addr_strm_din fifo_data_in 1 1 }  { e_addr_strm_num_data_valid fifo_status_num_data_valid 0 4 }  { e_addr_strm_fifo_cap fifo_update 0 4 }  { e_addr_strm_full_n fifo_status 0 1 }  { e_addr_strm_write fifo_port_we 1 1 } } }
}
