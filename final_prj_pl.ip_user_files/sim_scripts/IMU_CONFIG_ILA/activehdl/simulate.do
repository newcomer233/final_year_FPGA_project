transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+IMU_CONFIG_ILA  -L xil_defaultlib -L xilinx_vip -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.IMU_CONFIG_ILA xil_defaultlib.glbl

do {IMU_CONFIG_ILA.udo}

run 1000ns

endsim

quit -force
