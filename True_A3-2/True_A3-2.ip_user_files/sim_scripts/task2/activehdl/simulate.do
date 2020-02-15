onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+task2 -L xil_defaultlib -L xlconcat_v2_1_1 -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.task2 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {task2.udo}

run -all

endsim

quit -force
