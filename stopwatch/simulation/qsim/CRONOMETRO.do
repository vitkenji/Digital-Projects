onerror {exit -code 1}
vlib work
vcom -work work CRONOMETRO.vho
vcom -work work teste_minutos_2.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.contador_minutos_2_vhd_vec_tst
vcd file -direction CRONOMETRO.msim.vcd
vcd add -internal contador_minutos_2_vhd_vec_tst/*
vcd add -internal contador_minutos_2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
