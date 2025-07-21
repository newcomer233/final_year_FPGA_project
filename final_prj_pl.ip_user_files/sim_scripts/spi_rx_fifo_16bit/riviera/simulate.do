transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+spi_rx_fifo_16bit  -L xil_defaultlib -L xpm -L fifo_generator_v13_2_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.spi_rx_fifo_16bit xil_defaultlib.glbl

do {spi_rx_fifo_16bit.udo}

run 1000ns

endsim

quit -force
