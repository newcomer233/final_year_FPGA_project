onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_34 -L axis_dwidth_converter_v1_1_33 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axis_eth_head_convertor xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {axis_eth_head_convertor.udo}

run 1000ns

quit -force
