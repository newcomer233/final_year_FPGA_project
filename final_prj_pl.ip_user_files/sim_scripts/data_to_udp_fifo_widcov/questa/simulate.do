onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib data_to_udp_fifo_widcov_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {data_to_udp_fifo_widcov.udo}

run 1000ns

quit -force
