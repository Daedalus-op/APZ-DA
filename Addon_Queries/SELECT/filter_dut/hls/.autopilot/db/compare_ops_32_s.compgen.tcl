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
    id 75 \
    name cmpvc_cfg_strms_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvc_cfg_strms_0 \
    op interface \
    ports { cmpvc_cfg_strms_0_dout { I 72 vector } cmpvc_cfg_strms_0_num_data_valid { I 3 vector } cmpvc_cfg_strms_0_fifo_cap { I 3 vector } cmpvc_cfg_strms_0_empty_n { I 1 bit } cmpvc_cfg_strms_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name cmpvc_cfg_strms_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvc_cfg_strms_1 \
    op interface \
    ports { cmpvc_cfg_strms_1_dout { I 72 vector } cmpvc_cfg_strms_1_num_data_valid { I 3 vector } cmpvc_cfg_strms_1_fifo_cap { I 3 vector } cmpvc_cfg_strms_1_empty_n { I 1 bit } cmpvc_cfg_strms_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name cmpvc_cfg_strms_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvc_cfg_strms_2 \
    op interface \
    ports { cmpvc_cfg_strms_2_dout { I 72 vector } cmpvc_cfg_strms_2_num_data_valid { I 3 vector } cmpvc_cfg_strms_2_fifo_cap { I 3 vector } cmpvc_cfg_strms_2_empty_n { I 1 bit } cmpvc_cfg_strms_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name cmpvc_cfg_strms_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvc_cfg_strms_3 \
    op interface \
    ports { cmpvc_cfg_strms_3_dout { I 72 vector } cmpvc_cfg_strms_3_num_data_valid { I 3 vector } cmpvc_cfg_strms_3_fifo_cap { I 3 vector } cmpvc_cfg_strms_3_empty_n { I 1 bit } cmpvc_cfg_strms_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name cmpvv_cfg_strms_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_0 \
    op interface \
    ports { cmpvv_cfg_strms_0_dout { I 4 vector } cmpvv_cfg_strms_0_num_data_valid { I 3 vector } cmpvv_cfg_strms_0_fifo_cap { I 3 vector } cmpvv_cfg_strms_0_empty_n { I 1 bit } cmpvv_cfg_strms_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name cmpvv_cfg_strms_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_1 \
    op interface \
    ports { cmpvv_cfg_strms_1_dout { I 4 vector } cmpvv_cfg_strms_1_num_data_valid { I 3 vector } cmpvv_cfg_strms_1_fifo_cap { I 3 vector } cmpvv_cfg_strms_1_empty_n { I 1 bit } cmpvv_cfg_strms_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name cmpvv_cfg_strms_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_2 \
    op interface \
    ports { cmpvv_cfg_strms_2_dout { I 4 vector } cmpvv_cfg_strms_2_num_data_valid { I 3 vector } cmpvv_cfg_strms_2_fifo_cap { I 3 vector } cmpvv_cfg_strms_2_empty_n { I 1 bit } cmpvv_cfg_strms_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name cmpvv_cfg_strms_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_3 \
    op interface \
    ports { cmpvv_cfg_strms_3_dout { I 4 vector } cmpvv_cfg_strms_3_num_data_valid { I 3 vector } cmpvv_cfg_strms_3_fifo_cap { I 3 vector } cmpvv_cfg_strms_3_empty_n { I 1 bit } cmpvv_cfg_strms_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name cmpvv_cfg_strms_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_4 \
    op interface \
    ports { cmpvv_cfg_strms_4_dout { I 4 vector } cmpvv_cfg_strms_4_num_data_valid { I 3 vector } cmpvv_cfg_strms_4_fifo_cap { I 3 vector } cmpvv_cfg_strms_4_empty_n { I 1 bit } cmpvv_cfg_strms_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name cmpvv_cfg_strms_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmpvv_cfg_strms_5 \
    op interface \
    ports { cmpvv_cfg_strms_5_dout { I 4 vector } cmpvv_cfg_strms_5_num_data_valid { I 3 vector } cmpvv_cfg_strms_5_fifo_cap { I 3 vector } cmpvv_cfg_strms_5_empty_n { I 1 bit } cmpvv_cfg_strms_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
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
    id 86 \
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
    id 87 \
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
    id 88 \
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
    id 89 \
    name e_v_strm \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_e_v_strm \
    op interface \
    ports { e_v_strm_dout { I 1 vector } e_v_strm_num_data_valid { I 4 vector } e_v_strm_fifo_cap { I 4 vector } e_v_strm_empty_n { I 1 bit } e_v_strm_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name addr_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_addr_strm \
    op interface \
    ports { addr_strm_din { O 10 vector } addr_strm_num_data_valid { I 4 vector } addr_strm_fifo_cap { I 4 vector } addr_strm_full_n { I 1 bit } addr_strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name e_addr_strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_e_addr_strm \
    op interface \
    ports { e_addr_strm_din { O 1 vector } e_addr_strm_num_data_valid { I 4 vector } e_addr_strm_fifo_cap { I 4 vector } e_addr_strm_full_n { I 1 bit } e_addr_strm_write { O 1 bit } } \
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


