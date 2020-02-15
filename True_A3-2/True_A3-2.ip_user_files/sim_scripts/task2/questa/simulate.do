onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib task2_opt

do {wave.do}

view wave
view structure
view signals

do {task2.udo}

run -all

quit -force
