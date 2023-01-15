<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="NeuralNetworkKernel" top="nn_inference">
  <files>
    <file name="../../../src/matmul_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../src/matmul.hpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    <file name="../src/matmul.cpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    <file name="../src/kernels.hpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="NN_kernel" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
