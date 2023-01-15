############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project NeuralNetworkKernel
set_top nn_inference
add_files ../src/matmul.hpp
add_files ../src/matmul.cpp
add_files ../src/kernels.hpp
add_files -tb ../src/matmul_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "NN_kernel" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/mads/EmbeddedFinal/EmbeddedFinalMPSoC/ip/nn_inference.zip -rtl vhdl
source "./NeuralNetworkKernel/NN_kernel/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/mads/EmbeddedFinal/EmbeddedFinalMPSoC/ip/nn_inference.zip
