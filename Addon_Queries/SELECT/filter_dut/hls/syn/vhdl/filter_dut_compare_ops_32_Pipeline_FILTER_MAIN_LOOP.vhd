-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity filter_dut_compare_ops_32_Pipeline_FILTER_MAIN_LOOP is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    e_v_strm_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    e_v_strm_num_data_valid : IN STD_LOGIC_VECTOR (3 downto 0);
    e_v_strm_fifo_cap : IN STD_LOGIC_VECTOR (3 downto 0);
    e_v_strm_empty_n : IN STD_LOGIC;
    e_v_strm_read : OUT STD_LOGIC;
    k_strms_0_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    k_strms_0_empty_n : IN STD_LOGIC;
    k_strms_0_read : OUT STD_LOGIC;
    k_strms_1_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    k_strms_1_empty_n : IN STD_LOGIC;
    k_strms_1_read : OUT STD_LOGIC;
    k_strms_2_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    k_strms_2_empty_n : IN STD_LOGIC;
    k_strms_2_read : OUT STD_LOGIC;
    k_strms_3_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    k_strms_3_empty_n : IN STD_LOGIC;
    k_strms_3_read : OUT STD_LOGIC;
    addr_strm_din : OUT STD_LOGIC_VECTOR (9 downto 0);
    addr_strm_num_data_valid : IN STD_LOGIC_VECTOR (3 downto 0);
    addr_strm_fifo_cap : IN STD_LOGIC_VECTOR (3 downto 0);
    addr_strm_full_n : IN STD_LOGIC;
    addr_strm_write : OUT STD_LOGIC;
    e_addr_strm_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    e_addr_strm_num_data_valid : IN STD_LOGIC_VECTOR (3 downto 0);
    e_addr_strm_fifo_cap : IN STD_LOGIC_VECTOR (3 downto 0);
    e_addr_strm_full_n : IN STD_LOGIC;
    e_addr_strm_write : OUT STD_LOGIC;
    e : IN STD_LOGIC_VECTOR (0 downto 0);
    empty_18 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln232_1 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln232_2 : IN STD_LOGIC_VECTOR (31 downto 0);
    trunc_ln232_3 : IN STD_LOGIC_VECTOR (31 downto 0);
    empty_19 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln233_1 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln233_2 : IN STD_LOGIC_VECTOR (31 downto 0);
    trunc_ln233_3 : IN STD_LOGIC_VECTOR (31 downto 0);
    empty_20 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln234_1 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln234_2 : IN STD_LOGIC_VECTOR (31 downto 0);
    trunc_ln234_3 : IN STD_LOGIC_VECTOR (31 downto 0);
    empty_21 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln235_1 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln235_2 : IN STD_LOGIC_VECTOR (31 downto 0);
    trunc_ln235_3 : IN STD_LOGIC_VECTOR (31 downto 0);
    empty_22 : IN STD_LOGIC_VECTOR (3 downto 0);
    empty_23 : IN STD_LOGIC_VECTOR (3 downto 0);
    empty_24 : IN STD_LOGIC_VECTOR (3 downto 0);
    empty_25 : IN STD_LOGIC_VECTOR (3 downto 0);
    empty_26 : IN STD_LOGIC_VECTOR (3 downto 0);
    empty : IN STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of filter_dut_compare_ops_32_Pipeline_FILTER_MAIN_LOOP is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_phi_mux_e_3_phi_fu_286_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal e_3_reg_283 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal e_v_strm_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal k_strms_0_blk_n : STD_LOGIC;
    signal k_strms_1_blk_n : STD_LOGIC;
    signal k_strms_2_blk_n : STD_LOGIC;
    signal k_strms_3_blk_n : STD_LOGIC;
    signal addr_strm_blk_n : STD_LOGIC;
    signal e_addr_strm_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal e_4_reg_523 : STD_LOGIC_VECTOR (0 downto 0);
    signal bv0c_var_const_cmp_32_s_fu_294_ap_ready : STD_LOGIC;
    signal bv0c_var_const_cmp_32_s_fu_294_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv1c_var_const_cmp_32_s_fu_304_ap_ready : STD_LOGIC;
    signal bv1c_var_const_cmp_32_s_fu_304_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv2c_var_const_cmp_32_s_fu_314_ap_ready : STD_LOGIC;
    signal bv2c_var_const_cmp_32_s_fu_314_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv3c_var_const_cmp_32_s_fu_324_ap_ready : STD_LOGIC;
    signal bv3c_var_const_cmp_32_s_fu_324_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv0v1_var_var_cmp_32_s_fu_334_ap_ready : STD_LOGIC;
    signal bv0v1_var_var_cmp_32_s_fu_334_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv0v2_var_var_cmp_32_s_fu_343_ap_ready : STD_LOGIC;
    signal bv0v2_var_var_cmp_32_s_fu_343_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv0v3_var_var_cmp_32_s_fu_352_ap_ready : STD_LOGIC;
    signal bv0v3_var_var_cmp_32_s_fu_352_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv1v2_var_var_cmp_32_s_fu_361_ap_ready : STD_LOGIC;
    signal bv1v2_var_var_cmp_32_s_fu_361_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv1v3_var_var_cmp_32_s_fu_370_ap_ready : STD_LOGIC;
    signal bv1v3_var_var_cmp_32_s_fu_370_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal bv2v3_var_var_cmp_32_s_fu_379_ap_ready : STD_LOGIC;
    signal bv2v3_var_var_cmp_32_s_fu_379_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0_ignoreCallOp45 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp46 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp47 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp48 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp49 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp50 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp51 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp52 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp53 : BOOLEAN;
    signal ap_block_pp0_stage0_ignoreCallOp54 : BOOLEAN;
    signal e_v_strm_read_local : STD_LOGIC;
    signal k_strms_0_read_local : STD_LOGIC;
    signal k_strms_1_read_local : STD_LOGIC;
    signal k_strms_2_read_local : STD_LOGIC;
    signal k_strms_3_read_local : STD_LOGIC;
    signal bvec_fu_388_p11 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal addr_strm_write_local : STD_LOGIC;
    signal e_addr_strm_write_local : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_condition_412 : BOOLEAN;
    signal ap_condition_416 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component filter_dut_var_const_cmp_32_s IS
    port (
        ap_ready : OUT STD_LOGIC;
        cfg_lop : IN STD_LOGIC_VECTOR (3 downto 0);
        cfg_rop : IN STD_LOGIC_VECTOR (3 downto 0);
        cfg_l : IN STD_LOGIC_VECTOR (31 downto 0);
        cfg_r : IN STD_LOGIC_VECTOR (31 downto 0);
        xu : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0);
        ap_rst : IN STD_LOGIC );
    end component;


    component filter_dut_var_var_cmp_32_s IS
    port (
        ap_ready : OUT STD_LOGIC;
        cfg : IN STD_LOGIC_VECTOR (3 downto 0);
        xu : IN STD_LOGIC_VECTOR (31 downto 0);
        yu : IN STD_LOGIC_VECTOR (31 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0);
        ap_rst : IN STD_LOGIC );
    end component;


    component filter_dut_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    bv0c_var_const_cmp_32_s_fu_294 : component filter_dut_var_const_cmp_32_s
    port map (
        ap_ready => bv0c_var_const_cmp_32_s_fu_294_ap_ready,
        cfg_lop => empty_18,
        cfg_rop => trunc_ln232_1,
        cfg_l => trunc_ln232_2,
        cfg_r => trunc_ln232_3,
        xu => k_strms_0_dout,
        ap_return => bv0c_var_const_cmp_32_s_fu_294_ap_return,
        ap_rst => ap_rst);

    bv1c_var_const_cmp_32_s_fu_304 : component filter_dut_var_const_cmp_32_s
    port map (
        ap_ready => bv1c_var_const_cmp_32_s_fu_304_ap_ready,
        cfg_lop => empty_19,
        cfg_rop => trunc_ln233_1,
        cfg_l => trunc_ln233_2,
        cfg_r => trunc_ln233_3,
        xu => k_strms_1_dout,
        ap_return => bv1c_var_const_cmp_32_s_fu_304_ap_return,
        ap_rst => ap_rst);

    bv2c_var_const_cmp_32_s_fu_314 : component filter_dut_var_const_cmp_32_s
    port map (
        ap_ready => bv2c_var_const_cmp_32_s_fu_314_ap_ready,
        cfg_lop => empty_20,
        cfg_rop => trunc_ln234_1,
        cfg_l => trunc_ln234_2,
        cfg_r => trunc_ln234_3,
        xu => k_strms_2_dout,
        ap_return => bv2c_var_const_cmp_32_s_fu_314_ap_return,
        ap_rst => ap_rst);

    bv3c_var_const_cmp_32_s_fu_324 : component filter_dut_var_const_cmp_32_s
    port map (
        ap_ready => bv3c_var_const_cmp_32_s_fu_324_ap_ready,
        cfg_lop => empty_21,
        cfg_rop => trunc_ln235_1,
        cfg_l => trunc_ln235_2,
        cfg_r => trunc_ln235_3,
        xu => k_strms_3_dout,
        ap_return => bv3c_var_const_cmp_32_s_fu_324_ap_return,
        ap_rst => ap_rst);

    bv0v1_var_var_cmp_32_s_fu_334 : component filter_dut_var_var_cmp_32_s
    port map (
        ap_ready => bv0v1_var_var_cmp_32_s_fu_334_ap_ready,
        cfg => empty_22,
        xu => k_strms_0_dout,
        yu => k_strms_1_dout,
        ap_return => bv0v1_var_var_cmp_32_s_fu_334_ap_return,
        ap_rst => ap_rst);

    bv0v2_var_var_cmp_32_s_fu_343 : component filter_dut_var_var_cmp_32_s
    port map (
        ap_ready => bv0v2_var_var_cmp_32_s_fu_343_ap_ready,
        cfg => empty_23,
        xu => k_strms_0_dout,
        yu => k_strms_2_dout,
        ap_return => bv0v2_var_var_cmp_32_s_fu_343_ap_return,
        ap_rst => ap_rst);

    bv0v3_var_var_cmp_32_s_fu_352 : component filter_dut_var_var_cmp_32_s
    port map (
        ap_ready => bv0v3_var_var_cmp_32_s_fu_352_ap_ready,
        cfg => empty_24,
        xu => k_strms_0_dout,
        yu => k_strms_3_dout,
        ap_return => bv0v3_var_var_cmp_32_s_fu_352_ap_return,
        ap_rst => ap_rst);

    bv1v2_var_var_cmp_32_s_fu_361 : component filter_dut_var_var_cmp_32_s
    port map (
        ap_ready => bv1v2_var_var_cmp_32_s_fu_361_ap_ready,
        cfg => empty_25,
        xu => k_strms_1_dout,
        yu => k_strms_2_dout,
        ap_return => bv1v2_var_var_cmp_32_s_fu_361_ap_return,
        ap_rst => ap_rst);

    bv1v3_var_var_cmp_32_s_fu_370 : component filter_dut_var_var_cmp_32_s
    port map (
        ap_ready => bv1v3_var_var_cmp_32_s_fu_370_ap_ready,
        cfg => empty_26,
        xu => k_strms_1_dout,
        yu => k_strms_3_dout,
        ap_return => bv1v3_var_var_cmp_32_s_fu_370_ap_return,
        ap_rst => ap_rst);

    bv2v3_var_var_cmp_32_s_fu_379 : component filter_dut_var_var_cmp_32_s
    port map (
        ap_ready => bv2v3_var_var_cmp_32_s_fu_379_ap_ready,
        cfg => empty,
        xu => k_strms_2_dout,
        yu => k_strms_3_dout,
        ap_return => bv2v3_var_var_cmp_32_s_fu_379_ap_return,
        ap_rst => ap_rst);

    flow_control_loop_pipe_sequential_init_U : component filter_dut_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    e_3_reg_283_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if ((ap_const_boolean_1 = ap_condition_416)) then 
                    e_3_reg_283 <= e_4_reg_523;
                elsif (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    e_3_reg_283 <= e;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                e_4_reg_523 <= e_v_strm_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    addr_strm_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, addr_strm_full_n, ap_block_pp0_stage0)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            addr_strm_blk_n <= addr_strm_full_n;
        else 
            addr_strm_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    addr_strm_din <= bvec_fu_388_p11;
    addr_strm_write <= addr_strm_write_local;

    addr_strm_write_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            addr_strm_write_local <= ap_const_logic_1;
        else 
            addr_strm_write_local <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state1_pp0_stage0_iter0, ap_block_state2_pp0_stage0_iter1, ap_start_int)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)) or ((ap_start_int = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state1_pp0_stage0_iter0, ap_block_state2_pp0_stage0_iter1, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)) or ((ap_start_int = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)));
    end process;

        ap_block_pp0_stage0_ignoreCallOp45 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp46 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp47 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp48 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp49 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp50 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp51 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp52 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp53 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_ignoreCallOp54 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state1_pp0_stage0_iter0, ap_block_state2_pp0_stage0_iter1, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1)) or ((ap_start_int = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(e_v_strm_empty_n, ap_phi_mux_e_3_phi_fu_286_p4)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_phi_mux_e_3_phi_fu_286_p4 = ap_const_lv1_0) and (e_v_strm_empty_n = ap_const_logic_0));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(k_strms_0_empty_n, e_3_reg_283, k_strms_1_empty_n, k_strms_2_empty_n, k_strms_3_empty_n, addr_strm_full_n, e_addr_strm_full_n)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((e_addr_strm_full_n = ap_const_logic_0) and (e_3_reg_283 = ap_const_lv1_0)) or ((k_strms_3_empty_n = ap_const_logic_0) and (e_3_reg_283 = ap_const_lv1_0)) or ((k_strms_2_empty_n = ap_const_logic_0) and (e_3_reg_283 = ap_const_lv1_0)) or ((k_strms_1_empty_n = ap_const_logic_0) and (e_3_reg_283 = ap_const_lv1_0)) or ((e_3_reg_283 = ap_const_lv1_0) and (ap_const_logic_0 = addr_strm_full_n)) or ((e_3_reg_283 = ap_const_lv1_0) and (k_strms_0_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_412_assign_proc : process(ap_enable_reg_pp0_iter1, e_3_reg_283, ap_block_pp0_stage0)
    begin
                ap_condition_412 <= ((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0));
    end process;


    ap_condition_416_assign_proc : process(ap_enable_reg_pp0_iter1, e_3_reg_283, ap_block_pp0_stage0_11001)
    begin
                ap_condition_416 <= ((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_phi_mux_e_3_phi_fu_286_p4, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_phi_mux_e_3_phi_fu_286_p4 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_phi_mux_e_3_phi_fu_286_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, e_3_reg_283, e, e_4_reg_523, ap_loop_init, ap_condition_412)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
            if ((ap_const_boolean_1 = ap_condition_412)) then 
                ap_phi_mux_e_3_phi_fu_286_p4 <= e_4_reg_523;
            elsif ((ap_loop_init = ap_const_logic_1)) then 
                ap_phi_mux_e_3_phi_fu_286_p4 <= e;
            else 
                ap_phi_mux_e_3_phi_fu_286_p4 <= e_3_reg_283;
            end if;
        else 
            ap_phi_mux_e_3_phi_fu_286_p4 <= e_3_reg_283;
        end if; 
    end process;

    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    bvec_fu_388_p11 <= (((((((((bv2v3_var_var_cmp_32_s_fu_379_ap_return & bv1v3_var_var_cmp_32_s_fu_370_ap_return) & bv1v2_var_var_cmp_32_s_fu_361_ap_return) & bv0v3_var_var_cmp_32_s_fu_352_ap_return) & bv0v2_var_var_cmp_32_s_fu_343_ap_return) & bv0v1_var_var_cmp_32_s_fu_334_ap_return) & bv3c_var_const_cmp_32_s_fu_324_ap_return) & bv2c_var_const_cmp_32_s_fu_314_ap_return) & bv1c_var_const_cmp_32_s_fu_304_ap_return) & bv0c_var_const_cmp_32_s_fu_294_ap_return);

    e_addr_strm_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, e_addr_strm_full_n, ap_block_pp0_stage0)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            e_addr_strm_blk_n <= e_addr_strm_full_n;
        else 
            e_addr_strm_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    e_addr_strm_din <= ap_const_lv1_0;
    e_addr_strm_write <= e_addr_strm_write_local;

    e_addr_strm_write_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            e_addr_strm_write_local <= ap_const_logic_1;
        else 
            e_addr_strm_write_local <= ap_const_logic_0;
        end if; 
    end process;


    e_v_strm_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, e_v_strm_empty_n, ap_phi_mux_e_3_phi_fu_286_p4, ap_block_pp0_stage0, ap_start_int)
    begin
        if (((ap_phi_mux_e_3_phi_fu_286_p4 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            e_v_strm_blk_n <= e_v_strm_empty_n;
        else 
            e_v_strm_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    e_v_strm_read <= e_v_strm_read_local;

    e_v_strm_read_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_phi_mux_e_3_phi_fu_286_p4, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_phi_mux_e_3_phi_fu_286_p4 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            e_v_strm_read_local <= ap_const_logic_1;
        else 
            e_v_strm_read_local <= ap_const_logic_0;
        end if; 
    end process;


    k_strms_0_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, k_strms_0_empty_n, e_3_reg_283, ap_block_pp0_stage0)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            k_strms_0_blk_n <= k_strms_0_empty_n;
        else 
            k_strms_0_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    k_strms_0_read <= k_strms_0_read_local;

    k_strms_0_read_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k_strms_0_read_local <= ap_const_logic_1;
        else 
            k_strms_0_read_local <= ap_const_logic_0;
        end if; 
    end process;


    k_strms_1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, k_strms_1_empty_n, ap_block_pp0_stage0)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            k_strms_1_blk_n <= k_strms_1_empty_n;
        else 
            k_strms_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    k_strms_1_read <= k_strms_1_read_local;

    k_strms_1_read_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k_strms_1_read_local <= ap_const_logic_1;
        else 
            k_strms_1_read_local <= ap_const_logic_0;
        end if; 
    end process;


    k_strms_2_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, k_strms_2_empty_n, ap_block_pp0_stage0)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            k_strms_2_blk_n <= k_strms_2_empty_n;
        else 
            k_strms_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    k_strms_2_read <= k_strms_2_read_local;

    k_strms_2_read_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k_strms_2_read_local <= ap_const_logic_1;
        else 
            k_strms_2_read_local <= ap_const_logic_0;
        end if; 
    end process;


    k_strms_3_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, k_strms_3_empty_n, ap_block_pp0_stage0)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            k_strms_3_blk_n <= k_strms_3_empty_n;
        else 
            k_strms_3_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    k_strms_3_read <= k_strms_3_read_local;

    k_strms_3_read_local_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, e_3_reg_283, ap_block_pp0_stage0_11001)
    begin
        if (((e_3_reg_283 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            k_strms_3_read_local <= ap_const_logic_1;
        else 
            k_strms_3_read_local <= ap_const_logic_0;
        end if; 
    end process;

end behav;
