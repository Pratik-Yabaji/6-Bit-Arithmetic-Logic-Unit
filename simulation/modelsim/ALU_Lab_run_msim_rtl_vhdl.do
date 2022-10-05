transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/HP/Desktop/Third Sem/EE-214/Experiment/210070094_Lab_06/ALU_Lab/DUT.vhdl}
vcom -93 -work work {C:/Users/HP/Desktop/Third Sem/EE-214/Experiment/210070094_Lab_06/ALU_Lab/ALU_Lab.vhd}

vcom -93 -work work {C:/Users/HP/Desktop/Third Sem/EE-214/Experiment/210070094_Lab_06/ALU_Lab/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
