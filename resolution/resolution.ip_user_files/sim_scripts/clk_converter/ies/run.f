-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../resolution.srcs/sources_1/ip/clk_converter/clk_converter_clk_wiz.v" \
  "../../../../resolution.srcs/sources_1/ip/clk_converter/clk_converter.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

