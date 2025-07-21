onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_1 -L axis_data_fifo_v2_0_16 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.data_to_udp_fifo xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {data_to_udp_fifo.udo}

run 1000ns

quit -force
