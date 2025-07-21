transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+IMU_test_vio  -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.IMU_test_vio xil_defaultlib.glbl

do {IMU_test_vio.udo}

run 1000ns

endsim

quit -force
