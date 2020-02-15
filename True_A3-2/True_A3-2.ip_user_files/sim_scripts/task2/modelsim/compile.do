vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vlog -work xil_defaultlib -64 -incr \
"../../../bd/task2/ipshared/5e8c/DECO38.v" \
"../../../bd/task2/ip/task2_decoder3_8_0_0/sim/task2_decoder3_8_0_0.v" \
"../../../bd/task2/ip/task2_decoder3_8_1_0/sim/task2_decoder3_8_1_0.v" \
"../../../bd/task2/sim/task2.v" \

vlog -work xlconcat_v2_1_1 -64 -incr \
"../../../../True_A3-2.srcs/sources_1/bd/task2/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/task2/ip/task2_xlconcat_0_0/sim/task2_xlconcat_0_0.v" \

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../True_A3-2.srcs/sources_1/bd/task2/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/task2/ip/task2_util_vector_logic_0_1/sim/task2_util_vector_logic_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

