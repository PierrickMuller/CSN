onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /console_sim/uut/sel_i
add wave -noupdate /console_sim/uut/a_i
add wave -noupdate /console_sim/uut/b_i
add wave -noupdate /console_sim/uut/c_i
add wave -noupdate /console_sim/uut/d_i
add wave -noupdate /console_sim/uut/y_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
