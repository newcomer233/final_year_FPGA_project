transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+ADC_READ_ILA  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ADC_READ_ILA xil_defaultlib.glbl

do {ADC_READ_ILA.udo}

run 1000ns

endsim

quit -force
