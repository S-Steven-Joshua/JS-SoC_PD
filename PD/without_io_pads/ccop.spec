# Clock root from SDC
set_ccopt_property cts_is_sdc_clock_root -pin clk true

# Create clock tree
create_ccopt_clock_tree -name clk -source clk

# Set clock period (28.5 ns)
set_ccopt_property clock_period -pin clk 28.5

# Skew group
create_ccopt_skew_group -name clk_group -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk_group true

# Allowed CTS buffers
set_ccopt_property buffer_cells {bufbd7 buffd2 buftd1 bufbdf buffda}

# Allowed CTS inverters
set_ccopt_property inverter_cells {inv0d2 invtd2 inv0da invbdk invbda}
