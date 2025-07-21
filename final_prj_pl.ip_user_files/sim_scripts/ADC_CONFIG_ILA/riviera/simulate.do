transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ADC_CONFIG_ILA  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ADC_CONFIG_ILA xil_defaultlib.glbl

do {ADC_CONFIG_ILA.udo}

run 1000ns

endsim

quit -force
