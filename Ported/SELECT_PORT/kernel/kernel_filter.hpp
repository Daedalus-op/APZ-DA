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

#ifndef _KERNEL_FILTER_HPP_
#define _KERNEL_FILTER_HPP_

#include <ap_int.h>
#include <hls_stream.h>
#include "xf_database/dynamic_filter.hpp"

/*
* @tparam W width of all condition column streams, in bits.
* @tparam WP width of payload column, in bits.
*/
#define WKEY 32
#define WPAY 32

extern "C" void FilterKernel(int order, int keyLength, KEY_TYPE inKey[LEN], KEY_TYPE outKey[LEN]);

#endif //_KERNEL_FILTER_HPP_
