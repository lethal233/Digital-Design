vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/demorgan_bd/ip/demorgan_bd_demorgan_df_0_0/sim/demorgan_bd_demorgan_df_0_0.v" \
"../../../bd/demorgan_bd/sim/demorgan_bd.v" \


vlog -work xil_defaultlib \
"glbl.v"

