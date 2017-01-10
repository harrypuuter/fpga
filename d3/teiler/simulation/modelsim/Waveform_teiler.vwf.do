vlog -work work F:/Bibliotheken/OneDrive/Uni/Elektronik/fpga/d3/teiler/simulation/modelsim/Waveform_teiler.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.teiler_vlg_vec_tst
onerror {resume}
add wave {teiler_vlg_vec_tst/i1/clock}
add wave {teiler_vlg_vec_tst/i1/out}
run -all
