onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib ADC_CONFIG_ILA_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ADC_CONFIG_ILA.udo}

run 1000ns

quit -force
