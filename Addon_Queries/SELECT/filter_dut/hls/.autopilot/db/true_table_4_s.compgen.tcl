# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler filter_dut_true_table_4_s_truetable_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name tt_cfg_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tt_cfg_strm \
    op interface \
    ports { tt_cfg_strm_dout { I 32 vector } tt_cfg_strm_num_data_valid { I 3 vector } tt_cfg_strm_fifo_cap { I 3 vector } tt_cfg_strm_empty_n { I 1 bit } tt_cfg_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name addr_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_addr_strm \
    op interface \
    ports { addr_strm_dout { I 10 vector } addr_strm_num_data_valid { I 4 vector } addr_strm_fifo_cap { I 4 vector } addr_strm_empty_n { I 1 bit } addr_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name e_addr_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e_addr_strm \
    op interface \
    ports { e_addr_strm_dout { I 1 vector } e_addr_strm_num_data_valid { I 4 vector } e_addr_strm_fifo_cap { I 4 vector } e_addr_strm_empty_n { I 1 bit } e_addr_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name b_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_b_strm \
    op interface \
    ports { b_strm_din { O 1 vector } b_strm_num_data_valid { I 4 vector } b_strm_fifo_cap { I 4 vector } b_strm_full_n { I 1 bit } b_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name e_b_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_e_b_strm \
    op interface \
    ports { e_b_strm_din { O 1 vector } e_b_strm_num_data_valid { I 4 vector } e_b_strm_fifo_cap { I 4 vector } e_b_strm_full_n { I 1 bit } e_b_strm_write { O 1 bit } } \
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


