onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clk_converter_opt

do {wave.do}

view wave
view structure
view signals

do {clk_converter.udo}

run -all

quit -force
