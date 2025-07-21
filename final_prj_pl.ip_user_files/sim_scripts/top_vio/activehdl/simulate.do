transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+top_vio  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.top_vio xil_defaultlib.glbl

do {top_vio.udo}

run 1000ns

endsim

quit -force
