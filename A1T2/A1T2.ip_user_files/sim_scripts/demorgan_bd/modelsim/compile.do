vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/demorgan_bd/ip/demorgan_bd_demorgan_df_0_0/sim/demorgan_bd_demorgan_df_0_0.v" \
"../../../bd/demorgan_bd/sim/demorgan_bd.v" \


vlog -work xil_defaultlib \
"glbl.v"

