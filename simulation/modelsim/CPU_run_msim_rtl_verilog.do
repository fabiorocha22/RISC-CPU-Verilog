transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/32bitsRegister {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/32bitsRegister/reg32bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/RegisterFile {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/RegisterFile/registerfile.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/PC {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/PC/pc.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/MUX {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/MUX/mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/InstructionMemory {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/InstructionMemory/instructionmemory.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/Extend {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/Extend/extend.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/DataMemory {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/DataMemory/datamemory.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/Control {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/Control/control.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master/ALU {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/ALU/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/cpu.v}

vlog -vlog01compat -work work +incdir+C:/Users/fabio/Documents/GraduaÃ§Ã£o/Engenharia\ de\ ComputaÃ§Ã£o/2018\ -\ 1/ELTD05\ -\ Projeto\ de\ Sistemas\ Digitais/Trabalho/verilogMIPS-master {C:/Users/fabio/Documents/Graduação/Engenharia de Computação/2018 - 1/ELTD05 - Projeto de Sistemas Digitais/Trabalho/verilogMIPS-master/cpu_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  cpu_TB

add wave *
view structure
view signals
run -all
