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

#ifndef TABLE_DT_H
#define TABLE_DT_H

// XXX inline with tpch_read_2.h
#include <stdint.h>
typedef int32_t TPCH_INT;

#define TPCH_INT_SZ sizeof(TPCH_INT)

typedef TPCH_INT COND0_SZ;
typedef TPCH_INT COND1_SZ;
typedef TPCH_INT COND2_SZ;
typedef TPCH_INT COND3_SZ;

typedef TPCH_INT OUT_SZ;

#define COND0_SZ sizeof(TPCH_INT)
#define COND1_SZ sizeof(TPCH_INT)
#define COND2_SZ sizeof(TPCH_INT)
#define COND3_SZ sizeof(TPCH_INT)

#define OUT_SZ sizeof(TPCH_INT)

#define L_DEPTH 2000
// every cycle, 4 input rows.
#define VEC_LEN 16

// ensure when kernel read in vec, won't over read
// SF = 1
#define L_MAX_ROW 6001215l
#define O_MAX_ROW 1500000l

#endif // TABLE_DT_H
