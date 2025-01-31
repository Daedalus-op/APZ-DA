#include <hls_stream.h>
#include "aggregate_top.h"


typedef ap_uint<128> DATA_TYPE;
typedef ap_uint<64> T;


void readM2S(int keyLength, DATA_TYPE inKey[LEN], hls::stream<DATA_TYPE>& keyStrm, hls::stream<bool>& endStrm) {
    const int len = LEN;
    for (int i = 0; i < keyLength; i++) {
#pragma HLS pipeline ii = 1
#pragma HLS loop_tripcount max = len min = len
        keyStrm.write(inKey[i]);
        endStrm.write(false);
    }
    endStrm.write(true);
}

void writeS2M(int keyLength, DATA_TYPE outKey[LEN], hls::stream<DATA_TYPE>& keyStrm, hls::stream<bool>& endStrm) {
    const int len = LEN;
    for (int i = 0; i < keyLength; i++) {
#pragma HLS pipeline ii = 1
#pragma HLS loop_tripcount max = len min = len
        outKey[i] = keyStrm.read();
        endStrm.read();
    }
    endStrm.read();
}
extern "C" void aggregate_top(AggregateOp op,int keylength,DATA_TYPE inKey[LEN], DATA_TYPE outKey[LEN]){
#pragma HLS dataflow
#ifndef HLS_TEST
// Memory interface signals for input and output keys
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = 16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = inKey
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = 16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem1 port = outKey

// Control interface signals (ensure all control signals are in the same bundle)
#pragma HLS INTERFACE s_axilite port = keylength bundle = control
#pragma HLS INTERFACE s_axilite port = inKey bundle = control
#pragma HLS INTERFACE s_axilite port = outKey bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control
#pragma HLS INTERFACE s_axilite port = op bundle = control


#endif
    hls::stream<DATA_TYPE> inDataStrm;
    hls::stream<bool> inEndStrm;
    hls::stream<DATA_TYPE> outDataStrm;
    hls::stream<bool> outEndStrm;
#pragma HLS stream variable = inDataStrm depth = 4
#pragma HLS stream variable = inEndStrm depth = 4
#pragma HLS stream variable = outDataStrm depth = 4
#pragma HLS stream variable = outEndStrm depth = 4
    readM2S(keylength, inKey, inDataStrm, inEndStrm);
    if(op == AOP_MAX){
        xf::database::aggregate<xf::database::AOP_MAX,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm);
    }else if(op == AOP_MIN){
        xf::database::aggregate<xf::database::AOP_MIN,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm);
    }else if(op == AOP_MEAN){
        xf::database::aggregate<xf::database::AOP_MEAN,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm);
    }else if (op == AOP_VARIANCE){
        xf::database::aggregate<xf::database::AOP_VARIANCE,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm);
    }else if (op == AOP_NORML1){
        xf::database::aggregate<xf::database::AOP_NORML1,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm);
    }else if(op == AOP_NORML2){
        xf::database::aggregate<xf::database::AOP_NORML2,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm); 
    }else if (op == AOP_SUM){
        xf::database::aggregate<xf::database::AOP_SUM,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm);
    }else if(op == AOP_COUNT){
        xf::database::aggregate<xf::database::AOP_COUNT,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm);
    }else if(op == AOP_COUNTNONZEROS){
        xf::database::aggregate<xf::database::AOP_COUNTNONZEROS,DATA_TYPE>(inDataStrm,inEndStrm,outDataStrm,outEndStrm);
    }
    writeS2M(keylength, outKey, outDataStrm, outEndStrm);
}
