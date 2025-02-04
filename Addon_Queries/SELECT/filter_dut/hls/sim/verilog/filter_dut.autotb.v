// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      filter_dut
`define AUTOTB_DUT_INST AESL_inst_filter_dut
`define AUTOTB_TOP      apatb_filter_dut_top
`define AUTOTB_LAT_RESULT_FILE "filter_dut.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "filter_dut.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_filter_dut_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_FIFO_filter_cfg_strm AESL_autofifo_filter_cfg_strm
`define AESL_FIFO_INST_filter_cfg_strm AESL_autofifo_inst_filter_cfg_strm
`define AESL_FIFO_k_strms_0 AESL_autofifo_k_strms_0
`define AESL_FIFO_INST_k_strms_0 AESL_autofifo_inst_k_strms_0
`define AESL_FIFO_k_strms_1 AESL_autofifo_k_strms_1
`define AESL_FIFO_INST_k_strms_1 AESL_autofifo_inst_k_strms_1
`define AESL_FIFO_k_strms_2 AESL_autofifo_k_strms_2
`define AESL_FIFO_INST_k_strms_2 AESL_autofifo_inst_k_strms_2
`define AESL_FIFO_k_strms_3 AESL_autofifo_k_strms_3
`define AESL_FIFO_INST_k_strms_3 AESL_autofifo_inst_k_strms_3
`define AESL_FIFO_p_strm AESL_autofifo_p_strm
`define AESL_FIFO_INST_p_strm AESL_autofifo_inst_p_strm
`define AESL_FIFO_e_strm AESL_autofifo_e_strm
`define AESL_FIFO_INST_e_strm AESL_autofifo_inst_e_strm
`define AESL_FIFO_f_strm AESL_autofifo_f_strm
`define AESL_FIFO_INST_f_strm AESL_autofifo_inst_f_strm
`define AESL_FIFO_e_f_strm AESL_autofifo_e_f_strm
`define AESL_FIFO_INST_e_f_strm AESL_autofifo_inst_e_f_strm
`define AUTOTB_TVIN_filter_cfg_strm  "../tv/cdatafile/c.filter_dut.autotvin_filter_cfg_strm.dat"
`define AUTOTB_TVIN_k_strms_0  "../tv/cdatafile/c.filter_dut.autotvin_k_strms_0.dat"
`define AUTOTB_TVIN_k_strms_1  "../tv/cdatafile/c.filter_dut.autotvin_k_strms_1.dat"
`define AUTOTB_TVIN_k_strms_2  "../tv/cdatafile/c.filter_dut.autotvin_k_strms_2.dat"
`define AUTOTB_TVIN_k_strms_3  "../tv/cdatafile/c.filter_dut.autotvin_k_strms_3.dat"
`define AUTOTB_TVIN_p_strm  "../tv/cdatafile/c.filter_dut.autotvin_p_strm.dat"
`define AUTOTB_TVIN_e_strm  "../tv/cdatafile/c.filter_dut.autotvin_e_strm.dat"
`define AUTOTB_TVIN_filter_cfg_strm_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvin_filter_cfg_strm.dat"
`define AUTOTB_TVIN_k_strms_0_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvin_k_strms_0.dat"
`define AUTOTB_TVIN_k_strms_1_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvin_k_strms_1.dat"
`define AUTOTB_TVIN_k_strms_2_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvin_k_strms_2.dat"
`define AUTOTB_TVIN_k_strms_3_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvin_k_strms_3.dat"
`define AUTOTB_TVIN_p_strm_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvin_p_strm.dat"
`define AUTOTB_TVIN_e_strm_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvin_e_strm.dat"
`define AUTOTB_TVOUT_f_strm  "../tv/cdatafile/c.filter_dut.autotvout_f_strm.dat"
`define AUTOTB_TVOUT_e_f_strm  "../tv/cdatafile/c.filter_dut.autotvout_e_f_strm.dat"
`define AUTOTB_TVOUT_f_strm_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvout_f_strm.dat"
`define AUTOTB_TVOUT_e_f_strm_out_wrapc  "../tv/rtldatafile/rtl.filter_dut.autotvout_e_f_strm.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_e_f_strm = 48;
parameter LENGTH_e_strm = 1025;
parameter LENGTH_f_strm = 47;
parameter LENGTH_filter_cfg_strm = 45;
parameter LENGTH_k_strms_0 = 1024;
parameter LENGTH_k_strms_1 = 1024;
parameter LENGTH_k_strms_2 = 1024;
parameter LENGTH_k_strms_3 = 1024;
parameter LENGTH_p_strm = 1024;

task read_token;
    input integer fp;
    output reg [207 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] filter_cfg_strm_dout;
wire  filter_cfg_strm_empty_n;
wire  filter_cfg_strm_read;
wire [31 : 0] k_strms_0_dout;
wire  k_strms_0_empty_n;
wire  k_strms_0_read;
wire [31 : 0] k_strms_1_dout;
wire  k_strms_1_empty_n;
wire  k_strms_1_read;
wire [31 : 0] k_strms_2_dout;
wire  k_strms_2_empty_n;
wire  k_strms_2_read;
wire [31 : 0] k_strms_3_dout;
wire  k_strms_3_empty_n;
wire  k_strms_3_read;
wire [31 : 0] p_strm_dout;
wire  p_strm_empty_n;
wire  p_strm_read;
wire [0 : 0] e_strm_dout;
wire  e_strm_empty_n;
wire  e_strm_read;
wire [31 : 0] f_strm_din;
wire  f_strm_full_n;
wire  f_strm_write;
wire [0 : 0] e_f_strm_din;
wire  e_f_strm_full_n;
wire  e_f_strm_write;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
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
    .e_f_strm_write(e_f_strm_write));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation filter_cfg_strm

wire fifofilter_cfg_strm_rd;
wire [31 : 0] fifofilter_cfg_strm_dout;
wire fifofilter_cfg_strm_empty_n;
wire fifofilter_cfg_strm_ready;
wire fifofilter_cfg_strm_done;
reg [31:0] ap_c_n_tvin_trans_num_filter_cfg_strm;
reg filter_cfg_strm_ready_reg;

`AESL_FIFO_filter_cfg_strm `AESL_FIFO_INST_filter_cfg_strm (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifofilter_cfg_strm_rd),
    .if_dout      (fifofilter_cfg_strm_dout),
    .if_empty_n   (fifofilter_cfg_strm_empty_n),
    .ready        (fifofilter_cfg_strm_ready),
    .done         (fifofilter_cfg_strm_done)
);

// Assignment between dut and fifofilter_cfg_strm

// Assign input of fifofilter_cfg_strm
assign      fifofilter_cfg_strm_rd        =   filter_cfg_strm_read & filter_cfg_strm_empty_n;
assign    fifofilter_cfg_strm_ready   =   filter_cfg_strm_ready_reg | ready_initial;
assign    fifofilter_cfg_strm_done    =   0;
// Assign input of dut
assign      filter_cfg_strm_dout       =   fifofilter_cfg_strm_dout;
reg   reg_fifofilter_cfg_strm_empty_n;
initial begin : gen_reg_fifofilter_cfg_strm_empty_n_process
    integer proc_rand;
    reg_fifofilter_cfg_strm_empty_n = fifofilter_cfg_strm_empty_n;
    while (1) begin
        @ (fifofilter_cfg_strm_empty_n);
        reg_fifofilter_cfg_strm_empty_n = fifofilter_cfg_strm_empty_n;
    end
end

assign      filter_cfg_strm_empty_n    =   reg_fifofilter_cfg_strm_empty_n;


// Fifo Instantiation k_strms_0

wire fifok_strms_0_rd;
wire [31 : 0] fifok_strms_0_dout;
wire fifok_strms_0_empty_n;
wire fifok_strms_0_ready;
wire fifok_strms_0_done;
reg [31:0] ap_c_n_tvin_trans_num_k_strms_0;
reg k_strms_0_ready_reg;

`AESL_FIFO_k_strms_0 `AESL_FIFO_INST_k_strms_0 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifok_strms_0_rd),
    .if_dout      (fifok_strms_0_dout),
    .if_empty_n   (fifok_strms_0_empty_n),
    .ready        (fifok_strms_0_ready),
    .done         (fifok_strms_0_done)
);

// Assignment between dut and fifok_strms_0

// Assign input of fifok_strms_0
assign      fifok_strms_0_rd        =   k_strms_0_read & k_strms_0_empty_n;
assign    fifok_strms_0_ready   =   k_strms_0_ready_reg | ready_initial;
assign    fifok_strms_0_done    =   0;
// Assign input of dut
assign      k_strms_0_dout       =   fifok_strms_0_dout;
reg   reg_fifok_strms_0_empty_n;
initial begin : gen_reg_fifok_strms_0_empty_n_process
    integer proc_rand;
    reg_fifok_strms_0_empty_n = fifok_strms_0_empty_n;
    while (1) begin
        @ (fifok_strms_0_empty_n);
        reg_fifok_strms_0_empty_n = fifok_strms_0_empty_n;
    end
end

assign      k_strms_0_empty_n    =   reg_fifok_strms_0_empty_n;


// Fifo Instantiation k_strms_1

wire fifok_strms_1_rd;
wire [31 : 0] fifok_strms_1_dout;
wire fifok_strms_1_empty_n;
wire fifok_strms_1_ready;
wire fifok_strms_1_done;
reg [31:0] ap_c_n_tvin_trans_num_k_strms_1;
reg k_strms_1_ready_reg;

`AESL_FIFO_k_strms_1 `AESL_FIFO_INST_k_strms_1 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifok_strms_1_rd),
    .if_dout      (fifok_strms_1_dout),
    .if_empty_n   (fifok_strms_1_empty_n),
    .ready        (fifok_strms_1_ready),
    .done         (fifok_strms_1_done)
);

// Assignment between dut and fifok_strms_1

// Assign input of fifok_strms_1
assign      fifok_strms_1_rd        =   k_strms_1_read & k_strms_1_empty_n;
assign    fifok_strms_1_ready   =   k_strms_1_ready_reg | ready_initial;
assign    fifok_strms_1_done    =   0;
// Assign input of dut
assign      k_strms_1_dout       =   fifok_strms_1_dout;
reg   reg_fifok_strms_1_empty_n;
initial begin : gen_reg_fifok_strms_1_empty_n_process
    integer proc_rand;
    reg_fifok_strms_1_empty_n = fifok_strms_1_empty_n;
    while (1) begin
        @ (fifok_strms_1_empty_n);
        reg_fifok_strms_1_empty_n = fifok_strms_1_empty_n;
    end
end

assign      k_strms_1_empty_n    =   reg_fifok_strms_1_empty_n;


// Fifo Instantiation k_strms_2

wire fifok_strms_2_rd;
wire [31 : 0] fifok_strms_2_dout;
wire fifok_strms_2_empty_n;
wire fifok_strms_2_ready;
wire fifok_strms_2_done;
reg [31:0] ap_c_n_tvin_trans_num_k_strms_2;
reg k_strms_2_ready_reg;

`AESL_FIFO_k_strms_2 `AESL_FIFO_INST_k_strms_2 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifok_strms_2_rd),
    .if_dout      (fifok_strms_2_dout),
    .if_empty_n   (fifok_strms_2_empty_n),
    .ready        (fifok_strms_2_ready),
    .done         (fifok_strms_2_done)
);

// Assignment between dut and fifok_strms_2

// Assign input of fifok_strms_2
assign      fifok_strms_2_rd        =   k_strms_2_read & k_strms_2_empty_n;
assign    fifok_strms_2_ready   =   k_strms_2_ready_reg | ready_initial;
assign    fifok_strms_2_done    =   0;
// Assign input of dut
assign      k_strms_2_dout       =   fifok_strms_2_dout;
reg   reg_fifok_strms_2_empty_n;
initial begin : gen_reg_fifok_strms_2_empty_n_process
    integer proc_rand;
    reg_fifok_strms_2_empty_n = fifok_strms_2_empty_n;
    while (1) begin
        @ (fifok_strms_2_empty_n);
        reg_fifok_strms_2_empty_n = fifok_strms_2_empty_n;
    end
end

assign      k_strms_2_empty_n    =   reg_fifok_strms_2_empty_n;


// Fifo Instantiation k_strms_3

wire fifok_strms_3_rd;
wire [31 : 0] fifok_strms_3_dout;
wire fifok_strms_3_empty_n;
wire fifok_strms_3_ready;
wire fifok_strms_3_done;
reg [31:0] ap_c_n_tvin_trans_num_k_strms_3;
reg k_strms_3_ready_reg;

`AESL_FIFO_k_strms_3 `AESL_FIFO_INST_k_strms_3 (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifok_strms_3_rd),
    .if_dout      (fifok_strms_3_dout),
    .if_empty_n   (fifok_strms_3_empty_n),
    .ready        (fifok_strms_3_ready),
    .done         (fifok_strms_3_done)
);

// Assignment between dut and fifok_strms_3

// Assign input of fifok_strms_3
assign      fifok_strms_3_rd        =   k_strms_3_read & k_strms_3_empty_n;
assign    fifok_strms_3_ready   =   k_strms_3_ready_reg | ready_initial;
assign    fifok_strms_3_done    =   0;
// Assign input of dut
assign      k_strms_3_dout       =   fifok_strms_3_dout;
reg   reg_fifok_strms_3_empty_n;
initial begin : gen_reg_fifok_strms_3_empty_n_process
    integer proc_rand;
    reg_fifok_strms_3_empty_n = fifok_strms_3_empty_n;
    while (1) begin
        @ (fifok_strms_3_empty_n);
        reg_fifok_strms_3_empty_n = fifok_strms_3_empty_n;
    end
end

assign      k_strms_3_empty_n    =   reg_fifok_strms_3_empty_n;


// Fifo Instantiation p_strm

wire fifop_strm_rd;
wire [31 : 0] fifop_strm_dout;
wire fifop_strm_empty_n;
wire fifop_strm_ready;
wire fifop_strm_done;
reg [31:0] ap_c_n_tvin_trans_num_p_strm;
reg p_strm_ready_reg;

`AESL_FIFO_p_strm `AESL_FIFO_INST_p_strm (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifop_strm_rd),
    .if_dout      (fifop_strm_dout),
    .if_empty_n   (fifop_strm_empty_n),
    .ready        (fifop_strm_ready),
    .done         (fifop_strm_done)
);

// Assignment between dut and fifop_strm

// Assign input of fifop_strm
assign      fifop_strm_rd        =   p_strm_read & p_strm_empty_n;
assign    fifop_strm_ready   =   p_strm_ready_reg | ready_initial;
assign    fifop_strm_done    =   0;
// Assign input of dut
assign      p_strm_dout       =   fifop_strm_dout;
reg   reg_fifop_strm_empty_n;
initial begin : gen_reg_fifop_strm_empty_n_process
    integer proc_rand;
    reg_fifop_strm_empty_n = fifop_strm_empty_n;
    while (1) begin
        @ (fifop_strm_empty_n);
        reg_fifop_strm_empty_n = fifop_strm_empty_n;
    end
end

assign      p_strm_empty_n    =   reg_fifop_strm_empty_n;


// Fifo Instantiation e_strm

wire fifoe_strm_rd;
wire [0 : 0] fifoe_strm_dout;
wire fifoe_strm_empty_n;
wire fifoe_strm_ready;
wire fifoe_strm_done;
reg [31:0] ap_c_n_tvin_trans_num_e_strm;
reg e_strm_ready_reg;

`AESL_FIFO_e_strm `AESL_FIFO_INST_e_strm (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoe_strm_rd),
    .if_dout      (fifoe_strm_dout),
    .if_empty_n   (fifoe_strm_empty_n),
    .ready        (fifoe_strm_ready),
    .done         (fifoe_strm_done)
);

// Assignment between dut and fifoe_strm

// Assign input of fifoe_strm
assign      fifoe_strm_rd        =   e_strm_read & e_strm_empty_n;
assign    fifoe_strm_ready   =   e_strm_ready_reg | ready_initial;
assign    fifoe_strm_done    =   0;
// Assign input of dut
assign      e_strm_dout       =   fifoe_strm_dout;
reg   reg_fifoe_strm_empty_n;
initial begin : gen_reg_fifoe_strm_empty_n_process
    integer proc_rand;
    reg_fifoe_strm_empty_n = fifoe_strm_empty_n;
    while (1) begin
        @ (fifoe_strm_empty_n);
        reg_fifoe_strm_empty_n = fifoe_strm_empty_n;
    end
end

assign      e_strm_empty_n    =   reg_fifoe_strm_empty_n;


//------------------------Fifof_strm Instantiation--------------

// The input and output of fifof_strm
wire  fifof_strm_wr;
wire  [31 : 0] fifof_strm_din;
wire  fifof_strm_full_n;
wire  fifof_strm_ready;
wire  fifof_strm_done;

`AESL_FIFO_f_strm `AESL_FIFO_INST_f_strm(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifof_strm_wr),
    .if_din       (fifof_strm_din),
    .if_full_n    (fifof_strm_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifof_strm_ready),
    .done         (fifof_strm_done)
);

// Assignment between dut and fifof_strm

// Assign input of fifof_strm
assign      fifof_strm_wr        =   f_strm_write & f_strm_full_n;
assign      fifof_strm_din        =   f_strm_din;
assign    fifof_strm_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifof_strm_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifof_strm_full_n;
initial begin : gen_reg_fifof_strm_full_n_process
    integer proc_rand;
    reg_fifof_strm_full_n = fifof_strm_full_n;
    while (1) begin
        @ (fifof_strm_full_n);
        reg_fifof_strm_full_n = fifof_strm_full_n;
    end
end

assign      f_strm_full_n    =   reg_fifof_strm_full_n;


//------------------------Fifoe_f_strm Instantiation--------------

// The input and output of fifoe_f_strm
wire  fifoe_f_strm_wr;
wire  [0 : 0] fifoe_f_strm_din;
wire  fifoe_f_strm_full_n;
wire  fifoe_f_strm_ready;
wire  fifoe_f_strm_done;

`AESL_FIFO_e_f_strm `AESL_FIFO_INST_e_f_strm(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoe_f_strm_wr),
    .if_din       (fifoe_f_strm_din),
    .if_full_n    (fifoe_f_strm_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoe_f_strm_ready),
    .done         (fifoe_f_strm_done)
);

// Assignment between dut and fifoe_f_strm

// Assign input of fifoe_f_strm
assign      fifoe_f_strm_wr        =   e_f_strm_write & e_f_strm_full_n;
assign      fifoe_f_strm_din        =   e_f_strm_din;
assign    fifoe_f_strm_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoe_f_strm_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoe_f_strm_full_n;
initial begin : gen_reg_fifoe_f_strm_full_n_process
    integer proc_rand;
    reg_fifoe_f_strm_full_n = fifoe_f_strm_full_n;
    while (1) begin
        @ (fifoe_f_strm_full_n);
        reg_fifoe_f_strm_full_n = fifoe_f_strm_full_n;
    end
end

assign      e_f_strm_full_n    =   reg_fifoe_f_strm_full_n;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_filter_cfg_strm;
reg [31:0] size_filter_cfg_strm;
reg [31:0] size_filter_cfg_strm_backup;
reg end_k_strms_0;
reg [31:0] size_k_strms_0;
reg [31:0] size_k_strms_0_backup;
reg end_k_strms_1;
reg [31:0] size_k_strms_1;
reg [31:0] size_k_strms_1_backup;
reg end_k_strms_2;
reg [31:0] size_k_strms_2;
reg [31:0] size_k_strms_2_backup;
reg end_k_strms_3;
reg [31:0] size_k_strms_3;
reg [31:0] size_k_strms_3_backup;
reg end_p_strm;
reg [31:0] size_p_strm;
reg [31:0] size_p_strm_backup;
reg end_e_strm;
reg [31:0] size_e_strm;
reg [31:0] size_e_strm_backup;
reg end_f_strm;
reg [31:0] size_f_strm;
reg [31:0] size_f_strm_backup;
reg end_e_f_strm;
reg [31:0] size_e_f_strm;
reg [31:0] size_e_f_strm_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_filter_cfg_strm_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    filter_cfg_strm_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_filter_cfg_strm > internal_trans_num) begin
            filter_cfg_strm_ready_reg <= 1;
            @(posedge AESL_clock);
            filter_cfg_strm_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    filter_cfg_strm_ready_reg <= 0;
end
initial begin : proc_gen_k_strms_0_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    k_strms_0_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_k_strms_0 > internal_trans_num) begin
            k_strms_0_ready_reg <= 1;
            @(posedge AESL_clock);
            k_strms_0_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    k_strms_0_ready_reg <= 0;
end
initial begin : proc_gen_k_strms_1_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    k_strms_1_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_k_strms_1 > internal_trans_num) begin
            k_strms_1_ready_reg <= 1;
            @(posedge AESL_clock);
            k_strms_1_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    k_strms_1_ready_reg <= 0;
end
initial begin : proc_gen_k_strms_2_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    k_strms_2_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_k_strms_2 > internal_trans_num) begin
            k_strms_2_ready_reg <= 1;
            @(posedge AESL_clock);
            k_strms_2_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    k_strms_2_ready_reg <= 0;
end
initial begin : proc_gen_k_strms_3_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    k_strms_3_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_k_strms_3 > internal_trans_num) begin
            k_strms_3_ready_reg <= 1;
            @(posedge AESL_clock);
            k_strms_3_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    k_strms_3_ready_reg <= 0;
end
initial begin : proc_gen_p_strm_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    p_strm_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_p_strm > internal_trans_num) begin
            p_strm_ready_reg <= 1;
            @(posedge AESL_clock);
            p_strm_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    p_strm_ready_reg <= 0;
end
initial begin : proc_gen_e_strm_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    e_strm_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_e_strm > internal_trans_num) begin
            e_strm_ready_reg <= 1;
            @(posedge AESL_clock);
            e_strm_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    e_strm_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_filter_cfg_strm "../tv/stream_size/stream_size_in_filter_cfg_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_filter_cfg_strm
        integer fp_filter_cfg_strm;
        reg [127:0] token_filter_cfg_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_filter_cfg_strm = 0;
        end_filter_cfg_strm = 0;
        wait (AESL_reset === 0);
        
        fp_filter_cfg_strm = $fopen(`STREAM_SIZE_IN_filter_cfg_strm, "r");
        if(fp_filter_cfg_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_filter_cfg_strm);
            $finish;
        end
        read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be [[[runtime]]]
        if (token_filter_cfg_strm != "[[[runtime]]]") begin
            $display("ERROR: token_filter_cfg_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_filter_cfg_strm = 0;
        size_filter_cfg_strm_backup = 0;
        while (size_filter_cfg_strm == 0 && end_filter_cfg_strm == 0) begin
            ap_c_n_tvin_trans_num_filter_cfg_strm = ap_c_n_tvin_trans_num_filter_cfg_strm + 1;
            read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_filter_cfg_strm == "[[transaction]]") begin
                read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be transaction number
                read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be size for hls::stream
                ret = $sscanf(token_filter_cfg_strm, "%d", size_filter_cfg_strm);
                if (size_filter_cfg_strm > 0) begin
                    size_filter_cfg_strm_backup = size_filter_cfg_strm;
                end
                read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be [[/transaction]]
            end else if (token_filter_cfg_strm == "[[[/runtime]]]") begin
                $fclose(fp_filter_cfg_strm);
                end_filter_cfg_strm = 1;
            end else begin
                $display("ERROR: unknown token_filter_cfg_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_filter_cfg_strm == 0) begin
                if (filter_cfg_strm_read == 1 && filter_cfg_strm_empty_n == 1) begin
                    if (size_filter_cfg_strm > 0) begin
                        size_filter_cfg_strm = size_filter_cfg_strm - 1;
                        while (size_filter_cfg_strm == 0 && end_filter_cfg_strm == 0) begin
                            ap_c_n_tvin_trans_num_filter_cfg_strm = ap_c_n_tvin_trans_num_filter_cfg_strm + 1;
                            read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_filter_cfg_strm == "[[transaction]]") begin
                                read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be transaction number
                                read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be size for hls::stream
                                ret = $sscanf(token_filter_cfg_strm, "%d", size_filter_cfg_strm);
                                if (size_filter_cfg_strm > 0) begin
                                    size_filter_cfg_strm_backup = size_filter_cfg_strm;
                                end
                                read_token(fp_filter_cfg_strm, token_filter_cfg_strm); // should be [[/transaction]]
                            end else if (token_filter_cfg_strm == "[[[/runtime]]]") begin
                                size_filter_cfg_strm = size_filter_cfg_strm_backup;
                                $fclose(fp_filter_cfg_strm);
                                end_filter_cfg_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_filter_cfg_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (filter_cfg_strm_read == 1 && filter_cfg_strm_empty_n == 1) begin
                    if (size_filter_cfg_strm > 0) begin
                        size_filter_cfg_strm = size_filter_cfg_strm - 1;
                        if (size_filter_cfg_strm == 0) begin
                            ap_c_n_tvin_trans_num_filter_cfg_strm = ap_c_n_tvin_trans_num_filter_cfg_strm + 1;
                            size_filter_cfg_strm = size_filter_cfg_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_k_strms_0 "../tv/stream_size/stream_size_in_k_strms_0.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_k_strms_0
        integer fp_k_strms_0;
        reg [127:0] token_k_strms_0;
        integer ret;
        
        ap_c_n_tvin_trans_num_k_strms_0 = 0;
        end_k_strms_0 = 0;
        wait (AESL_reset === 0);
        
        fp_k_strms_0 = $fopen(`STREAM_SIZE_IN_k_strms_0, "r");
        if(fp_k_strms_0 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_k_strms_0);
            $finish;
        end
        read_token(fp_k_strms_0, token_k_strms_0); // should be [[[runtime]]]
        if (token_k_strms_0 != "[[[runtime]]]") begin
            $display("ERROR: token_k_strms_0 != \"[[[runtime]]]\"");
            $finish;
        end
        size_k_strms_0 = 0;
        size_k_strms_0_backup = 0;
        while (size_k_strms_0 == 0 && end_k_strms_0 == 0) begin
            ap_c_n_tvin_trans_num_k_strms_0 = ap_c_n_tvin_trans_num_k_strms_0 + 1;
            read_token(fp_k_strms_0, token_k_strms_0); // should be [[transaction]] or [[[/runtime]]]
            if (token_k_strms_0 == "[[transaction]]") begin
                read_token(fp_k_strms_0, token_k_strms_0); // should be transaction number
                read_token(fp_k_strms_0, token_k_strms_0); // should be size for hls::stream
                ret = $sscanf(token_k_strms_0, "%d", size_k_strms_0);
                if (size_k_strms_0 > 0) begin
                    size_k_strms_0_backup = size_k_strms_0;
                end
                read_token(fp_k_strms_0, token_k_strms_0); // should be [[/transaction]]
            end else if (token_k_strms_0 == "[[[/runtime]]]") begin
                $fclose(fp_k_strms_0);
                end_k_strms_0 = 1;
            end else begin
                $display("ERROR: unknown token_k_strms_0");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_k_strms_0 == 0) begin
                if (k_strms_0_read == 1 && k_strms_0_empty_n == 1) begin
                    if (size_k_strms_0 > 0) begin
                        size_k_strms_0 = size_k_strms_0 - 1;
                        while (size_k_strms_0 == 0 && end_k_strms_0 == 0) begin
                            ap_c_n_tvin_trans_num_k_strms_0 = ap_c_n_tvin_trans_num_k_strms_0 + 1;
                            read_token(fp_k_strms_0, token_k_strms_0); // should be [[transaction]] or [[[/runtime]]]
                            if (token_k_strms_0 == "[[transaction]]") begin
                                read_token(fp_k_strms_0, token_k_strms_0); // should be transaction number
                                read_token(fp_k_strms_0, token_k_strms_0); // should be size for hls::stream
                                ret = $sscanf(token_k_strms_0, "%d", size_k_strms_0);
                                if (size_k_strms_0 > 0) begin
                                    size_k_strms_0_backup = size_k_strms_0;
                                end
                                read_token(fp_k_strms_0, token_k_strms_0); // should be [[/transaction]]
                            end else if (token_k_strms_0 == "[[[/runtime]]]") begin
                                size_k_strms_0 = size_k_strms_0_backup;
                                $fclose(fp_k_strms_0);
                                end_k_strms_0 = 1;
                            end else begin
                                $display("ERROR: unknown token_k_strms_0");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (k_strms_0_read == 1 && k_strms_0_empty_n == 1) begin
                    if (size_k_strms_0 > 0) begin
                        size_k_strms_0 = size_k_strms_0 - 1;
                        if (size_k_strms_0 == 0) begin
                            ap_c_n_tvin_trans_num_k_strms_0 = ap_c_n_tvin_trans_num_k_strms_0 + 1;
                            size_k_strms_0 = size_k_strms_0_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_k_strms_1 "../tv/stream_size/stream_size_in_k_strms_1.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_k_strms_1
        integer fp_k_strms_1;
        reg [127:0] token_k_strms_1;
        integer ret;
        
        ap_c_n_tvin_trans_num_k_strms_1 = 0;
        end_k_strms_1 = 0;
        wait (AESL_reset === 0);
        
        fp_k_strms_1 = $fopen(`STREAM_SIZE_IN_k_strms_1, "r");
        if(fp_k_strms_1 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_k_strms_1);
            $finish;
        end
        read_token(fp_k_strms_1, token_k_strms_1); // should be [[[runtime]]]
        if (token_k_strms_1 != "[[[runtime]]]") begin
            $display("ERROR: token_k_strms_1 != \"[[[runtime]]]\"");
            $finish;
        end
        size_k_strms_1 = 0;
        size_k_strms_1_backup = 0;
        while (size_k_strms_1 == 0 && end_k_strms_1 == 0) begin
            ap_c_n_tvin_trans_num_k_strms_1 = ap_c_n_tvin_trans_num_k_strms_1 + 1;
            read_token(fp_k_strms_1, token_k_strms_1); // should be [[transaction]] or [[[/runtime]]]
            if (token_k_strms_1 == "[[transaction]]") begin
                read_token(fp_k_strms_1, token_k_strms_1); // should be transaction number
                read_token(fp_k_strms_1, token_k_strms_1); // should be size for hls::stream
                ret = $sscanf(token_k_strms_1, "%d", size_k_strms_1);
                if (size_k_strms_1 > 0) begin
                    size_k_strms_1_backup = size_k_strms_1;
                end
                read_token(fp_k_strms_1, token_k_strms_1); // should be [[/transaction]]
            end else if (token_k_strms_1 == "[[[/runtime]]]") begin
                $fclose(fp_k_strms_1);
                end_k_strms_1 = 1;
            end else begin
                $display("ERROR: unknown token_k_strms_1");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_k_strms_1 == 0) begin
                if (k_strms_1_read == 1 && k_strms_1_empty_n == 1) begin
                    if (size_k_strms_1 > 0) begin
                        size_k_strms_1 = size_k_strms_1 - 1;
                        while (size_k_strms_1 == 0 && end_k_strms_1 == 0) begin
                            ap_c_n_tvin_trans_num_k_strms_1 = ap_c_n_tvin_trans_num_k_strms_1 + 1;
                            read_token(fp_k_strms_1, token_k_strms_1); // should be [[transaction]] or [[[/runtime]]]
                            if (token_k_strms_1 == "[[transaction]]") begin
                                read_token(fp_k_strms_1, token_k_strms_1); // should be transaction number
                                read_token(fp_k_strms_1, token_k_strms_1); // should be size for hls::stream
                                ret = $sscanf(token_k_strms_1, "%d", size_k_strms_1);
                                if (size_k_strms_1 > 0) begin
                                    size_k_strms_1_backup = size_k_strms_1;
                                end
                                read_token(fp_k_strms_1, token_k_strms_1); // should be [[/transaction]]
                            end else if (token_k_strms_1 == "[[[/runtime]]]") begin
                                size_k_strms_1 = size_k_strms_1_backup;
                                $fclose(fp_k_strms_1);
                                end_k_strms_1 = 1;
                            end else begin
                                $display("ERROR: unknown token_k_strms_1");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (k_strms_1_read == 1 && k_strms_1_empty_n == 1) begin
                    if (size_k_strms_1 > 0) begin
                        size_k_strms_1 = size_k_strms_1 - 1;
                        if (size_k_strms_1 == 0) begin
                            ap_c_n_tvin_trans_num_k_strms_1 = ap_c_n_tvin_trans_num_k_strms_1 + 1;
                            size_k_strms_1 = size_k_strms_1_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_k_strms_2 "../tv/stream_size/stream_size_in_k_strms_2.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_k_strms_2
        integer fp_k_strms_2;
        reg [127:0] token_k_strms_2;
        integer ret;
        
        ap_c_n_tvin_trans_num_k_strms_2 = 0;
        end_k_strms_2 = 0;
        wait (AESL_reset === 0);
        
        fp_k_strms_2 = $fopen(`STREAM_SIZE_IN_k_strms_2, "r");
        if(fp_k_strms_2 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_k_strms_2);
            $finish;
        end
        read_token(fp_k_strms_2, token_k_strms_2); // should be [[[runtime]]]
        if (token_k_strms_2 != "[[[runtime]]]") begin
            $display("ERROR: token_k_strms_2 != \"[[[runtime]]]\"");
            $finish;
        end
        size_k_strms_2 = 0;
        size_k_strms_2_backup = 0;
        while (size_k_strms_2 == 0 && end_k_strms_2 == 0) begin
            ap_c_n_tvin_trans_num_k_strms_2 = ap_c_n_tvin_trans_num_k_strms_2 + 1;
            read_token(fp_k_strms_2, token_k_strms_2); // should be [[transaction]] or [[[/runtime]]]
            if (token_k_strms_2 == "[[transaction]]") begin
                read_token(fp_k_strms_2, token_k_strms_2); // should be transaction number
                read_token(fp_k_strms_2, token_k_strms_2); // should be size for hls::stream
                ret = $sscanf(token_k_strms_2, "%d", size_k_strms_2);
                if (size_k_strms_2 > 0) begin
                    size_k_strms_2_backup = size_k_strms_2;
                end
                read_token(fp_k_strms_2, token_k_strms_2); // should be [[/transaction]]
            end else if (token_k_strms_2 == "[[[/runtime]]]") begin
                $fclose(fp_k_strms_2);
                end_k_strms_2 = 1;
            end else begin
                $display("ERROR: unknown token_k_strms_2");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_k_strms_2 == 0) begin
                if (k_strms_2_read == 1 && k_strms_2_empty_n == 1) begin
                    if (size_k_strms_2 > 0) begin
                        size_k_strms_2 = size_k_strms_2 - 1;
                        while (size_k_strms_2 == 0 && end_k_strms_2 == 0) begin
                            ap_c_n_tvin_trans_num_k_strms_2 = ap_c_n_tvin_trans_num_k_strms_2 + 1;
                            read_token(fp_k_strms_2, token_k_strms_2); // should be [[transaction]] or [[[/runtime]]]
                            if (token_k_strms_2 == "[[transaction]]") begin
                                read_token(fp_k_strms_2, token_k_strms_2); // should be transaction number
                                read_token(fp_k_strms_2, token_k_strms_2); // should be size for hls::stream
                                ret = $sscanf(token_k_strms_2, "%d", size_k_strms_2);
                                if (size_k_strms_2 > 0) begin
                                    size_k_strms_2_backup = size_k_strms_2;
                                end
                                read_token(fp_k_strms_2, token_k_strms_2); // should be [[/transaction]]
                            end else if (token_k_strms_2 == "[[[/runtime]]]") begin
                                size_k_strms_2 = size_k_strms_2_backup;
                                $fclose(fp_k_strms_2);
                                end_k_strms_2 = 1;
                            end else begin
                                $display("ERROR: unknown token_k_strms_2");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (k_strms_2_read == 1 && k_strms_2_empty_n == 1) begin
                    if (size_k_strms_2 > 0) begin
                        size_k_strms_2 = size_k_strms_2 - 1;
                        if (size_k_strms_2 == 0) begin
                            ap_c_n_tvin_trans_num_k_strms_2 = ap_c_n_tvin_trans_num_k_strms_2 + 1;
                            size_k_strms_2 = size_k_strms_2_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_k_strms_3 "../tv/stream_size/stream_size_in_k_strms_3.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_k_strms_3
        integer fp_k_strms_3;
        reg [127:0] token_k_strms_3;
        integer ret;
        
        ap_c_n_tvin_trans_num_k_strms_3 = 0;
        end_k_strms_3 = 0;
        wait (AESL_reset === 0);
        
        fp_k_strms_3 = $fopen(`STREAM_SIZE_IN_k_strms_3, "r");
        if(fp_k_strms_3 == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_k_strms_3);
            $finish;
        end
        read_token(fp_k_strms_3, token_k_strms_3); // should be [[[runtime]]]
        if (token_k_strms_3 != "[[[runtime]]]") begin
            $display("ERROR: token_k_strms_3 != \"[[[runtime]]]\"");
            $finish;
        end
        size_k_strms_3 = 0;
        size_k_strms_3_backup = 0;
        while (size_k_strms_3 == 0 && end_k_strms_3 == 0) begin
            ap_c_n_tvin_trans_num_k_strms_3 = ap_c_n_tvin_trans_num_k_strms_3 + 1;
            read_token(fp_k_strms_3, token_k_strms_3); // should be [[transaction]] or [[[/runtime]]]
            if (token_k_strms_3 == "[[transaction]]") begin
                read_token(fp_k_strms_3, token_k_strms_3); // should be transaction number
                read_token(fp_k_strms_3, token_k_strms_3); // should be size for hls::stream
                ret = $sscanf(token_k_strms_3, "%d", size_k_strms_3);
                if (size_k_strms_3 > 0) begin
                    size_k_strms_3_backup = size_k_strms_3;
                end
                read_token(fp_k_strms_3, token_k_strms_3); // should be [[/transaction]]
            end else if (token_k_strms_3 == "[[[/runtime]]]") begin
                $fclose(fp_k_strms_3);
                end_k_strms_3 = 1;
            end else begin
                $display("ERROR: unknown token_k_strms_3");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_k_strms_3 == 0) begin
                if (k_strms_3_read == 1 && k_strms_3_empty_n == 1) begin
                    if (size_k_strms_3 > 0) begin
                        size_k_strms_3 = size_k_strms_3 - 1;
                        while (size_k_strms_3 == 0 && end_k_strms_3 == 0) begin
                            ap_c_n_tvin_trans_num_k_strms_3 = ap_c_n_tvin_trans_num_k_strms_3 + 1;
                            read_token(fp_k_strms_3, token_k_strms_3); // should be [[transaction]] or [[[/runtime]]]
                            if (token_k_strms_3 == "[[transaction]]") begin
                                read_token(fp_k_strms_3, token_k_strms_3); // should be transaction number
                                read_token(fp_k_strms_3, token_k_strms_3); // should be size for hls::stream
                                ret = $sscanf(token_k_strms_3, "%d", size_k_strms_3);
                                if (size_k_strms_3 > 0) begin
                                    size_k_strms_3_backup = size_k_strms_3;
                                end
                                read_token(fp_k_strms_3, token_k_strms_3); // should be [[/transaction]]
                            end else if (token_k_strms_3 == "[[[/runtime]]]") begin
                                size_k_strms_3 = size_k_strms_3_backup;
                                $fclose(fp_k_strms_3);
                                end_k_strms_3 = 1;
                            end else begin
                                $display("ERROR: unknown token_k_strms_3");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (k_strms_3_read == 1 && k_strms_3_empty_n == 1) begin
                    if (size_k_strms_3 > 0) begin
                        size_k_strms_3 = size_k_strms_3 - 1;
                        if (size_k_strms_3 == 0) begin
                            ap_c_n_tvin_trans_num_k_strms_3 = ap_c_n_tvin_trans_num_k_strms_3 + 1;
                            size_k_strms_3 = size_k_strms_3_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_p_strm "../tv/stream_size/stream_size_in_p_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_p_strm
        integer fp_p_strm;
        reg [127:0] token_p_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_p_strm = 0;
        end_p_strm = 0;
        wait (AESL_reset === 0);
        
        fp_p_strm = $fopen(`STREAM_SIZE_IN_p_strm, "r");
        if(fp_p_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_p_strm);
            $finish;
        end
        read_token(fp_p_strm, token_p_strm); // should be [[[runtime]]]
        if (token_p_strm != "[[[runtime]]]") begin
            $display("ERROR: token_p_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_p_strm = 0;
        size_p_strm_backup = 0;
        while (size_p_strm == 0 && end_p_strm == 0) begin
            ap_c_n_tvin_trans_num_p_strm = ap_c_n_tvin_trans_num_p_strm + 1;
            read_token(fp_p_strm, token_p_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_p_strm == "[[transaction]]") begin
                read_token(fp_p_strm, token_p_strm); // should be transaction number
                read_token(fp_p_strm, token_p_strm); // should be size for hls::stream
                ret = $sscanf(token_p_strm, "%d", size_p_strm);
                if (size_p_strm > 0) begin
                    size_p_strm_backup = size_p_strm;
                end
                read_token(fp_p_strm, token_p_strm); // should be [[/transaction]]
            end else if (token_p_strm == "[[[/runtime]]]") begin
                $fclose(fp_p_strm);
                end_p_strm = 1;
            end else begin
                $display("ERROR: unknown token_p_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_p_strm == 0) begin
                if (p_strm_read == 1 && p_strm_empty_n == 1) begin
                    if (size_p_strm > 0) begin
                        size_p_strm = size_p_strm - 1;
                        while (size_p_strm == 0 && end_p_strm == 0) begin
                            ap_c_n_tvin_trans_num_p_strm = ap_c_n_tvin_trans_num_p_strm + 1;
                            read_token(fp_p_strm, token_p_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_p_strm == "[[transaction]]") begin
                                read_token(fp_p_strm, token_p_strm); // should be transaction number
                                read_token(fp_p_strm, token_p_strm); // should be size for hls::stream
                                ret = $sscanf(token_p_strm, "%d", size_p_strm);
                                if (size_p_strm > 0) begin
                                    size_p_strm_backup = size_p_strm;
                                end
                                read_token(fp_p_strm, token_p_strm); // should be [[/transaction]]
                            end else if (token_p_strm == "[[[/runtime]]]") begin
                                size_p_strm = size_p_strm_backup;
                                $fclose(fp_p_strm);
                                end_p_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_p_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (p_strm_read == 1 && p_strm_empty_n == 1) begin
                    if (size_p_strm > 0) begin
                        size_p_strm = size_p_strm - 1;
                        if (size_p_strm == 0) begin
                            ap_c_n_tvin_trans_num_p_strm = ap_c_n_tvin_trans_num_p_strm + 1;
                            size_p_strm = size_p_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_e_strm "../tv/stream_size/stream_size_in_e_strm.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_e_strm
        integer fp_e_strm;
        reg [127:0] token_e_strm;
        integer ret;
        
        ap_c_n_tvin_trans_num_e_strm = 0;
        end_e_strm = 0;
        wait (AESL_reset === 0);
        
        fp_e_strm = $fopen(`STREAM_SIZE_IN_e_strm, "r");
        if(fp_e_strm == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_e_strm);
            $finish;
        end
        read_token(fp_e_strm, token_e_strm); // should be [[[runtime]]]
        if (token_e_strm != "[[[runtime]]]") begin
            $display("ERROR: token_e_strm != \"[[[runtime]]]\"");
            $finish;
        end
        size_e_strm = 0;
        size_e_strm_backup = 0;
        while (size_e_strm == 0 && end_e_strm == 0) begin
            ap_c_n_tvin_trans_num_e_strm = ap_c_n_tvin_trans_num_e_strm + 1;
            read_token(fp_e_strm, token_e_strm); // should be [[transaction]] or [[[/runtime]]]
            if (token_e_strm == "[[transaction]]") begin
                read_token(fp_e_strm, token_e_strm); // should be transaction number
                read_token(fp_e_strm, token_e_strm); // should be size for hls::stream
                ret = $sscanf(token_e_strm, "%d", size_e_strm);
                if (size_e_strm > 0) begin
                    size_e_strm_backup = size_e_strm;
                end
                read_token(fp_e_strm, token_e_strm); // should be [[/transaction]]
            end else if (token_e_strm == "[[[/runtime]]]") begin
                $fclose(fp_e_strm);
                end_e_strm = 1;
            end else begin
                $display("ERROR: unknown token_e_strm");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_e_strm == 0) begin
                if (e_strm_read == 1 && e_strm_empty_n == 1) begin
                    if (size_e_strm > 0) begin
                        size_e_strm = size_e_strm - 1;
                        while (size_e_strm == 0 && end_e_strm == 0) begin
                            ap_c_n_tvin_trans_num_e_strm = ap_c_n_tvin_trans_num_e_strm + 1;
                            read_token(fp_e_strm, token_e_strm); // should be [[transaction]] or [[[/runtime]]]
                            if (token_e_strm == "[[transaction]]") begin
                                read_token(fp_e_strm, token_e_strm); // should be transaction number
                                read_token(fp_e_strm, token_e_strm); // should be size for hls::stream
                                ret = $sscanf(token_e_strm, "%d", size_e_strm);
                                if (size_e_strm > 0) begin
                                    size_e_strm_backup = size_e_strm;
                                end
                                read_token(fp_e_strm, token_e_strm); // should be [[/transaction]]
                            end else if (token_e_strm == "[[[/runtime]]]") begin
                                size_e_strm = size_e_strm_backup;
                                $fclose(fp_e_strm);
                                end_e_strm = 1;
                            end else begin
                                $display("ERROR: unknown token_e_strm");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (e_strm_read == 1 && e_strm_empty_n == 1) begin
                    if (size_e_strm > 0) begin
                        size_e_strm = size_e_strm - 1;
                        if (size_e_strm == 0) begin
                            ap_c_n_tvin_trans_num_e_strm = ap_c_n_tvin_trans_num_e_strm + 1;
                            size_e_strm = size_e_strm_backup;
                        end
                    end
                end
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_f_strm;

initial begin : dump_tvout_runtime_sign_f_strm
    integer fp;
    dump_tvout_finish_f_strm = 0;
    fp = $fopen(`AUTOTB_TVOUT_f_strm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_f_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_f_strm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_f_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_f_strm = 1;
end


reg dump_tvout_finish_e_f_strm;

initial begin : dump_tvout_runtime_sign_e_f_strm
    integer fp;
    dump_tvout_finish_e_f_strm = 0;
    fp = $fopen(`AUTOTB_TVOUT_e_f_strm_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_e_f_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_e_f_strm_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_e_f_strm_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_e_f_strm = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .dl_reset(~AESL_reset),
    .all_finish(all_finish),
    .dl_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
