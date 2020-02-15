vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/xil_defaultlib

vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../assignment4.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_1_0/sim/design_1_util_vector_logic_1_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_2_0/sim/design_1_util_vector_logic_2_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_3_0/sim/design_1_util_vector_logic_3_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_4_0/sim/design_1_util_vector_logic_4_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_4_1/sim/design_1_util_vector_logic_4_1.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_4_2/sim/design_1_util_vector_logic_4_2.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_4_3/sim/design_1_util_vector_logic_4_3.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_7_0/sim/design_1_util_vector_logic_7_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

