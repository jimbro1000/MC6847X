onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MC6847X/NTSCClk
add wave -noupdate /MC6847X/PALClk
add wave -noupdate /MC6847X/RequestFormat
add wave -noupdate /MC6847X/DA0
add wave -noupdate /MC6847X/FSn
add wave -noupdate /MC6847X/HSn
add wave -noupdate /MC6847X/FormatClk
add wave -noupdate /MC6847X/Format
add wave -noupdate /MC6847X/DataPreLoad
add wave -noupdate /MC6847X/AlphaRowClear
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
WaveRestoreZoom {0 ps} {1 ns}
