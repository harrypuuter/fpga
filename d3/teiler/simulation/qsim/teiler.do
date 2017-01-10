onerror {quit -f}
vlib work
vlog -work work teiler.vo
vlog -work work teiler.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.teiler_vlg_vec_tst
vcd file -direction teiler.msim.vcd
vcd add -internal teiler_vlg_vec_tst/*
vcd add -internal teiler_vlg_vec_tst/i1/*
add wave /*
run -all
