// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:filter_dut:1.0
// IP Revision: 2113938983

(* X_CORE_INFO = "filter_dut,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,filter_dut,{}" *)
(* CORE_GENERATION_INFO = "bd_0_hls_inst_0,filter_dut,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=filter_dut,x_ipVersion=1.0,x_ipCoreRevision=2113938983,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  ap_clk,
  ap_rst,
  ap_done,
  ap_idle,
  ap_ready,
  ap_start,
  filter_cfg_strm_dout,
  filter_cfg_strm_empty_n,
  filter_cfg_strm_read,
  k_strms_0_dout,
  k_strms_0_empty_n,
  k_strms_0_read,
  k_strms_1_dout,
  k_strms_1_empty_n,
  k_strms_1_read,
  k_strms_2_dout,
  k_strms_2_empty_n,
  k_strms_2_read,
  k_strms_3_dout,
  k_strms_3_empty_n,
  k_strms_3_read,
  p_strm_dout,
  p_strm_empty_n,
  p_strm_read,
  e_strm_dout,
  e_strm_empty_n,
  e_strm_read,
  f_strm_din,
  f_strm_full_n,
  f_strm_write,
  e_f_strm_din,
  e_f_strm_full_n,
  e_f_strm_write
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 filter_cfg_strm RD_DATA" *)
input wire [31 : 0] filter_cfg_strm_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 filter_cfg_strm EMPTY_N" *)
input wire filter_cfg_strm_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 filter_cfg_strm RD_EN" *)
output wire filter_cfg_strm_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_0 RD_DATA" *)
input wire [31 : 0] k_strms_0_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_0 EMPTY_N" *)
input wire k_strms_0_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_0 RD_EN" *)
output wire k_strms_0_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_1 RD_DATA" *)
input wire [31 : 0] k_strms_1_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_1 EMPTY_N" *)
input wire k_strms_1_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_1 RD_EN" *)
output wire k_strms_1_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_2 RD_DATA" *)
input wire [31 : 0] k_strms_2_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_2 EMPTY_N" *)
input wire k_strms_2_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_2 RD_EN" *)
output wire k_strms_2_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_3 RD_DATA" *)
input wire [31 : 0] k_strms_3_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_3 EMPTY_N" *)
input wire k_strms_3_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 k_strms_3 RD_EN" *)
output wire k_strms_3_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 p_strm RD_DATA" *)
input wire [31 : 0] p_strm_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 p_strm EMPTY_N" *)
input wire p_strm_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 p_strm RD_EN" *)
output wire p_strm_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e_strm RD_DATA" *)
input wire e_strm_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e_strm EMPTY_N" *)
input wire e_strm_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 e_strm RD_EN" *)
output wire e_strm_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 f_strm WR_DATA" *)
output wire [31 : 0] f_strm_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 f_strm FULL_N" *)
input wire f_strm_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 f_strm WR_EN" *)
output wire f_strm_write;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 e_f_strm WR_DATA" *)
output wire e_f_strm_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 e_f_strm FULL_N" *)
input wire e_f_strm_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 e_f_strm WR_EN" *)
output wire e_f_strm_write;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  filter_dut inst (
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .ap_start(ap_start),
    .filter_cfg_strm_dout(filter_cfg_strm_dout),
    .filter_cfg_strm_empty_n(filter_cfg_strm_empty_n),
    .filter_cfg_strm_read(filter_cfg_strm_read),
    .k_strms_0_dout(k_strms_0_dout),
    .k_strms_0_empty_n(k_strms_0_empty_n),
    .k_strms_0_read(k_strms_0_read),
    .k_strms_1_dout(k_strms_1_dout),
    .k_strms_1_empty_n(k_strms_1_empty_n),
    .k_strms_1_read(k_strms_1_read),
    .k_strms_2_dout(k_strms_2_dout),
    .k_strms_2_empty_n(k_strms_2_empty_n),
    .k_strms_2_read(k_strms_2_read),
    .k_strms_3_dout(k_strms_3_dout),
    .k_strms_3_empty_n(k_strms_3_empty_n),
    .k_strms_3_read(k_strms_3_read),
    .p_strm_dout(p_strm_dout),
    .p_strm_empty_n(p_strm_empty_n),
    .p_strm_read(p_strm_read),
    .e_strm_dout(e_strm_dout),
    .e_strm_empty_n(e_strm_empty_n),
    .e_strm_read(e_strm_read),
    .f_strm_din(f_strm_din),
    .f_strm_full_n(f_strm_full_n),
    .f_strm_write(f_strm_write),
    .e_f_strm_din(e_f_strm_din),
    .e_f_strm_full_n(e_f_strm_full_n),
    .e_f_strm_write(e_f_strm_write)
  );
endmodule
