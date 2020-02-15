-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../vga_move.srcs/sources_1/ip/div/div_clk_wiz.v" \
  "../../../../vga_move.srcs/sources_1/ip/div/div.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

