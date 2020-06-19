onerror {exit -code 1}
vlib work
vlog -work work decoder2x4.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decoder2x4_vlg_vec_tst -voptargs="+acc"
vcd file -direction decoder2x4.msim.vcd
vcd add -internal decoder2x4_vlg_vec_tst/*
vcd add -internal decoder2x4_vlg_vec_tst/i1/*
run -all
quit -f
