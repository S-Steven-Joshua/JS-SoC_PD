# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Mon Sep 21 13:43:27 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design top

create_clock -name "clk" -period 28.57 -waveform {0.0 14.28} [get_ports clk]
set_clock_transition 0.2 [get_clocks clk]
set_load -pin_load 0.05 [get_ports tx]
set_load -pin_load 0.05 [get_ports bootloader_ready]
set_load -pin_load 0.05 [get_ports wave]
set_load -pin_load 0.05 [get_ports wave1]
set_load -pin_load 0.05 [get_ports wave2]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports rst]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports bootloader_write]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports {bootloader_data[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports {bootloader_data[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports {bootloader_data[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports {bootloader_data[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports {bootloader_data[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports {bootloader_data[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports {bootloader_data[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports {bootloader_data[0]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports rst]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports bootloader_write]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {bootloader_data[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {bootloader_data[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {bootloader_data[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {bootloader_data[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {bootloader_data[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {bootloader_data[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {bootloader_data[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports {bootloader_data[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports tx]
set_output_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports bootloader_ready]
set_output_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports wave]
set_output_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports wave1]
set_output_delay -clock [get_clocks clk] -add_delay -max 3.0 [get_ports wave2]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports tx]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports bootloader_ready]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports wave]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports wave1]
set_output_delay -clock [get_clocks clk] -add_delay -min 0.5 [get_ports wave2]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports rst]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports {bootloader_data[7]}]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports {bootloader_data[6]}]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports {bootloader_data[5]}]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports {bootloader_data[4]}]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports {bootloader_data[3]}]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports {bootloader_data[2]}]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports {bootloader_data[1]}]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports {bootloader_data[0]}]
set_driving_cell -lib_cell inv0d1 -library tsl18fs120_scl_ss -pin "ZN" [get_ports bootloader_write]
set_wire_load_mode "enclosed"
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb2]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb1]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb4]
set_clock_uncertainty -setup 0.3 [get_clocks clk]
set_clock_uncertainty -hold 0.3 [get_clocks clk]
