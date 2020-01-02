vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/demorgan_bd/ip/demorgan_bd_demorgan_df_0_0/sim/demorgan_bd_demorgan_df_0_0.v" \
"../../../bd/demorgan_bd/sim/demorgan_bd.v" \


vlog -work xil_defaultlib \
"glbl.v"

