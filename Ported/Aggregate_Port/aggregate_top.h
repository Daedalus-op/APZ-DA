#ifndef _AGGREGATE_TOP_HPP_
#define _AGGREGATE_TOP_HPP_

#include <ap_int.h>
#include <hls_stream.h>
#include "aggregate.hpp"


#define LEN 20

//#define keyLength 20

typedef ap_uint<128> DATA_TYPE;

                              
extern "C" void aggregate_top(AggregateOp op, int keyLength, DATA_TYPE inKey[LEN], DATA_TYPE outKey[LEN]);

#endif
