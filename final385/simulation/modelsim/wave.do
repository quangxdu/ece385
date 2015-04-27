onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/Clk
add wave -noupdate /testbench/Reset
add wave -noupdate /testbench/red
add wave -noupdate /testbench/green
add wave -noupdate /testbench/blue
add wave -noupdate /testbench/hs
add wave -noupdate /testbench/vs
add wave -noupdate /testbench/VGA_clk
add wave -noupdate /testbench/blank
add wave -noupdate /testbench/sync
add wave -noupdate /testbench/nowhere
add wave -noupdate /testbench/empty
add wave -noupdate /testbench/spritex
add wave -noupdate /testbench/spritey
add wave -noupdate /testbench/GraphicModule/Mapper/spriteIDOut
add wave -noupdate /testbench/GraphicModule/Mapper/sPosXOut
add wave -noupdate /testbench/GraphicModule/Mapper/sPosYOut
add wave -noupdate /testbench/GraphicModule/vga_controller/DrawX
add wave -noupdate /testbench/GraphicModule/vga_controller/DrawY
add wave -noupdate /testbench/GraphicModule/Mapper/PosY1
add wave -noupdate /testbench/GraphicModule/Mapper/PosX1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49999328 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 283
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 400
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {49999176 ps} {50000044 ps}
