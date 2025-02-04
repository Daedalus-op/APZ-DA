# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
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
    id 150 \
    name k_strms_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k_strms_0 \
    op interface \
    ports { k_strms_0_dout { I 32 vector } k_strms_0_empty_n { I 1 bit } k_strms_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name k_strms_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k_strms_1 \
    op interface \
    ports { k_strms_1_dout { I 32 vector } k_strms_1_empty_n { I 1 bit } k_strms_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name k_strms_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k_strms_2 \
    op interface \
    ports { k_strms_2_dout { I 32 vector } k_strms_2_empty_n { I 1 bit } k_strms_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name k_strms_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_k_strms_3 \
    op interface \
    ports { k_strms_3_dout { I 32 vector } k_strms_3_empty_n { I 1 bit } k_strms_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_strm \
    op interface \
    ports { p_strm_dout { I 32 vector } p_strm_empty_n { I 1 bit } p_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name e_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e_strm \
    op interface \
    ports { e_strm_dout { I 1 vector } e_strm_empty_n { I 1 bit } e_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name f_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_f_strm \
    op interface \
    ports { f_strm_din { O 32 vector } f_strm_full_n { I 1 bit } f_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name e_f_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_e_f_strm \
    op interface \
    ports { e_f_strm_din { O 1 vector } e_f_strm_full_n { I 1 bit } e_f_strm_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


