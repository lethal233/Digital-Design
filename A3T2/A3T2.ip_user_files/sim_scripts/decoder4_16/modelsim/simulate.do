onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xlconcat_v2_1_1 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.decoder4_16 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {decoder4_16.udo}

run -all

quit -force
