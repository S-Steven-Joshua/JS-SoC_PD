###############################################################################
# SDC Constraints File for Module: top
# Target Clock: 35 MHz (10.0 ns Period)
###############################################################################

# 1. Primary Clock Definition
create_clock -name "clk" -period 28.57 -waveform {0.0 14.28} [get_ports clk]

# 2. Clock Network Uncertainty & Transition
set_clock_uncertainty 0.300 [get_clocks clk]
set_clock_transition  0.200 [get_clocks clk]

# 3. Input Port Delays
set_input_delay -max 3.0 -clock clk \
    [get_ports {rst bootloader_write bootloader_data[*]}]

set_input_delay -min 0.5 -clock clk \
    [get_ports {rst bootloader_write bootloader_data[*]}]

# 4. Output Port Delays
set_output_delay -max 3.0 -clock clk \
    [get_ports {tx bootloader_ready wave wave1 wave2}]

set_output_delay -min 0.5 -clock clk \
    [get_ports {tx bootloader_ready wave wave1 wave2}]

# 5. External Driving Cell
set_driving_cell -lib_cell inv0d1 \
    [get_ports {rst bootloader_write bootloader_data[*]}]

# 6. Output Load
set_load 0.05 \
    [get_ports {tx bootloader_ready wave wave1 wave2}]
