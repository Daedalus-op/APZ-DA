set ModuleHierarchy {[{
"Name" : "filter_dut","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_dynamicFilter_32_32_s_fu_36","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "broadcast_U0","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_broadcast_Pipeline_VITIS_LOOP_88_1_fu_48","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_88_1","ID" : "4","Type" : "pipeline"},]},]},
		{"Name" : "parse_filter_config_4_32_U0","ID" : "5","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_419_1_fu_42","ID" : "6","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_419_1","ID" : "7","Type" : "pipeline"},]},
			{"Name" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_445_4_fu_56","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_445_4","ID" : "9","Type" : "pipeline"},]},
			{"Name" : "grp_parse_filter_config_4_32_Pipeline_VITIS_LOOP_467_5_fu_74","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_467_5","ID" : "11","Type" : "pipeline"},]},]},
		{"Name" : "compare_ops_32_U0","ID" : "12","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_compare_ops_32_Pipeline_FILTER_MAIN_LOOP_fu_148","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "FILTER_MAIN_LOOP","ID" : "14","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "bv0c_var_const_cmp_32_s_fu_294","ID" : "15","Type" : "pipeline"},
				{"Name" : "bv1c_var_const_cmp_32_s_fu_304","ID" : "16","Type" : "pipeline"},
				{"Name" : "bv2c_var_const_cmp_32_s_fu_314","ID" : "17","Type" : "pipeline"},
				{"Name" : "bv3c_var_const_cmp_32_s_fu_324","ID" : "18","Type" : "pipeline"},
				{"Name" : "bv0v1_var_var_cmp_32_s_fu_334","ID" : "19","Type" : "pipeline"},
				{"Name" : "bv0v2_var_var_cmp_32_s_fu_343","ID" : "20","Type" : "pipeline"},
				{"Name" : "bv0v3_var_var_cmp_32_s_fu_352","ID" : "21","Type" : "pipeline"},
				{"Name" : "bv1v2_var_var_cmp_32_s_fu_361","ID" : "22","Type" : "pipeline"},
				{"Name" : "bv1v3_var_var_cmp_32_s_fu_370","ID" : "23","Type" : "pipeline"},
				{"Name" : "bv2v3_var_var_cmp_32_s_fu_379","ID" : "24","Type" : "pipeline"},]},]},]},
		{"Name" : "true_table_4_U0","ID" : "25","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_true_table_4_Pipeline_VITIS_LOOP_318_1_TRUE_TABLE_INIT32_fu_52","ID" : "26","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_318_1_TRUE_TABLE_INIT32","ID" : "27","Type" : "pipeline"},]},
			{"Name" : "grp_true_table_4_Pipeline_TRUE_TABLE_READ_fu_60","ID" : "28","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "TRUE_TABLE_READ","ID" : "29","Type" : "pipeline"},]},]},
		{"Name" : "pred_pass_32_U0","ID" : "30","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_pred_pass_32_Pipeline_FILTER_PRED_PASS_fu_52","ID" : "31","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "FILTER_PRED_PASS","ID" : "32","Type" : "pipeline"},]},]},]},]
}]}