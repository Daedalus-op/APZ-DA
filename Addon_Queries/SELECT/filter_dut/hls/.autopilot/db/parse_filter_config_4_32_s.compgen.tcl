# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name filter_cfg_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_filter_cfg_strm \
    op interface \
    ports { filter_cfg_strm_dout { I 32 vector } filter_cfg_strm_empty_n { I 1 bit } filter_cfg_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name cmpvc_cfg_strms_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvc_cfg_strms_0 \
    op interface \
    ports { cmpvc_cfg_strms_0_din { O 72 vector } cmpvc_cfg_strms_0_num_data_valid { I 3 vector } cmpvc_cfg_strms_0_fifo_cap { I 3 vector } cmpvc_cfg_strms_0_full_n { I 1 bit } cmpvc_cfg_strms_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name cmpvc_cfg_strms_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvc_cfg_strms_1 \
    op interface \
    ports { cmpvc_cfg_strms_1_din { O 72 vector } cmpvc_cfg_strms_1_num_data_valid { I 3 vector } cmpvc_cfg_strms_1_fifo_cap { I 3 vector } cmpvc_cfg_strms_1_full_n { I 1 bit } cmpvc_cfg_strms_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name cmpvc_cfg_strms_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvc_cfg_strms_2 \
    op interface \
    ports { cmpvc_cfg_strms_2_din { O 72 vector } cmpvc_cfg_strms_2_num_data_valid { I 3 vector } cmpvc_cfg_strms_2_fifo_cap { I 3 vector } cmpvc_cfg_strms_2_full_n { I 1 bit } cmpvc_cfg_strms_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name cmpvc_cfg_strms_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvc_cfg_strms_3 \
    op interface \
    ports { cmpvc_cfg_strms_3_din { O 72 vector } cmpvc_cfg_strms_3_num_data_valid { I 3 vector } cmpvc_cfg_strms_3_fifo_cap { I 3 vector } cmpvc_cfg_strms_3_full_n { I 1 bit } cmpvc_cfg_strms_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name cmpvv_cfg_strms_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_0 \
    op interface \
    ports { cmpvv_cfg_strms_0_din { O 4 vector } cmpvv_cfg_strms_0_num_data_valid { I 3 vector } cmpvv_cfg_strms_0_fifo_cap { I 3 vector } cmpvv_cfg_strms_0_full_n { I 1 bit } cmpvv_cfg_strms_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name cmpvv_cfg_strms_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_1 \
    op interface \
    ports { cmpvv_cfg_strms_1_din { O 4 vector } cmpvv_cfg_strms_1_num_data_valid { I 3 vector } cmpvv_cfg_strms_1_fifo_cap { I 3 vector } cmpvv_cfg_strms_1_full_n { I 1 bit } cmpvv_cfg_strms_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name cmpvv_cfg_strms_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_2 \
    op interface \
    ports { cmpvv_cfg_strms_2_din { O 4 vector } cmpvv_cfg_strms_2_num_data_valid { I 3 vector } cmpvv_cfg_strms_2_fifo_cap { I 3 vector } cmpvv_cfg_strms_2_full_n { I 1 bit } cmpvv_cfg_strms_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name cmpvv_cfg_strms_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_3 \
    op interface \
    ports { cmpvv_cfg_strms_3_din { O 4 vector } cmpvv_cfg_strms_3_num_data_valid { I 3 vector } cmpvv_cfg_strms_3_fifo_cap { I 3 vector } cmpvv_cfg_strms_3_full_n { I 1 bit } cmpvv_cfg_strms_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name cmpvv_cfg_strms_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_4 \
    op interface \
    ports { cmpvv_cfg_strms_4_din { O 4 vector } cmpvv_cfg_strms_4_num_data_valid { I 3 vector } cmpvv_cfg_strms_4_fifo_cap { I 3 vector } cmpvv_cfg_strms_4_full_n { I 1 bit } cmpvv_cfg_strms_4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name cmpvv_cfg_strms_5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_5 \
    op interface \
    ports { cmpvv_cfg_strms_5_din { O 4 vector } cmpvv_cfg_strms_5_num_data_valid { I 3 vector } cmpvv_cfg_strms_5_fifo_cap { I 3 vector } cmpvv_cfg_strms_5_full_n { I 1 bit } cmpvv_cfg_strms_5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name tt_cfg_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_cfg_strm \
    op interface \
    ports { tt_cfg_strm_din { O 32 vector } tt_cfg_strm_num_data_valid { I 3 vector } tt_cfg_strm_fifo_cap { I 3 vector } tt_cfg_strm_full_n { I 1 bit } tt_cfg_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


