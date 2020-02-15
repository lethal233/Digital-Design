vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/util_vector_logic_v2_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/decoder4_16/ipshared/6d83/decoder3_8.v" \
"../../../bd/decoder4_16/ip/decoder4_16_decoder3_8_0_0/sim/decoder4_16_decoder3_8_0_0.v" \
"../../../bd/decoder4_16/ip/decoder4_16_decoder3_8_1_0/sim/decoder4_16_decoder3_8_1_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 \
"../../../../A3T2.srcs/sources_1/bd/decoder4_16/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/decoder4_16/ip/decoder4_16_xlconcat_0_0/sim/decoder4_16_xlconcat_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../A3T2.srcs/sources_1/bd/decoder4_16/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/decoder4_16/ip/decoder4_16_util_vector_logic_0_1/sim/decoder4_16_util_vector_logic_0_1.v" \
"../../../bd/decoder4_16/ip/decoder4_16_util_vector_logic_1_0/sim/decoder4_16_util_vector_logic_1_0.v" \
"../../../bd/decoder4_16/ip/decoder4_16_util_vector_logic_2_0/sim/decoder4_16_util_vector_logic_2_0.v" \
"../../../bd/decoder4_16/sim/decoder4_16.v" \

vlog -work xil_defaultlib \
"glbl.v"

