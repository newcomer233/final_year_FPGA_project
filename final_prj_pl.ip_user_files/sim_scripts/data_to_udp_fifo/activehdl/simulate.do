transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+data_to_udp_fifo  -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_1 -L axis_data_fifo_v2_0_16 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.data_to_udp_fifo xil_defaultlib.glbl

do {data_to_udp_fifo.udo}

run 1000ns

endsim

quit -force
