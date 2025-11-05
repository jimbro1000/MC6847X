logfile -move -name MC6847X.log
new_project -name MC6847X -folder "h:/MC6847X/ProChip" -force
new_impl -name MC6847X  -force
setup_design -manufacturer "Atmel" -family  "ATF15xxAS"  -part "ATF1508AS-10JU84" -speed "STD" -basename "MC6847X"
	add_input_file {"h:/MC6847X/ProChip/MC6847X.v"}
	add_input_file {"h:/MC6847X/ProChip/ClockSwitch.v"}
	add_input_file {"h:/MC6847X/ProChip/counter.v"}
	add_input_file {"h:/MC6847X/ProChip/FormatSwitch.v"}
	add_input_file {"h:/MC6847X/ProChip/FrameTiming.v"}
	add_input_file {"h:/MC6847X/ProChip/col_counter_vhdl.vhd"}
	add_input_file {"h:/MC6847X/ProChip/ext_counter_vhdl.vhd"}
	add_input_file {"h:/MC6847X/ProChip/reg_counter_vhdl.vhd"}
	add_input_file {"h:/MC6847X/ProChip/row_counter_vhdl.vhd"}
	add_input_file {"h:/MC6847X/ProChip/videoMux.v"}
compile 
synthesize
save_impl
report_area -cell_usage -hierarchy -all_leafs
close_project -discard
file copy -force "h:/MC6847X/ProChip/MC6847X/MC6847X.edf"  "h:/MC6847X/ProChip/MC6847X.edf"
