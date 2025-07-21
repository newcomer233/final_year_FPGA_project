onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib imu_read_ila_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {imu_read_ila.udo}

run 1000ns

quit -force
