/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "kernel_filter.hpp"

void readM2S(int keyLength, KEY_TYPE inKey[LEN], hls::stream<KEY_TYPE>& keyStrm, hls::stream<bool>& endStrm) {
    const int len = LEN;
    for (int i = 0; i < keyLength; i++) {
#pragma HLS pipeline ii = 1
#pragma HLS loop_tripcount max = len min = len
        keyStrm.write(inKey[i]);
        endStrm.write(false);
    }
    endStrm.write(true);
}

void writeS2M(int keyLength, KEY_TYPE outKey[LEN], hls::stream<KEY_TYPE>& keyStrm, hls::stream<bool>& endStrm) {
    const int len = LEN;
    for (int i = 0; i < keyLength; i++) {
#pragma HLS pipeline ii = 1
#pragma HLS loop_tripcount max = len min = len
        outKey[i] = keyStrm.read();
        endStrm.read();
    }
    endStrm.read();
}

extern "C" void FilterKernel(
    // input, condition cfg
    ap_uint<32> buf_filter_cfg[xf::database::DynamicFilterInfo<4, 32>::dwords_num],
    // input, condition columns
    ap_uint<8 * COND0_SZ * VEC_LEN> cond0[L_DEPTH],
    ap_uint<8 * COND1_SZ * VEC_LEN> cond1[L_DEPTH],
    ap_uint<8 * COND2_SZ * VEC_LEN> cond2[L_DEPTH],
    ap_uint<8 * COND3_SZ * VEC_LEN> cond3[L_DEPTH],
    // output
    ap_uint<8 * OUT_SZ * 2> outFilter[1]) {

    // clang-format off
  ;
#pragma HLS INTERFACE m_axi offset = slave latency = 64 \
  num_write_outstanding = 16 num_read_outstanding = 16 \
  max_write_burst_length = 64 max_read_burst_length = 64 \
  bundle = gmem0_0 port = buf_filter_cfg

#pragma HLS INTERFACE m_axi offset = slave latency = 64 \
  num_write_outstanding = 16 num_read_outstanding = 16 \
  max_write_burst_length = 64 max_read_burst_length = 64 \
  bundle = gmem0_1 port = buf_l_shipdate

#pragma HLS INTERFACE m_axi offset = slave latency = 64 \
  num_write_outstanding = 16 num_read_outstanding = 16 \
  max_write_burst_length = 64 max_read_burst_length = 64 \
  bundle = gmem0_2 port = buf_l_discount

#pragma HLS INTERFACE m_axi offset = slave latency = 64 \
  num_write_outstanding = 16 num_read_outstanding = 16 \
  max_write_burst_length = 64 max_read_burst_length = 64 \
  bundle = gmem0_3 port = buf_l_quantity

#pragma HLS INTERFACE m_axi offset = slave latency = 64 \
  num_write_outstanding = 16 num_read_outstanding = 16 \
  max_write_burst_length = 64 max_read_burst_length = 64 \
  bundle = gmem0_4 port = buf_l_commitdate

#pragma HLS INTERFACE m_axi offset = slave latency = 64 \
  num_write_outstanding = 16 num_read_outstanding = 16 \
  max_write_burst_length = 64 max_read_burst_length = 64 \
  bundle = gmem0_5 port = buf_l_extendedprice

#pragma HLS INTERFACE m_axi offset = slave latency = 64 \
  num_write_outstanding = 16 num_read_outstanding = 16 \
  max_write_burst_length = 64 max_read_burst_length = 64 \
  bundle = gmem0_6 port = buf_revenue

#pragma HLS INTERFACE s_axilite port = buf_filter_cfg bundle = control
#pragma HLS INTERFACE s_axilite port = buf_l_shipdate bundle = control
#pragma HLS INTERFACE s_axilite port = buf_l_discount bundle = control
#pragma HLS INTERFACE s_axilite port = buf_l_quantity bundle = control
#pragma HLS INTERFACE s_axilite port = buf_l_commitdate bundle = control
#pragma HLS INTERFACE s_axilite port = buf_l_extendedprice bundle = control
#pragma HLS INTERFACE s_axilite port = l_nrow bundle = control
#pragma HLS INTERFACE s_axilite port = buf_revenue bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control
    // clang-format on
    ;

#pragma HLS dataflow
#ifndef HLS_TEST
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = inKey
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem1 port = outKey
#pragma HLS INTERFACE s_axilite port = order bundle = control
#pragma HLS INTERFACE s_axilite port = keyLength bundle = control
#pragma HLS INTERFACE s_axilite port = inKey bundle = control
#pragma HLS INTERFACE s_axilite port = outKey bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control
#endif
    // hls::stream<KEY_TYPE> inKeyStrm;
    // hls::stream<bool> inEndStrm;
    // hls::stream<KEY_TYPE> outKeyStrm;
    // hls::stream<bool> outEndStrm;
    
    //config
    hls::stream<xf::database::DynamicFilterInfo<4, 32>::cfg_type> filter_cfg_strm;
    //in
    hls::stream<ap_uint<WKEY> > k_strms[4];
    hls::stream<ap_uint<WPAY> > p_strm;
    hls::stream<bool> e_strm;
    // out
    hls::stream<ap_uint<WPAY> > f_strm;
    hls::stream<bool> e_f_strm;

    
    
#pragma HLS stream variable = inKeyStrm depth = 4
#pragma HLS stream variable = inEndStrm depth = 4
#pragma HLS stream variable = outKeyStrm depth = 4
#pragma HLS stream variable = outEndStrm depth = 4
    readM2S(k_strms[4], p_strm, e_strm);
    // v0_strm, v1_strm, v2_strm, v3_strm, pay_in_strm, e_in_strm,
    xf::database::dynamicFilter<WKEY, WPAY>(filter_cfg_strm, k_strms[0], k_strms[1], k_strms[2], k_strms[3], p_strm, e_strm, //
                                f_strm, e_f_strm);
    // pay_out_strm, e_pay_out_strm
    writeS2M(outFilter, f_strm, e_f_strm);
}
