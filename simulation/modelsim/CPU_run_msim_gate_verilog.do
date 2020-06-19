transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {CPU.vo}

vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/cpu_TB.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  cpu_TB

add wave *
view structure
view signals
run -all
