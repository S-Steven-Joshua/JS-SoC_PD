###############################################################################
# SDC Constraints File for Module: chip_top
# Target Clock Period: 28.57 ns (~35 MHz)
###############################################################################

# 1. Primary Clock Definition
# Constrained directly at the output pin of the input pad (pad_clk/CIN) 
# to bypass the uncharacterized IO Pad timing arc.
create_clock -name "clk" -period 28.57 -waveform {0.0 14.28} [get_pins pad_clk/CIN]

# 2. Clock Network Uncertainty & Transition
set_clock_uncertainty 0.300 [get_clocks clk]
set_clock_transition  0.200 [get_clocks clk]

# 3. Input Port Delays
set_input_delay -max 3.0 -clock clk \
    [get_ports {ext_rst ext_bootloader_write ext_bootloader_data[*]}]

set_input_delay -min 0.5 -clock clk \
    [get_ports {ext_rst ext_bootloader_write ext_bootloader_data[*]}]

# 4. Output Port Delays
set_output_delay -max 3.0 -clock clk \
    [get_ports {ext_tx ext_bootloader_ready ext_wave ext_wave1 ext_wave2}]

# 5. External Driving Cell
set_driving_cell -lib_cell inv0d1 \
    [get_ports {ext_rst ext_bootloader_write ext_bootloader_data[*]}]

# 6. Output Load
set_load 0.05 \
    [get_ports {ext_tx ext_bootloader_ready ext_wave ext_wave1 ext_wave2}]

