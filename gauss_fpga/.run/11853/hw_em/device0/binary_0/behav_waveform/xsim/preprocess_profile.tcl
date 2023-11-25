# Get hier path inside CU (HLS bug)
proc getHierName {cuName} {
  set hierName inst
  if {[get_objects -quiet /emu_wrapper/emu_i/$cuName/$hierName/ap_idle] == {}} {
    set hierName U0
  }
  return $hierName
}

# Check hierarchical name for only 1 CU instance in a Kernel. All the instances will have same namer, either inst or U0 
  set hierName [getHierName gauss_1]
log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_back_substitution_fu_318/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_back_substitution_fu_318/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_back_substitution_fu_318/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_back_substitution_fu_318/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_back_substitution_fu_318/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_back_substitution_fu_318/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_back_substitution_fu_318/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_back_substitution_fu_318/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferA_fu_253/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferA_fu_253/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferA_fu_253/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferA_fu_253/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferA_fu_253/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferA_fu_253/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferA_fu_253/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferA_fu_253/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_A_fu_264/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_A_fu_264/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_A_fu_264/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_A_fu_264/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_A_fu_264/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_A_fu_264/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_A_fu_264/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_A_fu_264/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_A_fu_275/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_A_fu_275/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_A_fu_275/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_A_fu_275/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_A_fu_275/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_A_fu_275/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_A_fu_275/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_A_fu_275/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_B_fu_301/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_B_fu_301/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_B_fu_301/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_B_fu_301/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_B_fu_301/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_B_fu_301/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_B_fu_301/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_compute_B_fu_301/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferB_fu_340/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferB_fu_340/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferB_fu_340/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferB_fu_340/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferB_fu_340/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferB_fu_340/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferB_fu_340/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_bufferB_fu_340/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_B_fu_364/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_B_fu_364/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_B_fu_364/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_B_fu_364/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_B_fu_364/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_B_fu_364/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_B_fu_364/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_store_B_fu_364/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_multipliers_fu_388/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_multipliers_fu_388/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_multipliers_fu_388/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_multipliers_fu_388/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_multipliers_fu_388/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_multipliers_fu_388/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_multipliers_fu_388/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_multipliers_fu_388/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_norm_line_fu_411/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_norm_line_fu_411/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_norm_line_fu_411/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_norm_line_fu_411/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_norm_line_fu_411/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_norm_line_fu_411/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_norm_line_fu_411/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_328/grp_load_norm_line_fu_411/ap_str_blocking_n -time 0 -quiet 

