(globals
version = 3
io_order = clockwise
space = 10
total_edge = 18
)
(iopad

# ============================================================
# LEFT EDGE: Input data [0:3], Power Set 1, Clock & Reset
# ============================================================
(topleft (inst name="corner_top_left" cell=pfrelr offset=0 orientation=R180 place_status=fixed))
(left
(inst name="gen_bl_data_pads[0].pad_bl_data" cell=pc3d01 place_status=fixed)
(inst name="gen_bl_data_pads[1].pad_bl_data" cell=pc3d01 place_status=fixed)
(inst name="gen_bl_data_pads[2].pad_bl_data" cell=pc3d01 place_status=fixed)
(inst name="gen_bl_data_pads[3].pad_bl_data" cell=pc3d01 place_status=fixed)
(inst name="pvdi_VDD_CORE_1" cell=pvdi place_status=fixed)
(inst name="pv0i_VSS_CORE_1" cell=pv0i place_status=fixed)
(inst name="pad_clk" cell=pc3d01 place_status=fixed)
(inst name="pad_rst" cell=pc3d01 place_status=fixed)
)

# ============================================================
# TOP EDGE: Input data [4:7], Power Set 2, Control Pins & VDD 5
# ============================================================
(topright (inst name="corner_top_right" cell=pfrelr offset=0 orientation=R90 place_status=fixed))
(top
(inst name="gen_bl_data_pads[4].pad_bl_data" cell=pc3d01 place_status=fixed)
(inst name="gen_bl_data_pads[5].pad_bl_data" cell=pc3d01 place_status=fixed)
(inst name="gen_bl_data_pads[6].pad_bl_data" cell=pc3d01 place_status=fixed)
(inst name="gen_bl_data_pads[7].pad_bl_data" cell=pc3d01 place_status=fixed)
(inst name="pvdi_VDD_CORE_2" cell=pvdi place_status=fixed)
(inst name="pv0i_VSS_CORE_2" cell=pv0i place_status=fixed)
(inst name="pad_bl_write" cell=pc3d01 place_status=fixed)
)

# ============================================================
# RIGHT EDGE: Output data [0:3], Power Set 3, Output Status
# ============================================================
(bottomright (inst name="corner_bottom_right" cell=pfrelr offset=0 orientation=R0 place_status=fixed))
(right
(inst name="pad_tx" cell=pt3t03u place_status=fixed)
(inst name="pad_bl_ready" cell=pt3t03u place_status=fixed)
(inst name="pad_wave" cell=pt3t03u place_status=fixed)
(inst name="pad_wave1" cell=pt3t03u place_status=fixed)
(inst name="pvdi_VDD_CORE_3" cell=pvdi place_status=fixed)
(inst name="pv0i_VSS_CORE_3" cell=pv0i place_status=fixed)
)

# ============================================================
# BOTTOM EDGE: Remaining Outputs, Power Set 4
# ============================================================
(bottomleft (inst name="corner_bottom_left" cell=pfrelr offset=0 orientation=R270 place_status=fixed))
(bottom
(inst name="pad_wave2" cell=pt3t03u place_status=fixed)
(inst name="pvdi_VDD_CORE_4" cell=pvdi place_status=fixed)
(inst name="pv0i_VSS_CORE_4" cell=pv0i place_status=fixed)
)
)

