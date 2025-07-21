transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+axis_eth_head_convertor  -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_1 -L axis_register_slice_v1_1_34 -L axis_dwidth_converter_v1_1_33 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axis_eth_head_convertor xil_defaultlib.glbl

do {axis_eth_head_convertor.udo}

run 1000ns

endsim

quit -force
