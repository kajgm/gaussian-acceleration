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

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_B_fu_377/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_B_fu_377/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_B_fu_377/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_B_fu_377/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_B_fu_377/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_B_fu_377/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_B_fu_377/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_B_fu_377/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_A_fu_416/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_A_fu_416/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_A_fu_416/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_A_fu_416/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_A_fu_416/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_A_fu_416/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_A_fu_416/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_compute_A_fu_416/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_B_fu_472/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_B_fu_472/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_B_fu_472/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_B_fu_472/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_B_fu_472/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_B_fu_472/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_B_fu_472/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_B_fu_472/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_A_fu_496/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_A_fu_496/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_A_fu_496/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_A_fu_496/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_A_fu_496/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_A_fu_496/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_A_fu_496/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_A_fu_496/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_A_fu_522/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_A_fu_522/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_A_fu_522/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_A_fu_522/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_A_fu_522/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_A_fu_522/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_A_fu_522/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_A_fu_522/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_B_fu_549/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_B_fu_549/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_B_fu_549/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_B_fu_549/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_B_fu_549/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_B_fu_549/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_B_fu_549/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_store_B_fu_549/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_multipliers_fu_573/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_multipliers_fu_573/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_multipliers_fu_573/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_multipliers_fu_573/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_multipliers_fu_573/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_multipliers_fu_573/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_multipliers_fu_573/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_multipliers_fu_573/ap_str_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_norm_line_fu_596/ap_idle
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_norm_line_fu_596/ap_idle -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_norm_line_fu_596/ap_int_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_norm_line_fu_596/ap_int_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_norm_line_fu_596/ap_ext_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_norm_line_fu_596/ap_ext_blocking_n -time 0 -quiet 

log_wave -quiet /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_norm_line_fu_596/ap_str_blocking_n
get_value_database /emu_wrapper/emu_i/gauss_1/$hierName/grp_sub_gauss_fu_3451/grp_load_norm_line_fu_596/ap_str_blocking_n -time 0 -quiet 

