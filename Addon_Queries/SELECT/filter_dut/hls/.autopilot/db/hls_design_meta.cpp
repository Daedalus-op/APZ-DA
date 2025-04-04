#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("filter_cfg_strm_dout", 32, hls_in, 0, "ap_fifo", "fifo_data_in", 1),
	Port_Property("filter_cfg_strm_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("filter_cfg_strm_read", 1, hls_out, 0, "ap_fifo", "fifo_port_we", 1),
	Port_Property("k_strms_0_dout", 32, hls_in, 1, "ap_fifo", "fifo_data_in", 1),
	Port_Property("k_strms_0_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("k_strms_0_read", 1, hls_out, 1, "ap_fifo", "fifo_port_we", 1),
	Port_Property("k_strms_1_dout", 32, hls_in, 2, "ap_fifo", "fifo_data_in", 1),
	Port_Property("k_strms_1_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("k_strms_1_read", 1, hls_out, 2, "ap_fifo", "fifo_port_we", 1),
	Port_Property("k_strms_2_dout", 32, hls_in, 3, "ap_fifo", "fifo_data_in", 1),
	Port_Property("k_strms_2_empty_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("k_strms_2_read", 1, hls_out, 3, "ap_fifo", "fifo_port_we", 1),
	Port_Property("k_strms_3_dout", 32, hls_in, 4, "ap_fifo", "fifo_data_in", 1),
	Port_Property("k_strms_3_empty_n", 1, hls_in, 4, "ap_fifo", "fifo_status", 1),
	Port_Property("k_strms_3_read", 1, hls_out, 4, "ap_fifo", "fifo_port_we", 1),
	Port_Property("p_strm_dout", 32, hls_in, 5, "ap_fifo", "fifo_data_in", 1),
	Port_Property("p_strm_empty_n", 1, hls_in, 5, "ap_fifo", "fifo_status", 1),
	Port_Property("p_strm_read", 1, hls_out, 5, "ap_fifo", "fifo_port_we", 1),
	Port_Property("e_strm_dout", 1, hls_in, 6, "ap_fifo", "fifo_data_in", 1),
	Port_Property("e_strm_empty_n", 1, hls_in, 6, "ap_fifo", "fifo_status", 1),
	Port_Property("e_strm_read", 1, hls_out, 6, "ap_fifo", "fifo_port_we", 1),
	Port_Property("f_strm_din", 32, hls_out, 7, "ap_fifo", "fifo_data_in", 1),
	Port_Property("f_strm_full_n", 1, hls_in, 7, "ap_fifo", "fifo_status", 1),
	Port_Property("f_strm_write", 1, hls_out, 7, "ap_fifo", "fifo_port_we", 1),
	Port_Property("e_f_strm_din", 1, hls_out, 8, "ap_fifo", "fifo_data_in", 1),
	Port_Property("e_f_strm_full_n", 1, hls_in, 8, "ap_fifo", "fifo_status", 1),
	Port_Property("e_f_strm_write", 1, hls_out, 8, "ap_fifo", "fifo_port_we", 1),
};
const char* HLS_Design_Meta::dut_name = "filter_dut";
