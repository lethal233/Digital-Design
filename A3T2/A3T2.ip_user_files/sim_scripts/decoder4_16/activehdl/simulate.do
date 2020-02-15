onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+decoder4_16 -L xil_defaultlib -L xlconcat_v2_1_1 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.decoder4_16 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {decoder4_16.udo}

run -all

endsim

quit -force
