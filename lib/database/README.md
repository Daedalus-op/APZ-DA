# Vitis Database Library

Vitis Database Library is an open-sourced Vitis library written in C++ and released under
[Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0)
for accelerating database applications in a variety of use cases.

The main target audience of this library is SQL engine developers, who want to accelerate
the query execution with FPGA cards.
Currently, this library offers three levels of acceleration:

* At module level, it provides an optimized hardware implementation of most common relational database execution plan steps,
  like hash-join and aggregation.
* In kernel level, the post-bitstream-programmable kernel can be used to map a sequence of execution plan steps,
  without having to compile FPGA binaries for each query.
* The software APIs level wrap the details of offloading acceleration with programmable kernels,
  and allow users to accelerate supported database tasks on Alveo cards without heterogeneous development knowledge.

At each level, this library strives to make modules configurable through documented parameters,
so that advanced users can easily tailor, optimize or combine with property logic for specific needs.
Test cases are provided for all the public APIs, and can be used as examples of usage.

Check the [comprehensive HTML document](https://docs.xilinx.com/r/en-US/Vitis_Libraries/database/index.html) for more details.

## Requirements

### FPGA Accelerator Card

The Database Library relies heavily on HBM,
so that high-level APIs (L2 and L3) are mostly targeting Alveo cards with HBM. For example,

* [Alveo U55C](https://www.xilinx.com/products/boards-and-kits/alveo/u50c.html)
* [Alveo U50](https://www.xilinx.com/products/boards-and-kits/alveo/u50.html)
* [Alveo U280](https://www.xilinx.com/products/boards-and-kits/alveo/u280.html)

The low-level L1 modules are actually device-agonostic, so that they can be instantiated into a Vitis project
targeting any platform, as long as the resources budget can be met.

### Software Platform

Supported operating systems are RHEL/CentOS 7.4, 7.5 and Ubuntu 16.04.4 LTS, 18.04.1 LTS.

_GCC 5.0 or above_ is required for C++11/C++14 support.
With CentOS/RHEL 7.4 and 7.5, C++11/C++14 should be enabled via
[devtoolset-6](https://www.softwarecollections.org/en/scls/rhscl/devtoolset-6/).

### Development Tools

This library is designed to work with Vitis 2022.2,
and a matching version of XRT should be installed.

### Dependency

This library depends on the Vitis Utility Library, which is assumed to be placed in the same path as this library with name `utils`. Hence the directory is organized as follows.

```
/cloned/path/database # This library, which contains L1, L2, etc.
/cloned/path/utils # The Vitis Utility Library, which contains its L1.
```

## Source Files and Application Development
Vitis libraries are organized into L1, L2, and L3 folders, each relating to a different stage of application development.

**L1** :
      Makefiles and sources in L1 facilitate HLS based flow for quick checks. Tasks at this level include:

* Check the functionality of an individual kernel (C-simulation)
* Estimate resource usage, latency, etc. (Synthesis)
* Run cycle accurate simulations (Co-simulation)
* Package as IP and get final resource utilization/timing details (Export RTL)
       
	**Note**:  Once RTL (or XO file after packaging IP) is generated, the Vivado flow is invoked for XCLBIN file generation if required.

**L2** :
       Makefiles and sources in L2 facilitate building XCLBIN file from various sources (HDL, HLS or XO files) of kernels with host code written in OpenCL/XRT framework targeting a device. This flow supports:

* Software emulation to check the functionality
* Hardware emulation to check RTL level simulation
* Build and test on hardware

**L3** :
       Makefiles and sources in L3 demonstrate applications developed involving multiple kernels in pipeline. These Makefiles can be used for executing tasks, as with the L2 Makefiles.

## Running Test Cases

This library ships two types of case: HLS cases and Vitis cases.
HLS cases can only be found in `L1/tests` folder, and are created to test module-level functionality.
Both types of cases are driven by makefiles.

### Shell Environment

Build environment needs setup with the Vitis and XRT scripts before running any case.

For command-line developers the following settings are required before running any case in this library:

```console
source /opt/xilinx/Vitis/2022.2/settings64.sh
source /opt/xilinx/xrt/setup.sh
export PLATFORM_REPO_PATHS=/opt/xilinx/platforms
```

For `csh` users, please look for corresponding scripts with `.csh` suffix and adjust the variable setting command accordingly.

Setting `PLATFORM_REPO_PATHS` to the installation folder of platform files can enable makefiles
in this library to use `DEVICE` variable as a pattern.
Otherwise, full path to .xpfm file needs to be provided via `DEVICE` variable.

### HLS Cases Command Line Flow

```console
cd L1/tests/hls_case_folder/

make run CSIM=1 CSYNTH=0 COSIM=0 VIVADO_SYN=0 VIVADO_IMPL=0 \
    DEVICE=/path/to/xilinx_u280_xdma_201920_3.xpfm
```

Test control variables are:

- `CSIM` for high level simulation.
- `CSYNTH` for high level synthesis to RTL.
- `COSIM` for co-simulation between software test bench and generated RTL.
- `VIVADO_SYN` for synthesis by Vivado.
- `VIVADO_IMPL` for implementation by Vivado.

For all these variables, setting to `1` indicates execution while `0` for skipping.
The default value of all these control variables are ``0``, so they can be omitted from command line
if the corresponding step is not wanted.

### Vitis Cases Command Line Flow

```console
cd L2/tests/vitis_case_folder

# build and run one of the following using U280 platform
make run TARGET=sw_emu DEVICE=/path/to/xilinx_u280_xdma_201920_3.xpfm

# delete generated files
make cleanall
```

Here, `TARGET` decides the FPGA binary type

- `sw_emu` is for software emulation
- `hw_emu` is for hardware emulation
- `hw` is for deployment on physical card. (Compilation to hardware binary often takes hours.)

Besides ``run``, the Vitis case makefile also allows ``host`` and ``xclbin`` as build target.


## Benchmark Result

In `L1/benchmarks`, a list of key primitives are combined with data-loading/storing modules and built into xclbins targeting Alveo U280.
For more details about the benchmarks, please kindly find them in Database Library's Benchmarking section of
[documentation](https://docs.xilinx.com/r/en-US/Vitis_Libraries/database/index.html).


## License

Licensed using the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0).

    Copyright 2019-2022 Xilinx, Inc.
    
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    
        http://www.apache.org/licenses/LICENSE-2.0
    
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

