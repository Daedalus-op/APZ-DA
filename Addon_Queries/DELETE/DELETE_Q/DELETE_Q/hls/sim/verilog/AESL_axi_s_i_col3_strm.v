// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_i_col3_strm_TDATA "../tv/cdatafile/c.delete_top.autotvin_i_col3_strm.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_i_col3_strm (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_i_col3_strm_TDATA,
    output TRAN_i_col3_strm_TVALID,
    input TRAN_i_col3_strm_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_i_col3_strm_TVALID_temp;
    wire i_col3_strm_TDATA_full;
    wire i_col3_strm_TDATA_empty;
    reg i_col3_strm_TDATA_write_en;
    reg [32 - 1:0] i_col3_strm_TDATA_write_data;
    reg i_col3_strm_TDATA_read_en;
    wire [32 - 1:0] i_col3_strm_TDATA_read_data;
    
    fifo #(20, 32) fifo_i_col3_strm_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(i_col3_strm_TDATA_write_en),
        .write_data(i_col3_strm_TDATA_write_data),
        .read_clock(clk),
        .read_en(i_col3_strm_TDATA_read_en),
        .read_data(i_col3_strm_TDATA_read_data),
        .full(i_col3_strm_TDATA_full),
        .empty(i_col3_strm_TDATA_empty));
    
    always @ (*) begin
        i_col3_strm_TDATA_write_en <= 0;
        i_col3_strm_TDATA_read_en <= TRAN_i_col3_strm_TREADY & TRAN_i_col3_strm_TVALID;
    end
    
    assign TRAN_i_col3_strm_TDATA = i_col3_strm_TDATA_read_data;
    assign TRAN_i_col3_strm_TVALID = TRAN_i_col3_strm_TVALID_temp;

    
    assign TRAN_i_col3_strm_TVALID_temp = ~(i_col3_strm_TDATA_empty);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [279:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [279:0] rm_0x(input [279:0] token);
        reg [279:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg [31:0] transaction_load_i_col3_strm_TDATA;
    
    assign transaction = transaction_load_i_col3_strm_TDATA;
    
    initial begin : AXI_stream_driver_i_col3_strm_TDATA
        integer fp;
        reg [279:0] token;
        reg [32 - 1:0] data;
        reg [279:0] data_integer;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_i_col3_strm_TDATA = 0;
        fifo_i_col3_strm_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_i_col3_strm_TDATA, "r");
        if (fp == 0) begin
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_i_col3_strm_TDATA);
            $finish;
        end
        token = read_token(fp);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    fifo_i_col3_strm_TDATA.clear();
                    token = read_token(fp);
                    while (token != "[[/transaction]]") begin
                        if (fifo_i_col3_strm_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_i_col3_strm_TDATA.push(data);
                        token = read_token(fp);
                    end
                    token = read_token(fp);
                    fifo_i_col3_strm_TDATA.snapshot();
                end else begin
                    fifo_i_col3_strm_TDATA.restore();
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                end
                transaction_load_i_col3_strm_TDATA = transaction_load_i_col3_strm_TDATA + 1;
            end
        end
    end

endmodule
