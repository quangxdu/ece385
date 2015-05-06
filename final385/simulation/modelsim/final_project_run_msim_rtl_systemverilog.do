transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385/usb_system {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/usb_system/usb_system_bb.v}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/ShiftUpClock.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/getStripModule.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/Mapper.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385/Graphic\ Module {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/Graphic Module/VGA_controller.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/pallete.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/mux8.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/sprite_table.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385/Game\ Module {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/Game Module/GameTable.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/GameManager.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/hexdriver.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385/Graphic\ Module {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/Graphic Module/GraphicModule.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/GameModule.sv}
vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/final_project.sv}
vlib usb_system
vmap usb_system usb_system

vlog -sv -work work +incdir+C:/Users/Quangxdu/Documents/GitHub/ece385/final385 {C:/Users/Quangxdu/Documents/GitHub/ece385/final385/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L usb_system -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 500 ns
