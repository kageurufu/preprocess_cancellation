; KISSlicer - FREE
; Windows
; version 2 a 2.0.6 Win64
; Built: May 23 2020, 15:05:59
; Running on 24 cores
;
; Saved: 2021-09-03 12:49:09
; 'kisslicer.2.0.6.gcode'
;
; Anti-shrink gain x=1.000000, y=1.000000, z=1.000000
;
; *** Printer Settings ***
;
; printer_name = Test
; profile_date = 2021-09-03 12:48:50
; bed_STL_filename = 
; extension = gcode
; cost_per_hour = 0
; g_code_prefix = 3B205B6D6D5D206D6F64650A4732310A3B204162736F
; ^   6C75746520706F736974696F6E206D6F64650A4739300A3B2052656C
; ^   6174697665204578747275646572206D6F64650A4D38330A3B205374
; ^   6172742068656174696E6720746865204265640A4D31343020533C42
; ^   45443E0A3B20486F6D652074686520617865730A4732380A3B205761
; ^   69742074696C6C2074686520426564206973206865617465640A4D31
; ^   393020533C4245443E0A3B20486561746564206368616D6265722047
; ^   2D636F6465206973206E6F7420756E6976657273616C0A3B4D313431
; ^   20533C424F583E0A3B4D31393120533C424F583E0A
; > Decoded
; >   ; [mm] mode
; >   G21
; >   ; Absolute position mode
; >   G90
; >   ; Relative Extruder mode
; >   M83
; >   ; Start heating the Bed
; >   M140 S<BED>
; >   ; Home the axes
; >   G28
; >   ; Wait till the Bed is heated
; >   M190 S<BED>
; >   ; Heated chamber G-code is not universal
; >   ;M141 S<BOX>
; >   ;M191 S<BOX>
; g_code_preheat = NULL
; > Decoded
; g_code_warm = 3B204865616420746F20746865207374617274206F6620
; ^   746865206E65787420706174680A473120583C4E455854583E20593C
; ^   4E455854593E2046363030300A47342050300A3B2053656C65637420
; ^   74686520546F6F6C20286578747275646572290A543C4558542B303E
; ^   0A3B20436F727265637420706F736974696F6E20666F72206D756C74
; ^   692D6E6F7A7A6C650A473120583C4E455854583E20593C4E45585459
; ^   3E2046363030300A47342050300A3B205365742074656D7020616E64
; ^   207468656E20776169740A4D31303420533C54454D503E0A4D313039
; ^   20533C54454D503E0A3B205055524745204F52205052494D45204845
; ^   524520494620444553495245440A
; > Decoded
; >   ; Head to the start of the next path
; >   G1 X<NEXTX> Y<NEXTY> F6000
; >   G4 P0
; >   ; Select the Tool (extruder)
; >   T<EXT+0>
; >   ; Correct position for multi-nozzle
; >   G1 X<NEXTX> Y<NEXTY> F6000
; >   G4 P0
; >   ; Set temp and then wait
; >   M104 S<TEMP>
; >   M109 S<TEMP>
; >   ; PURGE OR PRIME HERE IF DESIRED
; g_code_same_warm = 3B204D6F766520746F20746865207374617274206
; ^   F6620746865206E65787420706174680A473120583C4E455854583E2
; ^   0593C4E455854593E2046363030300A47342050300A3B2053616D652
; ^   065787472756465722C207761726D20616E6420776169740A4D31303
; ^   420533C54454D503E0A4D31303920533C54454D503E
; > Decoded
; >   ; Move to the start of the next path
; >   G1 X<NEXTX> Y<NEXTY> F6000
; >   G4 P0
; >   ; Same extruder, warm and wait
; >   M104 S<TEMP>
; >   M109 S<TEMP>
; g_code_same_cool = 3B2053616D652065787472756465722C20636F6F6
; ^   C20286E6F2077616974290A47342050300A4D31303420533C54454D5
; ^   03E0A
; > Decoded
; >   ; Same extruder, cool (no wait)
; >   G4 P0
; >   M104 S<TEMP>
; g_code_cool = 3B2053616D652065787472756465722C2061626F757420
; ^   746F20646573656C6563742C206D6179626520726574726163742062
; ^   65666F726520636F6F6C696E6720646F776E0A3B2052455452414354
; ^   204845524520494620594F552057414E540A47342050300A4D313034
; ^   20533C54454D503E0A
; > Decoded
; >   ; Same extruder, about to deselect, maybe retract before
; >    cooling down
; >   ; RETRACT HERE IF YOU WANT
; >   G4 P0
; >   M104 S<TEMP>
; g_code_N_layers = NULL
; > Decoded
; g_code_postfix = 3B20416C6C206578747275646572732061726520726
; ^   574697265640A3B204D6F7665207468652068656164207570202F206
; ^   2656420646F776E0A4739310A4731205A2B31300A4739300A3B20747
; ^   5726E206F666620746865206265642026206368616D62657220286D6
; ^   16368696E65207370656369666963290A4D3134302053300A3B4D313
; ^   4312053300A3B2046494C4C205448495320494E204153204E4545444
; ^   544
; > Decoded
; >   ; All extruders are retired
; >   ; Move the head up / bed down
; >   G91
; >   G1 Z+10
; >   G90
; >   ; turn off the bed & chamber (machine specific)
; >   M140 S0
; >   ;M141 S0
; >   ; FILL THIS IN AS NEEDED
; g_code_pause = 3B205061757365207468656E20526573756D650A3B207
; ^   57375616C6C79204D3020287479706963616C29206F72204D3120286
; ^   C65737320636F6D6D6F6E29206F72204D32323620286C65617374207
; ^   06F727461626C65290A4D300A
; > Decoded
; >   ; Pause then Resume
; >   ; usually M0 (typical) or M1 (less common) or M226 (leas
; >   t portable)
; >   M0
; post_process = NULL
; > Decoded
; printer_ID_string = NULL
; > Decoded
; every_N_layers = 0
; num_extruders = 1
; firmware_type = 1
; add_comments = 1
; enable_equation_parser = 0
; g4p_uses_seconds = 0
; fan_on = M106
; fan_off = M107
; fan_pwm = 1
; arc_export_mode = 0
; add_m101_g10 = 0
; z_speed_mm_per_s = 5
; z_settle_mm = 0
; final_z_min_mm = 0
; bed_size_x_mm = 100
; bed_size_y_mm = 100
; bed_size_z_mm = 100
; ext_radius = 0
; bed_offset_x_mm = 50
; bed_offset_y_mm = 50
; bed_offset_z_mm = 0
; bed_roughness_mm = 0
; round_bed = 0
; slant_Z_angle = -1
; travel_speed_mm_per_s = 150
; rim_speed_mm_per_s = 150
; first_layer_speed_mm_per_s = 20
; dmax_per_layer_mm_per_s = 15
; xy_accel_mm_per_s_per_s = 1500
; xy_steps_per_mm = 200
; lo_speed_top_mm_per_s = 7.5
; lo_speed_perim_mm_per_s = 10
; lo_speed_loops_mm_per_s = 20
; lo_speed_solid_mm_per_s = 25
; lo_speed_sparse_mm_per_s = 30
; hi_speed_top_mm_per_s = 15
; hi_speed_perim_mm_per_s = 20
; hi_speed_loops_mm_per_s = 40
; hi_speed_solid_mm_per_s = 50
; hi_speed_sparse_mm_per_s = 60
; top_raft_speed_mm_per_s = 20
; bottom_raft_speed_mm_per_s = 10
; default_ironing_speed_mm_per_s = 15
; ext_1_mat_name = test
; ext_axis_1 = 0
; ext_gain_1 = 1
; ext_Xoff_1 = 0
; ext_Yoff_1 = 0
; heat_time_coef_1 = 0.0015
; nozzle_dia_1 = 0.4
; nozzle_len_1 = 0
; drive_len_1 = 0
; ext_2_mat_name = test
; ext_axis_2 = 0
; ext_gain_2 = 1
; ext_Xoff_2 = 0
; ext_Yoff_2 = 0
; heat_time_coef_2 = 0.0015
; nozzle_dia_2 = 0.4
; nozzle_len_2 = 0
; drive_len_2 = 0
; ext_3_mat_name = test
; ext_axis_3 = 0
; ext_gain_3 = 1
; ext_Xoff_3 = 0
; ext_Yoff_3 = 0
; heat_time_coef_3 = 0.0015
; nozzle_dia_3 = 0.4
; nozzle_len_3 = 0
; drive_len_3 = 0
; ext_4_mat_name = test
; ext_axis_4 = 0
; ext_gain_4 = 1
; ext_Xoff_4 = 0
; ext_Yoff_4 = 0
; heat_time_coef_4 = 0.0015
; nozzle_dia_4 = 0.4
; nozzle_len_4 = 0
; drive_len_4 = 0
; ext_5_mat_name = test
; ext_axis_5 = 0
; ext_gain_5 = 1
; ext_Xoff_5 = 0
; ext_Yoff_5 = 0
; heat_time_coef_5 = 0.0015
; nozzle_dia_5 = 0.4
; nozzle_len_5 = 0
; drive_len_5 = 0
; ext_6_mat_name = test
; ext_axis_6 = 0
; ext_gain_6 = 1
; ext_Xoff_6 = 0
; ext_Yoff_6 = 0
; heat_time_coef_6 = 0.0015
; nozzle_dia_6 = 0.4
; nozzle_len_6 = 0
; drive_len_6 = 0
; ext_7_mat_name = test
; ext_axis_7 = 0
; ext_gain_7 = 1
; ext_Xoff_7 = 0
; ext_Yoff_7 = 0
; heat_time_coef_7 = 0.0015
; nozzle_dia_7 = 0.4
; nozzle_len_7 = 0
; drive_len_7 = 0
; ext_8_mat_name = test
; ext_axis_8 = 0
; ext_gain_8 = 1
; ext_Xoff_8 = 0
; ext_Yoff_8 = 0
; heat_time_coef_8 = 0.0015
; nozzle_dia_8 = 0.4
; nozzle_len_8 = 0
; drive_len_8 = 0
; ext_9_mat_name = test
; ext_axis_9 = 0
; ext_gain_9 = 1
; ext_Xoff_9 = 0
; ext_Yoff_9 = 0
; heat_time_coef_9 = 0.0015
; nozzle_dia_9 = 0.4
; nozzle_len_9 = 0
; drive_len_9 = 0
; ext_10_mat_name = test
; ext_axis_10 = 0
; ext_gain_10 = 1
; ext_Xoff_10 = 0
; ext_Yoff_10 = 0
; heat_time_coef_10 = 0.0015
; nozzle_dia_10 = 0.4
; nozzle_len_10 = 0
; drive_len_10 = 0
; ext_11_mat_name = test
; ext_axis_11 = 0
; ext_gain_11 = 1
; ext_Xoff_11 = 0
; ext_Yoff_11 = 0
; heat_time_coef_11 = 0.0015
; nozzle_dia_11 = 0.4
; nozzle_len_11 = 0
; drive_len_11 = 0
; ext_12_mat_name = test
; ext_axis_12 = 0
; ext_gain_12 = 1
; ext_Xoff_12 = 0
; ext_Yoff_12 = 0
; heat_time_coef_12 = 0.0015
; nozzle_dia_12 = 0.4
; nozzle_len_12 = 0
; drive_len_12 = 0
; model_ext = 0
; support_ext = 0
; support_body_ext = 0
; raft_ext = 0
; ext_order_optimize = 0
; solid_loop_overlap_fraction = 0.1
; min_seg_len_mm = 0
; z_step_mm = 0
; max_nodes_per_s = 0
; disable_bookend_destring = 0
; cool_purge_vol_mm3 = 0
; cool_purge_dC = 0
;
; *** Material Settings for Extruder 1 ***
;
; material_name = test
; profile_date = 2021-09-03 12:48:50
; g_code_matl = NULL
; > Decoded
; g_code_matl_custom = NULL
; > Decoded
; matl_user_notes = 4D6174657269616C2050726F66696C652057697A61
; ^   72640A3E204D6174657269616C3A20504C410A3E2046696C616D656E
; ^   74206469616D65746572203D20312E3735205B6D6D5D0A3E20457874
; ^   727573696F6E2074656D7065726174757265203D20313935205B435D
; ^   0A
; > Decoded
; >   Material Profile Wizard
; >   > Material: PLA
; >   > Filament diameter = 1.75 [mm]
; >   > Extrusion temperature = 195 [C]
; fan_Z_mm = 1.5
; fan_loops_percent = 40
; fan_inside_percent = 40
; fan_cool_percent = 50
; temperature_C = 195
; keep_warm_C = 146
; first_layer_C = 195
; bed_C = 43
; chamber_C = 0
; preheat_strategy = 3
; flow_min_mm3_per_s = 0.1
; flow_max_mm3_per_s = 10
; flow_cool_mm3_per_s = 1
; destring_length = 1
; preload_factor = 0
; matl_viscosity_over_elasticity_us = 0.75
; last_mm_at_perim_speed = 25
; destring_min_mm = 2.5
; destring_trigger_mm = 10
; preload_speed_mm_per_s = 25
; destring_speed_mm_per_s = 31.25
; Z_lift_mm = 0.05
; Z_lift_arc = 0
; min_layer_time_s = 10
; wipe_mm = 0
; cost_per_cm3 = 0.04
; flowrate_tweak = 1
; fiber_dia_mm = 1.75
; shrink_percent_xy = 0
; shrink_percent_y = 0
; shrink_percent_z = 0
; purge_vol_mm3 = 42
; purge_color_strength = 0.5
; color = 0
;
; *** Style Settings ***
;
; style_name = test
; profile_date = 2021-09-03 12:48:50
; quality_percentage = 50
; layer_thickness_mm = -33
; max_layer_thickness_mm = -67
; first_layer_thickness_mm = -50
; unsupported_stepover_mm = -50
; supported_stepover_mm = -50
; extrusion_width_mm = 0.4
; num_loops = 2.5
; skin_thickness_mm = 0.7
; infill_extrusion_width = 0.5
; infill_density_denominator = 4
; stacked_layers = 1
; use_corners = 1
; force_joint_layers = 0
; ironing_mode = 0
; loops_insideout = 1
; join_perimeter_loop = 1
; infill_st_oct_rnd = 2
; travel_mode = 1
; inset_surface_xy_mm = 0
; seam_jitter_degrees = 0
; seam_depth_scaler = 1
; seam_gap_scaler = 0
; seam_angle_degrees = 45
; crowning_threshold_mm = 0.8
; wipe_offset_mm = 0
; open_base = 0
; monotonic_sweep = 0
;
; *** Support Settings ***
;
; support_name = test
; profile_date = 2021-09-03 12:48:50
; support_sheathe = 0
; support_density = 0
; use_lower_interface = 0
; solid_interface = 0
; support_inflate_mm = 0.4
; support_gap_mm = -100
; interface_gap_mm = -100
; support_angle_deg = 50
; support_z_max_mm = -1
; support_z_min_mm = 0
; sheathe_z_max_mm = 2
; purge_width_gain = 1.5
; raft_mode = 0
; prime_pillar_mode = 4
; pillar_placement = 3
; raft_inflate_mm = 0.8
; raft_hi_stride_mm = 0.8
; raft_hi_thick_mm = 0.2
; raft_hi_width_mm = 0.4
; raft_lo_stride_mm = 1.6
; raft_lo_thick_mm = 0.4
; raft_lo_width_mm = 0.8
; brim_mm = 0
; brim_ht_mm = 0
; brim_gap_mm = 0
; brim_fillet = 0
; interface_band_mm = 0.8
; interface_Z_gap_mm = 0
; first_Z_gap_mm = 0
; raft_interface_layers = 1
; raft_interface_bond = 0
; brim_latch = 0
; interface_angle_deg = 30
; interface_stride_mm = 0.4
; interface_width_mm = 0.42
; interface_1st_layer_width_mm = 0.63
;
; *** Actual Slicing Settings As Used ***
;
; layer_thickness_mm = 0.132
; max_layer_thickness_mm = 0.268
; first_layer_thickness_mm = 0.2
; unsupported_stepover_mm = 0.2
; supported_stepover_mm = 0.2
; extrusion_width = 0.4
; num_ISOs = 2.5
; wall_thickness = 0.7
; infill_style = 5
; support_style = 0
; use_lower_interface = 0
; solid_interface = 0
; support_angle = 49.9
; destring_min_mm = 2.5
; stacked_infill_layers = 1
; raft_style = 0
; raft_sees_prime_paths = 0
; raft_extra_interface_layers = 0
; raft_extra_interface_bond = 0
; brim_latch = 0
; raft_hi_stride_mm = 0
; raft_lo_stride_mm = 0
; oversample_res_mm = 0.125
; crowning_threshold_mm = 0.8
; wipe_offset_mm = 0
; loops_insideout = 1
; join_perimeter_loop = 1
; solid_loop_overlap_fraction = 0.1
; inflate_raft_mm = 0.8
; inflate_support_mm = 0
; model_support_gap_mm = 0.4
; model_interface_gap_mm = 0.4
; brim_mm = 0
; brim_ht_mm = -0
; brim_gap_mm = 0
; infill_st_oct_rnd = 2
; travel_mode = 1
; support_Z_max_mm = 1e+20
; support_Z_min_mm = 0
; support_sheathe_off_main_both_int = 0
; inset_surface_xy_mm = 0
; seam_jitter_degrees = 0
; seam_depth_scaler = 1
; seam_gap_scaler = 0
; seam_angle_degrees = 45
; seam_use_corners = 1
; force_joint_layers = 0
; ironing_mode = 0
; interface_band_mm = 0.8
; skip_N_support_layers = 0
; interface_angle_deg = 30
; interface_stride_mm = 0.4
; printer_z_step_mm = 0
; model_and_int_share_ext = 1
; Speed vs Quality = 0.50
; Top Surface Speed = 11.25
; Perimeter Speed = 15.00
; Loops Speed = 30.00
; Solid Speed = 37.50
; Sparse Speed = 45.00
;
; *** Estimate all extruders at 5.3 [s], Slowing 0.475x to 10.0 [s] ***
; *** G-code Prefix ***
;
; [mm] mode
G21
; Absolute position mode
G90
; Relative Extruder mode
M83
; Start heating the Bed
M140 S43
; Home the axes
G28
; Wait till the Bed is heated
M190 S43
; Heated chamber G-code is not universal
;M141 S0
;M191 S0
;
; *** Main G-code ***
;
; BEGIN_LAYER_OBJECT z=0.263 z_thickness=0.263
;
; *** Selecting and Warming Extruder 1 to 195 C ***
; Head to the start of the next path
G1 X68.400 Y75.674 F6000
G4 P0
; Select the Tool (extruder)
T0
; Correct position for multi-nozzle
G1 X68.400 Y75.674 F6000
G4 P0
; Set temp and then wait
M104 S195
M109 S195
; PURGE OR PRIME HERE IF DESIRED
;
;
; Fan set to Cool value 50%
;
; 'Prime Pillar Path', 0.6 [feed mm/s], 9.5 [head mm/s]
G1 X68.4 Y75.674 Z0.313 E0 F9000
G1 X68.4 Y75.674 Z0.263 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 9.501953, filament speed 0.623381, preload 0.000000
G1 X68.297 Y75.699 E0.00694 F570.1
G1 X67.989 Y75.775 E0.02083
G1 X67.475 Y75.9 E0.03472
G1 X66.552 Y75.89 E0.06053
G1 X65.32 Y75.877 E0.08083
G1 X63.779 Y75.861 E0.10114
G1 X62.344 Y74.462 E0.13149
G1 X62.1 Y73.475 E0.0667
G1 X62.139 Y69.779 E0.24249
G1 X63.538 Y68.344 E0.13149
G1 X64.525 Y68.1 E0.0667
G1 X68.221 Y68.139 E0.2425
G1 X69.656 Y69.538 E0.13148
G1 X69.9 Y70.525 E0.06671
G1 X69.884 Y71.95 E0.09349
G1 X69.87 Y73.173 E0.08021
G1 X69.858 Y74.193 E0.06693
G1 X69.245 Y74.842 E0.05859
G1 X68.803 Y75.311 E0.04231
G1 X68.53 Y75.6 E0.02603
G1 X68.4 Y75.674 E0.00985
; Fan set to Cool value 50%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 9.5 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 9.501953, filament speed 0.000000, preload 0.000000
G1 X67.475 Y75.9 E0 F570.1
G1 X65.2 Y75.9 E0
G1 X65.2 Y75.9 Z0.313 E0 F300
; Fan set to Cool value 50%
;
; 'Loop Path', 0.4 [feed mm/s], 9.5 [head mm/s]
G1 X66.182 Y73.879 E0 F9000
G1 X66.182 Y73.879 Z0.263 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 9.501952, filament speed 0.415588, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F570.1
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.207 Y72.602 E0.02431
G1 X64.11 Y72.052 E0.0244
G1 X64.181 Y71.471 E0.02563
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03012
G1 X65.47 Y70.181 E0.02732
G1 X66.053 Y70.11 E0.0257
G1 X66.602 Y70.208 E0.02439
G1 X67.096 Y70.452 E0.02408
G1 X67.582 Y70.947 E0.03034
G1 X67.855 Y71.604 E0.03113
G1 X67.873 Y72.037 E0.01895
G1 X67.879 Y72.182 E0.00633
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.508198
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.3 [feed mm/s], 7.1 [head mm/s]
G1 X67.877 Y72.197 E0
; head speed 7.126464, filament speed 0.311691, preload 0.000000
G1 X67.866 Y72.272 E0.00332 F427.6
G1 X67.795 Y72.499 E0.01042
G1 X67.675 Y72.882 E0.01752
G1 X67.444 Y73.22 E0.01791
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.013 E0.02554
G1 X66.504 Y74.238 E0.02836
G1 X65.869 Y74.292 E0.02785
G1 X65.135 Y74.134 E0.03287
G1 X64.557 Y73.781 E0.0296
G1 X64.101 Y73.287 E0.0294
G1 X63.817 Y72.721 E0.02767
G1 X63.702 Y72 E0.03195
G1 X63.817 Y71.278 E0.03197
G1 X64.102 Y70.71 E0.02782
G1 X64.605 Y70.178 E0.03201
G1 X65.201 Y69.842 E0.02993
G1 X65.875 Y69.708 E0.03005
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02794
G1 X67.69 Y70.453 E0.02955
G1 X68.08 Y71.014 E0.02987
G1 X68.269 Y71.674 E0.03004
G1 X68.279 Y72.252 E0.02526
G1 X68.106 Y72.93 E0.03063
G1 X67.742 Y73.482 E0.02889
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.214 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02278
G1 X66.454 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00823
G1 X66.197 Y73.877 E0.00332
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X65.151 Y70.586 E0
; Fan set to Cool value 50%
;
; 'Solid Path', 0.4 [feed mm/s], 9.5 [head mm/s]
G1 X65.283 Y70.454 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 9.501952, filament speed 0.415588, preload 0.000000
G1 X65.199 Y70.54 E0.00524 F570.1
G1 X64.949 Y70.798 E0.01572
G1 X64.531 Y71.227 E0.02619
G1 X64.325 Y71.978 E0.03409
G1 X64.34 Y71.963 E0.00093
G1 X65.079 Y71.225 E0.04568
G1 X65.98 Y70.325 E0.05572
G1 X66.482 Y70.387 E0.02211
G1 X66.476 Y70.393 E0.00038
G1 X65.495 Y71.374 E0.06067
; Prepare for Destring
G1 X64.387 Y72.482 E0.0685
G1 X64.558 Y72.876 E0.0188
G1 X66.877 Y70.558 E0.14341
G1 X67.192 Y70.808 E0.01761
G1 X64.808 Y73.192 E0.14748
G1 X65.123 Y73.442 E0.01762
G1 X67.442 Y71.124 E0.14342
G1 X67.613 Y71.519 E0.01881
G1 X66.502 Y72.629 E0.0687
G1 X65.519 Y73.613 E0.06082
G1 X65.532 Y73.614 E0.00058
G1 X66.023 Y73.674 E0.02162
G1 X66.932 Y72.765 E0.05625
G1 X67.675 Y72.022 E0.04598
G1 X67.668 Y72.05 E0.00128
G1 X67.437 Y72.826 E0.03543
G1 X67.037 Y73.225 E0.02469
G1 X66.798 Y73.465 E0.01482
G1 X66.718 Y73.545 E0.00494
; Fan set to Cool value 50%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 9.5 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 9.501953, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X66.718 Y73.545 Z0.313 E0 F300
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.849 Y73.414 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.997506, post = 9.766298
; Dwell time remaining = 0.233702
;
; Post-layer lift
G1 X66.283 Y73.98 Z0.328 E0 F300
; END_LAYER_OBJECT z=0.263
; BEGIN_LAYER_OBJECT z=0.278 z_thickness=0.278
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Prime Pillar Path', 2.1 [feed mm/s], 30.0 [head mm/s]
G1 X42.4 Y75.047 Z0.328 E0 F9000
G1 X42.4 Y75.047 Z0.278 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 30.000000, filament speed 2.080422, preload 0.000000
G1 X42.306 Y74.988 E0.00769 F1800
G1 X42.023 Y74.812 E0.02309
G1 X41.553 Y74.518 E0.03847
G1 X41.3 Y73.475 E0.07448
G1 X41.3 Y72.27 E0.08357
G1 X41.3 Y70.79 E0.10263
G1 X41.3 Y69.035 E0.1217
G1 X41.3 Y64.7 E0.3006
G1 X31.702 Y64.688 E0.66559
G1 X30.753 Y64.118 E0.07676
G1 X30.5 Y63.075 E0.07448
G1 X30.541 Y57.398 E0.39365
G1 X31.398 Y56.541 E0.0841
G1 X37.8 Y56.5 E0.44394
G1 X47.498 Y56.512 E0.67253
G1 X48.447 Y57.082 E0.07676
G1 X48.7 Y58.125 E0.07448
G1 X48.734 Y67.717 E0.66515
G1 X49.1 Y68.91 E0.08651
G1 X49.057 Y74.181 E0.36557
G1 X48.207 Y75.061 E0.08488
G1 X46.264 Y75.075 E0.13471
G1 X44.715 Y75.086 E0.1074
G1 X43.561 Y75.095 E0.08008
G1 X42.8 Y75.1 E0.05276
G1 X42.501 Y75.06 E0.02094
G1 X42.4 Y75.047 E0.00704
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 35.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 35.000000, filament speed 0.000000, preload 0.000000
G1 X41.553 Y74.518 E0 F2100
G1 X41.3 Y73.475 E0
G1 X41.3 Y67.2 E0
G1 X41.3 Y67.2 Z0.328 E0 F300
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 E0 F9000
G1 X46.187 Y73.389 Z0.278 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.374 Y71.94 E0
G1 X45.091 Y71.091 E0
G1 X44.243 Y69.677 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Solid Path', 1.6 [feed mm/s], 35.0 [head mm/s]
G1 X44.193 Y69.726 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 34.999996, filament speed 1.618106, preload 0.000000
G1 X44.098 Y69.826 E0.00639 F2100
G1 X43.811 Y70.125 E0.01916
G1 X43.811 Y70.674 E0.02539
G1 X43.812 Y70.673 E0.00007
G1 X44.211 Y70.282 E0.02582
G1 X44.691 Y69.811 E0.0311
G1 X45.24 Y69.811 E0.02538
G1 X45.239 Y69.812 E0.00007
G1 X44.572 Y70.486 E0.04384
G1 X43.811 Y71.257 E0.05006
G1 X43.811 Y71.806 E0.02539
G1 X43.812 Y71.805 E0.00007
G1 X45.822 Y69.811 E0.13088
G1 X46.371 Y69.811 E0.02539
G1 X46.37 Y69.812 E0.00007
G1 X43.811 Y72.388 E0.16787
G1 X43.811 Y72.937 E0.02539
G1 X43.812 Y72.936 E0.00007
; Prepare for Destring
G1 X46.937 Y69.811 E0.20431
G1 X47.189 Y70.125 E0.01861
G1 X44.125 Y73.189 E0.20033
G1 X44.142 Y73.189 E0.00076
G1 X44.703 Y73.176 E0.02598
G1 X47.189 Y70.69 E0.16252
G1 X47.189 Y70.707 E0.00077
G1 X47.176 Y71.269 E0.02598
G1 X46.158 Y72.287 E0.06658
G1 X45.256 Y73.189 E0.05895
G1 X45.273 Y73.189 E0.00077
G1 X45.835 Y73.176 E0.02597
G1 X46.572 Y72.439 E0.04822
G1 X47.189 Y71.822 E0.04033
G1 X47.189 Y71.838 E0.00077
G1 X47.176 Y72.4 E0.02598
G1 X46.691 Y72.885 E0.03173
G1 X46.4 Y73.177 E0.01903
G1 X46.303 Y73.274 E0.00635
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 35.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 35.000000, filament speed 0.000000, preload 0.000000
G1 X46.303 Y73.274 Z0.328 E0 F300
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y71.374 E0
G1 X45.657 Y70.525 E0
G1 X45.374 Y67.786 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z0.278 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.0071 F1350
G1 X44.507 Y62.388 E0.02129
G1 X43.739 Y62.388 E0.03549
G1 X42.664 Y62.388 E0.04968
G1 X42.61 Y62.185 E0.00968
G1 X42.61 Y60.585 E0.07399
G1 X42.61 Y58.61 E0.0913
G1 X44.011 Y58.613 E0.06473
G1 X45.233 Y58.616 E0.05652
G1 X46.278 Y58.618 E0.04831
G1 X46.388 Y58.674 E0.00568
G1 X46.388 Y59.745 E0.04949
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.0212
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.497 Y62.788 E0.05336
G1 X44.051 Y62.788 E0.06683
G1 X42.314 Y62.788 E0.0803
G1 X42.274 Y62.774 E0.00195
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00694
G1 X42.208 Y58.275 E0.19974
G1 X42.217 Y58.242 E0.0016
G1 X42.242 Y58.218 E0.00159
G1 X42.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.20362
G1 X46.753 Y58.257 E0.00389
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08336
G1 X46.783 Y61.609 E0.06889
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01467
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X43.111 Y60.06 E0
G1 X42.828 Y59.212 E0
G1 X42.828 Y59.212 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Solid Path', 1.6 [feed mm/s], 35.0 [head mm/s]
G1 X42.773 Y59.321 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 34.999996, filament speed 1.618106, preload 0.000000
G1 X42.905 Y59.193 E0.00847 F2100
G1 X43.3 Y58.811 E0.02542
G1 X43.849 Y58.811 E0.02539
G1 X43.849 Y58.811 E0.00003
G1 X43.379 Y59.288 E0.03093
G1 X42.812 Y59.864 E0.03739
G1 X42.812 Y60.414 E0.02539
G1 X42.825 Y60.4 E0.00088
G1 X43.577 Y59.657 E0.04887
G1 X44.431 Y58.811 E0.05559
G1 X44.98 Y58.811 E0.02538
G1 X44.98 Y58.811 E0.00004
G1 X42.812 Y60.996 E0.14229
G1 X42.812 Y61.545 E0.02538
G1 X42.825 Y61.531 E0.00089
G1 X45.548 Y58.811 E0.17793
; Prepare for Destring
G1 X46.07 Y58.852 E0.02423
G1 X46.061 Y58.862 E0.00064
G1 X42.853 Y62.069 E0.2097
G1 X42.861 Y62.071 E0.00036
G1 X43.3 Y62.188 E0.02102
G1 X46.188 Y59.3 E0.18884
G1 X46.188 Y59.316 E0.00077
G1 X46.177 Y59.877 E0.02593
G1 X43.865 Y62.188 E0.15112
G1 X43.882 Y62.188 E0.00076
G1 X44.444 Y62.176 E0.02599
G1 X45.37 Y61.249 E0.06057
G1 X46.188 Y60.431 E0.05349
G1 X46.188 Y60.448 E0.00076
G1 X46.177 Y61.009 E0.02594
G1 X45.534 Y61.652 E0.04204
G1 X44.997 Y62.188 E0.0351
G1 X45.014 Y62.188 E0.00081
G1 X45.585 Y62.166 E0.0264
G1 X45.967 Y61.784 E0.02501
G1 X46.197 Y61.554 E0.015
G1 X46.273 Y61.478 E0.005
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 35.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 35.000000, filament speed 0.000000, preload 0.000000
G1 X46.273 Y61.478 Z0.328 E0 F300
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y61.475 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X43.394 Y61.475 E0
G1 X42.546 Y61.757 E0
G1 X41.544 Y62.04 E0
G1 X37.596 Y62.182 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z0.278 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.0071 F1350
G1 X34.512 Y62.388 E0.02132
G1 X33.744 Y62.388 E0.03552
G1 X32.668 Y62.388 E0.04973
G1 X32.61 Y62.183 E0.00982
G1 X32.61 Y60.584 E0.07396
G1 X32.61 Y58.61 E0.09124
G1 X34.012 Y58.613 E0.06482
G1 X35.236 Y58.616 E0.05659
G1 X36.282 Y58.618 E0.04835
G1 X36.388 Y58.681 E0.00568
G1 X36.388 Y59.75 E0.04946
G1 X36.388 Y60.515 E0.03533
G1 X36.388 Y60.973 E0.0212
G1 X36.388 Y61.126 E0.00709
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X36.388 Y61.315 E0.00269 F900
G1 X36.393 Y61.65 E0.0155
G1 X36.402 Y62.283 E0.02927
G1 X36.786 Y62.786 E0.02924
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05436
G1 X34.118 Y62.788 E0.06879
G1 X32.318 Y62.788 E0.08322
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.218 E0.0016
G1 X32.276 Y58.209 E0.00159
G1 X36.684 Y58.217 E0.20379
G1 X36.757 Y58.264 E0.00404
G1 X36.78 Y58.288 E0.00153
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08327
G1 X36.788 Y61.609 E0.06881
G1 X36.788 Y62.785 E0.05436
G1 X36.788 Y62.786 E0.00003
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.782 Y62.785 E0.00018
G1 X36.277 Y62.401 E0.02931
G1 X35.649 Y62.392 E0.02904
G1 X35.316 Y62.388 E0.01543
G1 X35.256 Y62.388 E0.00274
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.202 Y59.636 E0
G1 X33.777 Y58.646 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Solid Path', 1.6 [feed mm/s], 35.0 [head mm/s]
G1 X33.698 Y58.726 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 34.999996, filament speed 1.618106, preload 0.000000
G1 X33.599 Y58.826 E0.0065 F2100
G1 X33.304 Y59.127 E0.01951
G1 X32.811 Y59.629 E0.03251
G1 X32.811 Y60.178 E0.02538
G1 X32.824 Y60.166 E0.00083
G1 X33.448 Y59.548 E0.0406
G1 X34.195 Y58.811 E0.04853
G1 X34.744 Y58.811 E0.02538
G1 X34.732 Y58.823 E0.00083
G1 X33.83 Y59.733 E0.05922
G1 X32.811 Y60.76 E0.06689
G1 X32.811 Y61.31 E0.02539
G1 X32.824 Y61.297 E0.00083
G1 X35.326 Y58.811 E0.1631
G1 X35.876 Y58.811 E0.02538
G1 X35.863 Y58.823 E0.00083
; Prepare for Destring
G1 X32.811 Y61.875 E0.19954
G1 X33.063 Y62.188 E0.0186
G1 X36.189 Y59.063 E0.20435
G1 X36.189 Y59.08 E0.00076
G1 X36.188 Y59.63 E0.02544
G1 X33.629 Y62.188 E0.16729
G1 X33.646 Y62.188 E0.00077
G1 X34.196 Y62.187 E0.02543
G1 X36.189 Y60.194 E0.13032
G1 X36.189 Y60.211 E0.00076
G1 X36.188 Y60.761 E0.02544
G1 X35.427 Y61.522 E0.04973
G1 X34.761 Y62.188 E0.04359
G1 X34.777 Y62.188 E0.00077
G1 X35.327 Y62.187 E0.02543
G1 X35.798 Y61.717 E0.03076
G1 X36.189 Y61.326 E0.02558
G1 X36.189 Y61.342 E0.00077
G1 X36.188 Y61.893 E0.02545
G1 X35.903 Y62.178 E0.01864
G1 X35.807 Y62.273 E0.00624
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 35.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 35.000000, filament speed 0.000000, preload 0.000000
G1 X35.807 Y62.273 Z0.328 E0 F300
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.757 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.713 Y62.594 E0
G1 X36.739 Y62.609 E0
G1 X36.756 Y62.634 E0
G1 X37.197 Y63.762 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Prime Pillar Path', 2.1 [feed mm/s], 30.0 [head mm/s]
G1 X30.1 Y35 E0
G1 X30.1 Y35 Z0.278 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 30.000000, filament speed 2.080422, preload 0.000000
G1 X30.1 Y34.847 E0.01061 F1800
G1 X30.101 Y34.388 E0.03184
G1 X30.102 Y33.623 E0.05305
G1 X30.104 Y32.552 E0.07428
G1 X30.106 Y31.174 E0.09551
G1 X30.109 Y29.491 E0.11673
G1 X30.112 Y27.502 E0.13795
G1 X30.682 Y26.553 E0.07675
G1 X31.725 Y26.3 E0.07448
G1 X37.002 Y26.341 E0.36591
G1 X37.859 Y27.198 E0.0841
G1 X37.9 Y33.6 E0.44395
G1 X37.888 Y42.898 E0.64479
G1 X37.318 Y43.847 E0.07676
G1 X36.275 Y44.1 E0.07448
G1 X30.998 Y44.059 E0.3659
G1 X30.141 Y43.202 E0.08411
G1 X30.128 Y41.167 E0.14111
G1 X30.117 Y39.422 E0.12103
G1 X30.107 Y37.966 E0.10095
G1 X30.1 Y36.8 E0.08085
G1 X30.1 Y35.8 E0.06935
G1 X30.1 Y35.2 E0.04161
G1 X30.1 Y35 E0.01387
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 35.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 35.000000, filament speed 0.000000, preload 0.000000
G1 X30.1 Y29.4 E0 F2100
G1 X30.1 Y29.4 Z0.328 E0 F300
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0 F9000
G1 X32.112 Y40.654 Z0.278 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.0071 F1350
G1 X32.114 Y40.04 E0.02131
G1 X32.116 Y39.272 E0.03551
G1 X32.118 Y38.196 E0.04971
G1 X32.224 Y38.112 E0.00625
G1 X33.822 Y38.115 E0.07387
G1 X35.801 Y38.119 E0.09152
G1 X35.889 Y38.219 E0.00616
G1 X35.885 Y40.204 E0.09174
G1 X35.882 Y41.803 E0.07393
G1 X35.777 Y41.889 E0.00627
G1 X34.714 Y41.889 E0.04918
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.971 E0.0533
G1 X31.708 Y39.54 E0.0662
G1 X31.709 Y37.829 E0.07908
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00132
G1 X31.796 Y37.724 E0.00389
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00109
G1 X36.188 Y37.711 E0.20105
G1 X36.226 Y37.722 E0.00182
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00538
G1 X36.291 Y42.19 E0.20011
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00188
G1 X36.132 Y42.292 E0.00557
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.849 Y38.111 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Solid Path', 1.6 [feed mm/s], 35.0 [head mm/s]
G1 X34.976 Y38.239 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 34.999996, filament speed 1.618106, preload 0.000000
G1 X35.055 Y38.32 E0.00523 F2100
G1 X35.292 Y38.563 E0.01571
G1 X35.688 Y38.967 E0.02617
G1 X35.688 Y39.516 E0.02539
G1 X35.678 Y39.507 E0.00063
G1 X35.127 Y38.963 E0.03578
G1 X34.467 Y38.312 E0.04287
G1 X33.918 Y38.312 E0.02539
G1 X33.929 Y38.323 E0.00071
G1 X34.754 Y39.156 E0.05419
G1 X35.688 Y40.099 E0.06137
G1 X35.688 Y40.648 E0.02539
G1 X35.678 Y40.638 E0.00063
G1 X33.336 Y38.312 E0.15263
G1 X32.787 Y38.312 E0.02538
G1 X32.798 Y38.323 E0.00072
; Prepare for Destring
G1 X35.688 Y41.214 E0.18901
G1 X35.597 Y41.688 E0.0223
G1 X35.593 Y41.685 E0.00023
G1 X32.312 Y38.403 E0.21455
G1 X32.312 Y38.42 E0.00076
G1 X32.322 Y38.979 E0.02584
G1 X35.031 Y41.688 E0.17716
G1 X35.015 Y41.688 E0.00077
G1 X34.46 Y41.682 E0.02567
G1 X32.312 Y39.535 E0.14041
G1 X32.312 Y39.551 E0.00076
G1 X32.322 Y40.11 E0.02584
G1 X33.161 Y40.949 E0.05489
G1 X33.9 Y41.688 E0.0483
G1 X33.883 Y41.688 E0.00077
G1 X33.328 Y41.682 E0.02566
G1 X32.774 Y41.128 E0.03625
G1 X32.312 Y40.666 E0.0302
G1 X32.313 Y40.685 E0.0009
G1 X32.349 Y41.269 E0.02702
G1 X32.727 Y41.647 E0.02471
G1 X32.853 Y41.773 E0.00826
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 35.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 35.000000, filament speed 0.000000, preload 0.000000
G1 X32.853 Y41.773 Z0.328 E0 F300
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.869 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y39.808 E0
G1 X32.303 Y38.96 E0
G1 X32.02 Y36.22 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z0.278 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00712 F1350
G1 X32.114 Y30.045 E0.02135
G1 X32.116 Y29.275 E0.03558
G1 X32.118 Y28.198 E0.04982
G1 X32.223 Y28.111 E0.00626
G1 X33.82 Y28.112 E0.07385
G1 X35.799 Y28.112 E0.09148
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y30.208 E0.09153
G1 X35.882 Y31.804 E0.0738
G1 X35.776 Y31.888 E0.00626
G1 X34.711 Y31.888 E0.04926
G1 X33.95 Y31.888 E0.03518
G1 X33.493 Y31.888 E0.02111
G1 X33.341 Y31.888 E0.00704
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X33.246 Y31.888 E0.00433 F900
G1 X32.867 Y31.893 E0.01752
G1 X32.197 Y31.9 E0.03098
G1 X31.709 Y32.2 E0.02644
G1 X31.709 Y32.2 E0.00003
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00004
G1 X31.708 Y32.197 E0.00011
G1 X31.708 Y31.033 E0.05378
G1 X31.709 Y29.571 E0.0676
G1 X31.71 Y27.81 E0.08142
G1 X31.722 Y27.771 E0.00188
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00133
G1 X36.277 Y27.796 E0.00387
G1 X36.288 Y27.816 E0.00109
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.20029
G1 X36.285 Y32.199 E0.00132
G1 X36.268 Y32.222 E0.00133
G1 X36.204 Y32.276 E0.00389
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00108
G1 X34.428 Y32.289 E0.08008
G1 X32.983 Y32.286 E0.06683
G1 X31.824 Y32.284 E0.05357
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00115
G1 X31.741 Y32.231 E0.00241
G1 X31.725 Y32.206 E0.00138
G1 X31.723 Y32.176 E0.00139
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02286
G1 X32.112 Y31.578 E0.0092
G1 X32.112 Y31.061 E0.02388
G1 X32.112 Y30.757 E0.01405
G1 X32.112 Y30.666 E0.00425
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.283 Y28.495 E0
G1 X35.131 Y28.212 E0
G1 X35.131 Y28.212 E0
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 45%
;
; 'Solid Path', 1.6 [feed mm/s], 35.0 [head mm/s]
G1 X35.147 Y28.227 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 34.999996, filament speed 1.618106, preload 0.000000
G1 X35.275 Y28.36 E0.00855 F2100
G1 X35.66 Y28.759 E0.02565
G1 X35.688 Y29.334 E0.02661
G1 X35.677 Y29.323 E0.00071
G1 X35.21 Y28.863 E0.03031
G1 X34.649 Y28.312 E0.03636
G1 X34.1 Y28.312 E0.02539
G1 X34.106 Y28.318 E0.0004
G1 X34.846 Y29.066 E0.04865
G1 X35.688 Y29.916 E0.05532
G1 X35.688 Y30.466 E0.02539
G1 X35.678 Y30.456 E0.00063
G1 X33.518 Y28.312 E0.14072
G1 X32.969 Y28.312 E0.02539
G1 X32.975 Y28.318 E0.00039
G1 X35.688 Y31.048 E0.17795
; Prepare for Destring
G1 X35.688 Y31.597 E0.02538
G1 X35.678 Y31.587 E0.00064
G1 X32.403 Y28.312 E0.21414
G1 X32.401 Y28.322 E0.00049
G1 X32.312 Y28.787 E0.02188
G1 X35.213 Y31.688 E0.18966
G1 X35.197 Y31.688 E0.00077
G1 X34.637 Y31.677 E0.02589
G1 X32.312 Y29.352 E0.152
G1 X32.312 Y29.369 E0.00077
G1 X32.322 Y29.928 E0.02584
G1 X33.257 Y30.863 E0.06112
G1 X34.082 Y31.688 E0.05397
G1 X34.065 Y31.688 E0.00076
G1 X33.505 Y31.677 E0.0259
G1 X32.855 Y31.026 E0.04254
G1 X32.312 Y30.484 E0.03549
G1 X32.312 Y30.5 E0.00076
G1 X32.322 Y31.059 E0.02584
G1 X32.712 Y31.449 E0.02549
G1 X32.946 Y31.683 E0.01531
G1 X33.024 Y31.761 E0.00513
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 35.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 35.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X33.024 Y31.761 Z0.328 E0 F300
; Blending Fan to Cool (49.5% blend)
; Blended Fan at 25%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y37.546 E0
G1 X32.869 Y38.394 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 25.154301, post = 21.310736
; Dwell time remaining = -11.310736
;
; Post-layer lift
G1 X32.303 Y40.657 Z0.576 E0 F300
; END_LAYER_OBJECT z=0.278
; *** Estimate all extruders at 3.2 [s], Slowing 0.231x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=0.526 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 5.2 [head mm/s]
G1 X66.182 Y73.879 Z0.576 E0 F9000
G1 X66.182 Y73.879 Z0.526 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 5.196533, filament speed 0.227281, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F311.8
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.2 [feed mm/s], 3.5 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 3.464355, filament speed 0.151521, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F207.9
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.9 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 6.928711, filament speed 0.303042, preload 0.000000
G1 X66.948 Y73.125 E0.00553 F415.7
G1 X66.642 Y73.349 E0.0166
G1 X66.135 Y73.487 E0.023
G1 X65.637 Y73.452 E0.02183
G1 X65.109 Y73.199 E0.02562
G1 X64.754 Y72.818 E0.02275
G1 X64.547 Y72.351 E0.02235
G1 X64.518 Y71.804 E0.02393
G1 X64.682 Y71.299 E0.02326
G1 X65.017 Y70.875 E0.02361
G1 X65.485 Y70.598 E0.02383
G1 X66.055 Y70.504 E0.02526
G1 X66.578 Y70.623 E0.02347
G1 X67.032 Y70.919 E0.02367
G1 X67.35 Y71.36 E0.02381
G1 X67.49 Y71.876 E0.02339
G1 X67.432 Y72.428 E0.02427
G1 X67.172 Y72.919 E0.02427
G1 X67.051 Y73.051 E0.00785
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X65.434 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Solid Path', 0.4 [feed mm/s], 8.7 [head mm/s]
G1 X65.626 Y73.053 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.660889, filament speed 0.378802, preload 0.000000
; Prepare for Destring
G1 X65.559 Y72.985 E0.00417 F519.7
G1 X65.36 Y72.779 E0.01253
G1 X65.028 Y72.437 E0.02087
G1 X64.936 Y71.798 E0.02821
G1 X64.95 Y71.812 E0.00086
G1 X65.516 Y72.378 E0.03501
G1 X66.202 Y73.063 E0.04238
G1 X66.606 Y72.902 E0.01903
G1 X65.894 Y72.19 E0.04401
G1 X65.098 Y71.394 E0.04925
G1 X65.378 Y71.109 E0.0175
G1 X66.177 Y71.907 E0.04938
G1 X66.891 Y72.622 E0.04421
G1 X67.06 Y72.225 E0.01886
G1 X66.357 Y71.521 E0.04351
G1 X65.775 Y70.94 E0.03597
G1 X65.799 Y70.943 E0.00105
G1 X66.424 Y71.024 E0.02759
G1 X66.786 Y71.385 E0.02234
G1 X67.002 Y71.602 E0.0134
G1 X67.075 Y71.674 E0.00449
; Fan set to Cool value 50%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 10.4 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 10.393066, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X67.075 Y71.674 Z0.576 E0 F300
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.849 Y71.717 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.999209, post = 9.831768
; Dwell time remaining = 0.168232
;
; Post-layer lift
G1 X66.283 Y73.98 Z0.606 E0 F300
; END_LAYER_OBJECT z=0.526
; BEGIN_LAYER_OBJECT z=0.556 z_thickness=0.278
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z0.606 E0 F9000
G1 X46.187 Y73.389 Z0.556 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X46.989 Y72.989 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X46.81 Y72.989 E0.0083 F1800
G1 X46.271 Y72.987 E0.02489
G1 X45.374 Y72.985 E0.04148
G1 X44.118 Y72.981 E0.05807
G1 X44.012 Y72.918 E0.00571
G1 X44.012 Y71.587 E0.06154
G1 X44.012 Y70.012 E0.07282
G1 X45.592 Y70.012 E0.07307
G1 X46.927 Y70.012 E0.06171
G1 X46.989 Y70.18 E0.00828
G1 X46.989 Y71.409 E0.05681
G1 X46.989 Y72.286 E0.04059
G1 X46.989 Y72.813 E0.02436
G1 X46.989 Y72.989 E0.00813
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.091 Y72.788 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X44.963 Y72.66 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.733684, preload 0.000000
; Prepare for Destring
G1 X44.901 Y72.596 E0.00413 F2250
G1 X44.714 Y72.403 E0.0124
G1 X44.403 Y72.082 E0.02066
G1 X44.392 Y71.524 E0.02583
G1 X44.406 Y71.538 E0.00092
G1 X44.9 Y72.023 E0.032
G1 X45.492 Y72.607 E0.03846
G1 X46.041 Y72.607 E0.02539
G1 X46.03 Y72.595 E0.00078
G1 X45.263 Y71.821 E0.05036
G1 X44.392 Y70.941 E0.05722
G1 X44.392 Y70.392 E0.02539
G1 X44.406 Y70.406 E0.00088
G1 X46.607 Y72.607 E0.14393
G1 X46.607 Y72.591 E0.00076
G1 X46.606 Y72.04 E0.02546
G1 X45.729 Y71.164 E0.05729
G1 X44.958 Y70.392 E0.05043
G1 X44.975 Y70.392 E0.00076
G1 X45.537 Y70.406 E0.02602
G1 X46.121 Y70.99 E0.03817
G1 X46.607 Y71.476 E0.03179
G1 X46.606 Y71.456 E0.00092
G1 X46.563 Y70.866 E0.02734
G1 X46.152 Y70.455 E0.02688
G1 X46.015 Y70.318 E0.00896
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.015 Y70.318 Z0.606 E0 F300
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y70.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.474 Y69.282 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.355 Y62.87 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z0.556 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.0071 F1350
G1 X44.507 Y62.388 E0.02129
G1 X43.739 Y62.388 E0.03549
G1 X42.664 Y62.388 E0.04968
G1 X42.61 Y62.185 E0.00968
G1 X42.61 Y60.585 E0.07399
G1 X42.61 Y58.61 E0.0913
G1 X44.011 Y58.613 E0.06473
G1 X45.233 Y58.616 E0.05652
G1 X46.278 Y58.618 E0.0483
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04949
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.0212
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.497 Y62.788 E0.05336
G1 X44.051 Y62.788 E0.06683
G1 X42.314 Y62.788 E0.0803
G1 X42.274 Y62.774 E0.00195
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00694
G1 X42.208 Y58.275 E0.19974
G1 X42.217 Y58.242 E0.0016
G1 X42.242 Y58.218 E0.00159
G1 X42.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.20362
G1 X46.753 Y58.257 E0.00389
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08336
G1 X46.783 Y61.609 E0.06889
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01467
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X45.799 Y61.988 E0.00844 F1800
G1 X45.251 Y61.988 E0.02533
G1 X44.338 Y61.988 E0.04222
G1 X43.059 Y61.988 E0.05911
G1 X43.011 Y61.738 E0.01175
G1 X43.011 Y60.479 E0.0582
G1 X43.011 Y59.011 E0.0679
G1 X44.563 Y59.015 E0.07174
G1 X45.878 Y59.019 E0.06082
G1 X45.988 Y59.076 E0.00572
G1 X45.985 Y60.349 E0.05888
G1 X45.983 Y61.259 E0.04207
G1 X45.982 Y61.805 E0.02525
G1 X45.982 Y61.988 E0.00844
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X43.394 Y60.909 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X43.308 Y60.903 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.733684, preload 0.000000
; Prepare for Destring
G1 X43.386 Y60.98 E0.00507 F2250
G1 X43.622 Y61.21 E0.01523
G1 X44.015 Y61.593 E0.02537
G1 X44.578 Y61.608 E0.02601
G1 X44.566 Y61.595 E0.0008
G1 X44.032 Y61.054 E0.03515
G1 X43.393 Y60.406 E0.04207
G1 X43.393 Y59.857 E0.02539
G1 X43.4 Y59.864 E0.00049
G1 X44.218 Y60.682 E0.05344
G1 X45.144 Y61.607 E0.06053
G1 X45.552 Y61.451 E0.02024
G1 X43.548 Y59.447 E0.13104
G1 X43.562 Y59.445 E0.00066
G1 X44.059 Y59.392 E0.02309
G1 X44.884 Y60.217 E0.05392
G1 X45.607 Y60.94 E0.04731
G1 X45.607 Y60.924 E0.00077
G1 X45.598 Y60.365 E0.02583
G1 X45.066 Y59.833 E0.0348
G1 X44.625 Y59.392 E0.02882
G1 X44.641 Y59.392 E0.00077
G1 X45.191 Y59.392 E0.02539
G1 X45.532 Y59.734 E0.02235
G1 X45.646 Y59.848 E0.00745
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.646 Y59.848 Z0.606 E0 F300
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y59.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.243 Y60.626 E0
G1 X43.394 Y60.909 E0
G1 X42.044 Y61.475 E0
G1 X37.7 Y61.58 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z0.556 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.0071 F1350
G1 X34.512 Y62.388 E0.02132
G1 X33.744 Y62.388 E0.03552
G1 X32.668 Y62.388 E0.04973
G1 X32.61 Y62.183 E0.00982
G1 X32.61 Y60.584 E0.07396
G1 X32.61 Y58.61 E0.09124
G1 X34.012 Y58.613 E0.06482
G1 X35.236 Y58.616 E0.05659
G1 X36.282 Y58.618 E0.04835
G1 X36.388 Y58.681 E0.00568
G1 X36.388 Y59.75 E0.04946
G1 X36.388 Y60.515 E0.03533
G1 X36.388 Y60.973 E0.0212
G1 X36.388 Y61.126 E0.00709
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X36.388 Y61.315 E0.00269 F900
G1 X36.393 Y61.65 E0.0155
G1 X36.402 Y62.283 E0.02927
G1 X36.786 Y62.786 E0.02924
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05436
G1 X34.118 Y62.788 E0.06879
G1 X32.318 Y62.788 E0.08322
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.218 E0.0016
G1 X32.276 Y58.209 E0.00159
G1 X36.684 Y58.217 E0.20379
G1 X36.757 Y58.264 E0.00404
G1 X36.78 Y58.288 E0.00153
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08327
G1 X36.788 Y61.609 E0.06881
G1 X36.788 Y62.785 E0.05436
G1 X36.788 Y62.786 E0.00003
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.782 Y62.785 E0.00017
G1 X36.277 Y62.401 E0.02932
G1 X35.649 Y62.392 E0.02904
G1 X35.316 Y62.388 E0.01543
G1 X35.256 Y62.388 E0.00274
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.04 Y62.04 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X35.988 Y61.988 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X35.806 Y61.988 E0.00842 F1800
G1 X35.259 Y61.988 E0.02526
G1 X34.349 Y61.988 E0.04211
G1 X33.074 Y61.988 E0.05894
G1 X33.011 Y61.821 E0.00825
G1 X33.011 Y60.528 E0.05976
G1 X33.011 Y59.01 E0.07017
G1 X34.565 Y59.015 E0.07186
G1 X35.882 Y59.019 E0.06089
G1 X35.988 Y59.082 E0.00572
G1 X35.988 Y60.353 E0.05875
G1 X35.988 Y61.261 E0.04198
G1 X35.988 Y61.806 E0.02519
G1 X35.988 Y61.988 E0.00841
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.04 Y62.04 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.06 Y61.757 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X33.985 Y61.682 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.733684, preload 0.000000
; Prepare for Destring
G1 X33.923 Y61.618 E0.00414 F2250
G1 X33.736 Y61.424 E0.01243
G1 X33.424 Y61.102 E0.02072
G1 X33.393 Y60.524 E0.02677
G1 X33.406 Y60.538 E0.00088
G1 X33.9 Y61.024 E0.03205
G1 X34.493 Y61.608 E0.03845
G1 X35.042 Y61.608 E0.02539
G1 X35.029 Y61.594 E0.00087
G1 X34.262 Y60.82 E0.05034
G1 X33.393 Y59.942 E0.05716
G1 X33.393 Y59.393 E0.02538
G1 X33.405 Y59.405 E0.00078
G1 X35.608 Y61.608 E0.14403
G1 X35.608 Y61.591 E0.00077
G1 X35.594 Y61.029 E0.02601
G1 X34.724 Y60.158 E0.05692
G1 X33.957 Y59.392 E0.0501
G1 X33.974 Y59.392 E0.00076
G1 X34.535 Y59.404 E0.02595
G1 X35.121 Y59.989 E0.0383
G1 X35.608 Y60.476 E0.03182
G1 X35.607 Y60.459 E0.00081
G1 X35.584 Y59.887 E0.02647
G1 X35.173 Y59.476 E0.02687
G1 X35.036 Y59.339 E0.00897
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X35.036 Y59.339 Z0.606 E0 F300
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34.909 Y59.212 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.757 Y60.626 E0
G1 X36.04 Y61.475 E0
G1 X36.946 Y63.3 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z0.556 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.0071 F1350
G1 X32.114 Y40.04 E0.02131
G1 X32.116 Y39.272 E0.03551
G1 X32.118 Y38.196 E0.04972
G1 X32.224 Y38.112 E0.00624
G1 X33.822 Y38.115 E0.07387
G1 X35.801 Y38.119 E0.09152
G1 X35.889 Y38.219 E0.00616
G1 X35.885 Y40.204 E0.09174
G1 X35.882 Y41.803 E0.07393
G1 X35.777 Y41.889 E0.00627
G1 X34.714 Y41.889 E0.04918
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.971 E0.0533
G1 X31.708 Y39.54 E0.0662
G1 X31.709 Y37.829 E0.07908
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00132
G1 X31.796 Y37.724 E0.00389
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00109
G1 X36.188 Y37.711 E0.20105
G1 X36.226 Y37.722 E0.00182
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00538
G1 X36.291 Y42.19 E0.20011
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00558
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X32.513 Y41.378 E0.00658 F1800
G1 X32.513 Y40.847 E0.02457
G1 X32.513 Y39.922 E0.04277
G1 X32.513 Y38.603 E0.06097
G1 X32.621 Y38.513 E0.0065
G1 X33.9 Y38.515 E0.05911
G1 X35.401 Y38.519 E0.06942
G1 X35.488 Y38.619 E0.00611
G1 X35.484 Y40.126 E0.06968
G1 X35.482 Y41.402 E0.05899
G1 X35.38 Y41.488 E0.00614
G1 X34.165 Y41.488 E0.05618
G1 X33.298 Y41.488 E0.04012
G1 X32.777 Y41.488 E0.02407
G1 X32.603 Y41.488 E0.00803
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.869 Y39.525 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X32.808 Y39.586 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.733684, preload 0.000000
; Prepare for Destring
G1 X32.886 Y39.51 E0.005 F2250
G1 X33.118 Y39.284 E0.01499
G1 X33.505 Y38.907 E0.02499
G1 X34.067 Y38.893 E0.02599
G1 X34.056 Y38.904 E0.0007
G1 X33.527 Y39.44 E0.03486
G1 X32.893 Y40.083 E0.04173
G1 X32.893 Y40.632 E0.02539
G1 X32.902 Y40.624 E0.00056
G1 X33.714 Y39.812 E0.05307
G1 X34.634 Y38.893 E0.06012
G1 X35.107 Y38.984 E0.0223
G1 X35.102 Y38.989 E0.00033
G1 X32.984 Y41.107 E0.13849
G1 X33 Y41.107 E0.00077
G1 X33.553 Y41.103 E0.02556
G1 X34.381 Y40.276 E0.05409
G1 X35.107 Y39.55 E0.0475
G1 X35.107 Y39.566 E0.00076
G1 X35.099 Y40.124 E0.02579
G1 X34.561 Y40.661 E0.03513
G1 X34.115 Y41.107 E0.02916
G1 X34.132 Y41.107 E0.00076
G1 X34.685 Y41.103 E0.02557
G1 X35.041 Y40.747 E0.02329
G1 X35.16 Y40.628 E0.00778
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X35.16 Y40.628 Z0.606 E0 F300
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.131 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.234 Y39.194 E0
G1 X32.604 Y37.482 E0
G1 X32.591 Y37.461 E0
G1 X32.586 Y37.436 E0
G1 X32.586 Y32.454 E0
G1 X32.303 Y31.606 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z0.556 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00712 F1350
G1 X32.114 Y30.045 E0.02135
G1 X32.116 Y29.275 E0.03558
G1 X32.118 Y28.198 E0.04982
G1 X32.223 Y28.111 E0.00626
G1 X33.82 Y28.112 E0.07385
G1 X35.799 Y28.112 E0.09148
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y30.208 E0.09153
G1 X35.882 Y31.804 E0.0738
G1 X35.776 Y31.888 E0.00626
G1 X34.711 Y31.888 E0.04926
G1 X33.95 Y31.888 E0.03518
G1 X33.493 Y31.888 E0.02111
G1 X33.341 Y31.888 E0.00704
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X33.246 Y31.888 E0.00433 F900
G1 X32.867 Y31.893 E0.01752
G1 X32.197 Y31.9 E0.03097
G1 X31.709 Y32.2 E0.02645
G1 X31.709 Y32.2 E0.00003
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00004
G1 X31.708 Y32.197 E0.00011
G1 X31.708 Y31.033 E0.05378
G1 X31.709 Y29.571 E0.0676
G1 X31.71 Y27.81 E0.08142
G1 X31.722 Y27.771 E0.00188
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00109
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.20029
G1 X36.285 Y32.199 E0.00132
G1 X36.268 Y32.222 E0.00133
G1 X36.204 Y32.276 E0.00389
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00108
G1 X34.428 Y32.289 E0.08008
G1 X32.983 Y32.286 E0.06683
G1 X31.824 Y32.284 E0.05357
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00115
G1 X31.741 Y32.231 E0.00241
G1 X31.725 Y32.206 E0.00138
G1 X31.723 Y32.176 E0.00139
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02286
G1 X32.112 Y31.578 E0.0092
G1 X32.112 Y31.061 E0.02388
G1 X32.112 Y30.757 E0.01405
G1 X32.112 Y30.666 E0.00425
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y31.323 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.513 Y31.396 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X32.513 Y31.221 E0.00808 F1800
G1 X32.514 Y30.697 E0.02426
G1 X32.516 Y29.823 E0.04042
G1 X32.519 Y28.599 E0.05658
G1 X32.619 Y28.512 E0.00614
G1 X33.894 Y28.512 E0.05891
G1 X35.398 Y28.513 E0.06953
G1 X35.488 Y28.621 E0.00652
G1 X35.487 Y30.121 E0.06933
G1 X35.487 Y31.398 E0.05902
G1 X35.379 Y31.487 E0.0065
G1 X34.342 Y31.485 E0.04795
G1 X33.533 Y31.483 E0.03737
G1 X32.953 Y31.481 E0.02681
G1 X32.602 Y31.48 E0.01624
G1 X32.513 Y31.396 E0.00568
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y31.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.869 Y29.343 E0
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X32.84 Y29.372 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.733684, preload 0.000000
; Prepare for Destring
G1 X32.964 Y29.252 E0.00797 F2250
G1 X33.336 Y28.893 E0.0239
G1 X33.885 Y28.893 E0.02538
G1 X33.881 Y28.897 E0.00025
G1 X33.433 Y29.352 E0.02952
G1 X32.893 Y29.901 E0.03561
G1 X32.893 Y30.45 E0.02538
G1 X32.902 Y30.441 E0.00056
G1 X33.634 Y29.717 E0.0476
G1 X34.467 Y28.893 E0.0542
G1 X35.016 Y28.893 E0.02539
G1 X35.012 Y28.897 E0.00025
G1 X32.893 Y31.016 E0.13855
G1 X32.903 Y31.018 E0.00048
G1 X33.368 Y31.107 E0.02187
G1 X34.292 Y30.183 E0.06041
G1 X35.107 Y29.367 E0.0533
G1 X35.107 Y29.384 E0.00077
G1 X35.099 Y29.942 E0.02579
G1 X34.463 Y30.577 E0.04153
G1 X33.933 Y31.107 E0.03467
G1 X33.951 Y31.107 E0.00083
G1 X34.523 Y31.083 E0.02647
G1 X34.895 Y30.711 E0.0243
G1 X35.118 Y30.488 E0.01458
G1 X35.192 Y30.414 E0.00486
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X35.192 Y30.414 Z0.606 E0 F300
; Blending Fan to Cool (70.3% blend)
; Blended Fan at 35%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.131 Y30.475 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.096 Y32.047 E0
G1 X33.717 Y33.174 E0
G1 X33.717 Y37.546 E0
G1 X33.434 Y38.394 E0
G1 X32.586 Y40.374 E0
G1 X32.303 Y40.657 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 18.909683, post = 15.773893
; Dwell time remaining = -5.773894
;
; Post-layer lift
G1 X32.303 Y40.657 Z0.839 E0 F300
; END_LAYER_OBJECT z=0.556
; *** Estimate all extruders at 2.9 [s], Slowing 0.223x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=0.789 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 5.0 [head mm/s]
G1 X66.182 Y73.879 Z0.839 E0 F9000
G1 X66.182 Y73.879 Z0.789 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 5.020752, filament speed 0.219593, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F301.2
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.3 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 3.347168, filament speed 0.146395, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F200.8
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X65.151 Y70.586 E0
; Fan set to Cool value 50%
;
; 'Solid Path', 0.4 [feed mm/s], 8.4 [head mm/s]
G1 X65.412 Y70.595 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.367920, filament speed 0.365988, preload 0.000000
G1 X65.33 Y70.679 E0.00516 F502.1
G1 X65.084 Y70.933 E0.01546
G1 X64.673 Y71.356 E0.02579
; Prepare for Destring
G1 X64.511 Y72.061 E0.03164
G1 X64.527 Y72.045 E0.00098
G1 X65.22 Y71.353 E0.04283
G1 X66.062 Y70.511 E0.05207
G1 X66.532 Y70.606 E0.02097
G1 X66.525 Y70.613 E0.00044
G1 X65.622 Y71.516 E0.05584
G1 X64.606 Y72.532 E0.06285
G1 X64.807 Y72.897 E0.01822
G1 X66.897 Y70.807 E0.12929
G1 X67.182 Y71.088 E0.0175
G1 X65.088 Y73.182 E0.12953
G1 X65.448 Y73.387 E0.01814
G1 X66.474 Y72.361 E0.06345
G1 X67.387 Y71.448 E0.05645
G1 X67.389 Y71.458 E0.00041
G1 X67.487 Y71.914 E0.02043
G1 X66.624 Y72.777 E0.05334
G1 X65.914 Y73.487 E0.04395
G1 X65.939 Y73.482 E0.00113
G1 X66.63 Y73.337 E0.03087
G1 X67.079 Y72.888 E0.02777
G1 X67.348 Y72.618 E0.01667
G1 X67.438 Y72.528 E0.00556
; Fan set to Cool value 50%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 10.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 10.041504, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X67.438 Y72.528 Z0.839 E0 F300
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.414 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.566 Y73.131 E0
G1 X66.283 Y73.98 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.988111, post = 9.870962
; Dwell time remaining = 0.129038
;
; Post-layer lift
G1 X66.283 Y73.98 Z0.883 E0 F300
; END_LAYER_OBJECT z=0.789
; BEGIN_LAYER_OBJECT z=0.833 z_thickness=0.277
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z0.883 E0 F9000
G1 X46.187 Y73.389 Z0.833 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.036469, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00711 F1350
G1 X45.57 Y73.387 E0.02132
G1 X44.798 Y73.385 E0.03554
G1 X43.718 Y73.381 E0.04976
G1 X43.612 Y73.319 E0.00566
G1 X43.612 Y72.264 E0.04864
G1 X43.612 Y71.028 E0.05693
G1 X43.612 Y69.612 E0.06523
G1 X45.033 Y69.612 E0.06548
G1 X46.273 Y69.612 E0.05713
G1 X47.332 Y69.612 E0.04877
G1 X47.39 Y69.817 E0.0098
G1 X47.39 Y70.853 E0.04775
G1 X47.39 Y71.594 E0.03411
G1 X47.39 Y72.038 E0.02048
G1 X47.39 Y72.187 E0.00683
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 14.999999, filament speed 0.690979, preload 0.000000
G1 X47.39 Y72.317 E0.00269 F900
G1 X47.395 Y72.652 E0.01545
G1 X47.404 Y73.285 E0.02916
G1 X47.79 Y73.79 E0.02928
G1 X47.79 Y73.79 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05424
G1 X45.12 Y73.786 E0.06864
G1 X43.317 Y73.783 E0.08305
G1 X43.243 Y73.736 E0.00402
G1 X43.22 Y73.712 E0.00153
G1 X43.212 Y73.68 E0.00153
G1 X43.212 Y69.278 E0.20276
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.00159
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20284
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00191
G1 X47.791 Y69.404 E0.00702
G1 X47.791 Y71.169 E0.08132
G1 X47.791 Y72.631 E0.06732
G1 X47.791 Y73.788 E0.05333
G1 X47.791 Y73.789 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00003
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02931
G1 X46.65 Y73.394 E0.02896
G1 X46.317 Y73.389 E0.01537
G1 X46.258 Y73.389 E0.00271
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.243 Y71.374 E0
G1 X43.96 Y70.525 E0
G1 X43.96 Y70.525 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X43.907 Y70.578 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.727448, preload 0.000000
G1 X43.974 Y70.513 E0.00431 F2250
G1 X44.175 Y70.318 E0.01292
G1 X44.51 Y69.992 E0.02154
G1 X45.059 Y69.992 E0.0253
G1 X45.051 Y70 E0.00052
G1 X44.569 Y70.489 E0.03164
G1 X43.992 Y71.076 E0.03793
G1 X43.992 Y71.625 E0.0253
G1 X44 Y71.617 E0.00052
G1 X44.769 Y70.856 E0.04984
G1 X45.642 Y69.992 E0.05658
G1 X46.191 Y69.992 E0.0253
G1 X46.183 Y70 E0.00052
; Prepare for Destring
G1 X43.992 Y72.207 E0.14328
G1 X43.992 Y72.756 E0.02529
G1 X44 Y72.748 E0.00053
G1 X46.756 Y69.992 E0.17958
G1 X47.008 Y70.306 E0.01854
G1 X44.306 Y73.008 E0.17604
G1 X44.322 Y73.008 E0.00076
G1 X44.883 Y72.996 E0.02583
G1 X47.008 Y70.871 E0.13844
G1 X47.008 Y70.888 E0.00076
G1 X46.997 Y71.449 E0.02583
G1 X46.167 Y72.278 E0.05404
G1 X45.437 Y73.008 E0.04755
G1 X45.454 Y73.008 E0.00076
G1 X46.014 Y72.996 E0.02583
G1 X46.556 Y72.455 E0.03529
G1 X47.008 Y72.003 E0.02944
G1 X47.008 Y72.019 E0.00076
G1 X46.997 Y72.58 E0.02583
G1 X46.612 Y72.964 E0.02505
G1 X46.484 Y73.093 E0.00836
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.484 Y73.093 Z0.883 E0 F300
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.374 Y69.484 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z0.833 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.036469, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.00707 F1350
G1 X44.507 Y62.388 E0.02122
G1 X43.739 Y62.388 E0.03536
G1 X42.664 Y62.388 E0.0495
G1 X42.61 Y62.185 E0.00965
G1 X42.61 Y60.585 E0.07372
G1 X42.61 Y58.61 E0.09097
G1 X44.011 Y58.613 E0.0645
G1 X45.233 Y58.616 E0.05632
G1 X46.278 Y58.618 E0.04813
G1 X46.388 Y58.674 E0.00566
G1 X46.388 Y59.745 E0.04931
G1 X46.388 Y60.509 E0.03522
G1 X46.388 Y60.968 E0.02113
G1 X46.388 Y61.121 E0.00705
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 14.999999, filament speed 0.690979, preload 0.000000
G1 X46.388 Y61.309 E0.00215 F900
G1 X46.392 Y61.635 E0.015
G1 X46.4 Y62.271 E0.02929
G1 X46.737 Y62.707 E0.02536
G1 X46.761 Y62.751 E0.00233
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.00069
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00421
G1 X45.497 Y62.788 E0.05317
G1 X44.051 Y62.788 E0.06659
G1 X42.314 Y62.788 E0.08001
G1 X42.274 Y62.774 E0.00194
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00691
G1 X42.208 Y58.275 E0.19902
G1 X42.217 Y58.242 E0.00159
G1 X42.242 Y58.218 E0.00159
G1 X42.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.20288
G1 X46.753 Y58.257 E0.00388
G1 X46.779 Y58.282 E0.00163
G1 X46.788 Y58.316 E0.00163
G1 X46.786 Y60.119 E0.08307
G1 X46.783 Y61.609 E0.06863
G1 X46.782 Y62.785 E0.0542
G1 X46.781 Y62.786 E0.00004
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.777 Y62.785 E0.00015
G1 X46.219 Y62.388 E0.03155
G1 X45.627 Y62.388 E0.02727
G1 X45.309 Y62.388 E0.01462
G1 X45.25 Y62.388 E0.00273
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X43.394 Y60.343 E0
G1 X43.111 Y59.495 E0
G1 X43.111 Y59.495 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X42.95 Y59.521 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.727448, preload 0.000000
G1 X43.086 Y59.389 E0.00877 F2250
G1 X43.496 Y58.991 E0.0263
G1 X44.045 Y58.991 E0.02529
G1 X44.044 Y58.993 E0.00012
G1 X43.567 Y59.477 E0.03127
G1 X42.992 Y60.061 E0.03777
G1 X42.992 Y60.61 E0.0253
G1 X43.002 Y60.601 E0.00061
G1 X43.762 Y59.848 E0.04931
G1 X44.628 Y58.991 E0.05608
G1 X45.177 Y58.991 E0.0253
G1 X45.175 Y58.993 E0.00011
; Prepare for Destring
G1 X42.992 Y61.193 E0.14275
G1 X42.992 Y61.742 E0.02529
G1 X43.002 Y61.732 E0.00062
G1 X45.743 Y58.991 E0.17855
G1 X45.977 Y59.323 E0.0187
G1 X43.323 Y61.977 E0.17288
G1 X43.336 Y61.977 E0.00063
G1 X43.859 Y62.007 E0.02409
G1 X46.008 Y59.858 E0.14001
G1 X46.008 Y59.874 E0.00076
G1 X45.994 Y60.437 E0.02593
G1 X45.158 Y61.273 E0.05449
G1 X44.423 Y62.008 E0.04787
G1 X44.44 Y62.008 E0.00076
G1 X45.002 Y61.995 E0.0259
G1 X45.552 Y61.445 E0.03586
G1 X46.008 Y60.989 E0.02969
G1 X46.007 Y61.007 E0.00082
G1 X45.982 Y61.58 E0.02646
G1 X45.636 Y61.927 E0.02256
G1 X45.52 Y62.042 E0.00752
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.52 Y62.042 Z0.883 E0 F300
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y62.04 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X37.596 Y62.182 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z0.833 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.036469, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.00708 F1350
G1 X34.512 Y62.388 E0.02124
G1 X33.744 Y62.388 E0.03539
G1 X32.668 Y62.388 E0.04955
G1 X32.61 Y62.183 E0.00978
G1 X32.61 Y60.584 E0.0737
G1 X32.61 Y58.61 E0.09091
G1 X34.012 Y58.613 E0.06459
G1 X35.236 Y58.616 E0.05638
G1 X36.282 Y58.618 E0.04818
G1 X36.388 Y58.681 E0.00566
G1 X36.388 Y59.75 E0.04928
G1 X36.388 Y60.515 E0.0352
G1 X36.388 Y60.973 E0.02113
G1 X36.388 Y61.126 E0.00706
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 14.999999, filament speed 0.690979, preload 0.000000
G1 X36.388 Y61.315 E0.00268 F900
G1 X36.393 Y61.65 E0.01544
G1 X36.402 Y62.283 E0.02917
G1 X36.786 Y62.786 E0.02914
G1 X36.787 Y62.787 E0.00003
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05417
G1 X34.118 Y62.788 E0.06854
G1 X32.318 Y62.788 E0.08292
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00191
G1 X32.209 Y62.596 E0.007
G1 X32.209 Y58.275 E0.19904
G1 X32.218 Y58.242 E0.00159
G1 X32.242 Y58.218 E0.0016
G1 X32.276 Y58.209 E0.00159
G1 X36.684 Y58.217 E0.20305
G1 X36.757 Y58.264 E0.00403
G1 X36.78 Y58.288 E0.00152
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08297
G1 X36.788 Y61.609 E0.06856
G1 X36.788 Y62.785 E0.05416
G1 X36.788 Y62.786 E0.00004
G1 X36.787 Y62.787 E0.00003
G1 X36.786 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00004
G1 X36.782 Y62.785 E0.00017
G1 X36.277 Y62.401 E0.02921
G1 X35.649 Y62.392 E0.02893
G1 X35.316 Y62.388 E0.01538
G1 X35.256 Y62.388 E0.00273
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.343 Y60.909 E0
G1 X34.06 Y60.06 E0
G1 X33.495 Y58.929 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X33.517 Y58.907 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.727448, preload 0.000000
G1 X33.385 Y59.042 E0.00868 F2250
G1 X32.992 Y59.448 E0.02604
G1 X32.992 Y59.997 E0.0253
G1 X33.003 Y59.986 E0.00074
G1 X33.463 Y59.533 E0.02972
G1 X34.014 Y58.991 E0.03561
G1 X34.564 Y58.991 E0.02529
G1 X34.552 Y59.003 E0.00075
G1 X33.822 Y59.741 E0.04782
G1 X32.992 Y60.579 E0.05435
G1 X32.992 Y61.129 E0.0253
G1 X33.003 Y61.117 E0.00074
; Prepare for Destring
G1 X35.146 Y58.991 E0.13903
G1 X35.695 Y58.991 E0.02529
G1 X35.683 Y59.003 E0.00076
G1 X32.992 Y61.694 E0.17533
G1 X33.244 Y62.008 E0.01853
G1 X36.008 Y59.244 E0.18009
G1 X36.008 Y59.26 E0.00076
G1 X36 Y59.817 E0.02567
G1 X33.81 Y62.008 E0.14271
G1 X33.826 Y62.008 E0.00076
G1 X34.383 Y62 E0.02567
G1 X35.247 Y61.136 E0.05628
G1 X36.008 Y60.375 E0.04958
G1 X36.008 Y60.392 E0.00076
G1 X36 Y60.949 E0.02567
G1 X35.423 Y61.526 E0.03762
G1 X34.941 Y62.008 E0.03139
G1 X34.958 Y62.008 E0.00076
G1 X35.515 Y62 E0.02567
G1 X35.836 Y61.679 E0.02092
G1 X36.029 Y61.486 E0.01256
G1 X36.093 Y61.422 E0.0042
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X36.093 Y61.422 Z0.883 E0 F300
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.04 Y61.475 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.946 Y63.3 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z0.833 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.036469, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.00708 F1350
G1 X32.114 Y40.04 E0.02123
G1 X32.116 Y39.272 E0.03538
G1 X32.118 Y38.196 E0.04954
G1 X32.224 Y38.112 E0.00622
G1 X33.822 Y38.115 E0.0736
G1 X35.801 Y38.119 E0.09119
G1 X35.889 Y38.219 E0.00614
G1 X35.885 Y40.204 E0.09141
G1 X35.882 Y41.803 E0.07367
G1 X35.777 Y41.889 E0.00625
G1 X34.714 Y41.889 E0.04899
G1 X33.954 Y41.889 E0.035
G1 X33.498 Y41.889 E0.021
G1 X33.346 Y41.889 E0.007
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 14.999999, filament speed 0.690979, preload 0.000000
G1 X33.246 Y41.889 E0.00406 F900
G1 X32.909 Y41.892 E0.01552
G1 X32.32 Y41.899 E0.02711
G1 X31.902 Y42.187 E0.0234
G1 X31.829 Y42.259 E0.00473
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00144
G1 X31.751 Y42.242 E0.00143
G1 X31.708 Y42.124 E0.00576
G1 X31.708 Y40.971 E0.05312
G1 X31.708 Y39.54 E0.06595
G1 X31.709 Y37.829 E0.0788
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00131
G1 X31.796 Y37.724 E0.00387
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00108
G1 X36.188 Y37.711 E0.20034
G1 X36.226 Y37.722 E0.00181
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00535
G1 X36.291 Y42.19 E0.19939
G1 X36.278 Y42.229 E0.00187
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00556
G1 X34.395 Y42.292 E0.07998
G1 X32.952 Y42.292 E0.06649
G1 X31.802 Y42.292 E0.05299
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02807
G1 X32.112 Y41.117 E0.02968
G1 X32.112 Y40.751 E0.01685
G1 X32.112 Y40.659 E0.00423
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.283 Y38.677 E0
G1 X35.131 Y38.394 E0
G1 X35.131 Y38.394 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X35.073 Y38.443 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.727448, preload 0.000000
G1 X35.181 Y38.556 E0.00722 F2250
G1 X35.508 Y38.895 E0.02166
G1 X35.508 Y39.444 E0.0253
G1 X35.507 Y39.443 E0.00005
G1 X35.069 Y39.013 E0.02828
G1 X34.54 Y38.492 E0.03419
G1 X33.991 Y38.492 E0.02529
G1 X33.998 Y38.5 E0.00047
G1 X34.703 Y39.213 E0.04621
G1 X35.508 Y40.026 E0.0527
G1 X35.508 Y40.575 E0.02529
G1 X35.507 Y40.574 E0.00006
; Prepare for Destring
G1 X33.423 Y38.492 E0.13569
G1 X32.877 Y38.51 E0.02518
G1 X32.887 Y38.521 E0.0007
G1 X35.49 Y41.124 E0.16958
G1 X35.309 Y41.508 E0.01957
G1 X32.492 Y38.691 E0.18349
G1 X32.492 Y38.708 E0.00076
G1 X32.506 Y39.27 E0.02592
G1 X34.743 Y41.508 E0.14578
G1 X34.727 Y41.508 E0.00076
G1 X34.164 Y41.495 E0.02591
G1 X33.276 Y40.606 E0.0579
G1 X32.492 Y39.823 E0.05103
G1 X32.492 Y39.839 E0.00076
G1 X32.506 Y40.402 E0.02592
G1 X33.109 Y41.005 E0.03932
G1 X33.612 Y41.508 E0.03275
G1 X33.595 Y41.508 E0.00077
G1 X33.033 Y41.495 E0.02591
G1 X32.697 Y41.158 E0.02192
G1 X32.494 Y40.956 E0.01316
G1 X32.427 Y40.889 E0.0044
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X32.427 Y40.889 Z0.883 E0 F300
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y40.94 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.303 Y38.96 E0
G1 X32.02 Y38.111 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z0.833 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.036469, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00709 F1350
G1 X32.114 Y30.045 E0.02127
G1 X32.116 Y29.275 E0.03546
G1 X32.118 Y28.198 E0.04964
G1 X32.223 Y28.111 E0.00623
G1 X33.82 Y28.112 E0.0736
G1 X35.799 Y28.112 E0.09114
G1 X35.889 Y28.228 E0.00674
G1 X35.885 Y30.208 E0.0912
G1 X35.882 Y31.804 E0.07354
G1 X35.776 Y31.888 E0.00623
G1 X34.711 Y31.888 E0.04908
G1 X33.95 Y31.888 E0.03506
G1 X33.493 Y31.888 E0.02104
G1 X33.341 Y31.888 E0.00701
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 14.999999, filament speed 0.690979, preload 0.000000
G1 X33.246 Y31.888 E0.00431 F900
G1 X32.867 Y31.893 E0.01746
G1 X32.197 Y31.9 E0.03087
G1 X31.709 Y32.2 E0.02634
G1 X31.709 Y32.2 E0.00004
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00003
G1 X31.708 Y32.197 E0.00012
G1 X31.708 Y31.033 E0.05358
G1 X31.709 Y29.571 E0.06736
G1 X31.71 Y27.81 E0.08113
G1 X31.722 Y27.771 E0.00186
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00553
G1 X36.171 Y27.708 E0.19824
G1 X36.199 Y27.715 E0.00131
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00387
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.19956
G1 X36.285 Y32.199 E0.00132
G1 X36.268 Y32.222 E0.00133
G1 X36.204 Y32.276 E0.00387
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00107
G1 X34.428 Y32.289 E0.0798
G1 X32.983 Y32.286 E0.06658
G1 X31.824 Y32.284 E0.05338
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00114
G1 X31.741 Y32.231 E0.0024
G1 X31.725 Y32.206 E0.00138
G1 X31.723 Y32.176 E0.00138
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02278
G1 X32.112 Y31.578 E0.00917
G1 X32.112 Y31.061 E0.02379
G1 X32.112 Y30.757 E0.014
G1 X32.112 Y30.666 E0.00423
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34 Y28.777 E0
G1 X34.849 Y28.495 E0
G1 X34.849 Y28.495 E0
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 47%
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X34.869 Y28.407 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.727448, preload 0.000000
G1 X34.938 Y28.478 E0.00455 F2250
G1 X35.144 Y28.691 E0.01366
G1 X35.489 Y29.045 E0.02276
G1 X35.508 Y29.612 E0.02612
G1 X35.493 Y29.597 E0.00093
G1 X34.983 Y29.094 E0.03302
G1 X34.371 Y28.492 E0.03953
G1 X33.822 Y28.492 E0.0253
G1 X33.836 Y28.505 E0.00086
G1 X34.619 Y29.297 E0.0513
G1 X35.508 Y30.194 E0.05817
G1 X35.508 Y30.743 E0.02529
G1 X35.494 Y30.73 E0.00087
; Prepare for Destring
G1 X33.24 Y28.492 E0.14632
G1 X32.691 Y28.492 E0.02529
G1 X32.704 Y28.505 E0.00086
G1 X35.508 Y31.309 E0.18264
G1 X35.123 Y31.49 E0.01957
G1 X32.51 Y28.876 E0.17027
G1 X32.509 Y28.891 E0.00069
G1 X32.492 Y29.425 E0.02459
G1 X34.575 Y31.508 E0.13568
G1 X34.559 Y31.508 E0.00076
G1 X34.002 Y31.5 E0.02563
G1 X33.198 Y30.697 E0.05237
G1 X32.492 Y29.99 E0.046
G1 X32.492 Y30.007 E0.00076
G1 X32.493 Y30.557 E0.02534
G1 X33.012 Y31.076 E0.03381
G1 X33.444 Y31.508 E0.02811
G1 X33.424 Y31.506 E0.00093
G1 X32.832 Y31.462 E0.02732
G1 X32.514 Y31.143 E0.02075
G1 X32.407 Y31.037 E0.00692
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X32.407 Y31.037 Z0.883 E0 F300
; Blending Fan to Cool (71.6% blend)
; Blended Fan at 36%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y31.04 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y33.78 E0
G1 X32.586 Y39.808 E0
G1 X32.303 Y40.657 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 18.531143, post = 15.260910
; Dwell time remaining = -5.260910
;
; Post-layer lift
G1 X32.303 Y40.657 Z1.103 E0 F300
; END_LAYER_OBJECT z=0.833
; *** Estimate all extruders at 2.6 [s], Slowing 0.200x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=1.053 z_thickness=0.264
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 4.5 [head mm/s]
G1 X66.182 Y73.879 Z1.103 E0 F9000
G1 X66.182 Y73.879 Z1.053 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 4.493408, filament speed 0.197276, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00703 F269.6
G1 X65.542 Y73.84 E0.0211
G1 X64.945 Y73.579 E0.02863
G1 X64.456 Y73.099 E0.0301
G1 X64.208 Y72.602 E0.02436
G1 X64.11 Y72.052 E0.02453
G1 X64.182 Y71.471 E0.02573
G1 X64.424 Y70.942 E0.02555
G1 X64.906 Y70.45 E0.03022
G1 X65.471 Y70.181 E0.02745
G1 X66.053 Y70.11 E0.02577
G1 X66.602 Y70.208 E0.02445
G1 X67.096 Y70.452 E0.0242
G1 X67.582 Y70.947 E0.03049
G1 X67.855 Y71.605 E0.03123
G1 X67.872 Y72.037 E0.01901
G1 X67.878 Y72.181 E0.00633
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.0 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.995605, filament speed 0.131517, preload 0.000000
G1 X67.866 Y72.273 E0.00332 F179.7
G1 X67.795 Y72.5 E0.01044
G1 X67.676 Y72.881 E0.01756
G1 X67.444 Y73.22 E0.01801
G1 X67.433 Y73.254 E0.00159
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01434
G1 X67.605 Y73.606 E0.00138
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00138
G1 X67.112 Y74.012 E0.0256
G1 X66.504 Y74.238 E0.02849
G1 X65.869 Y74.292 E0.02796
G1 X65.134 Y74.133 E0.03301
G1 X64.557 Y73.781 E0.02969
G1 X64.101 Y73.287 E0.02952
G1 X63.818 Y72.722 E0.02775
G1 X63.702 Y72 E0.0321
G1 X63.818 Y71.278 E0.0321
G1 X64.102 Y70.71 E0.0279
G1 X64.605 Y70.178 E0.03213
G1 X65.202 Y69.842 E0.03007
G1 X65.875 Y69.708 E0.03013
G1 X66.579 Y69.779 E0.03107
G1 X67.17 Y70.022 E0.02807
G1 X67.69 Y70.453 E0.02964
G1 X68.08 Y71.013 E0.02996
G1 X68.269 Y71.674 E0.03017
G1 X68.279 Y72.252 E0.02535
G1 X68.106 Y72.931 E0.03078
G1 X67.742 Y73.482 E0.02897
G1 X67.624 Y73.606 E0.00754
G1 X67.585 Y73.626 E0.00192
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01488
G1 X67.213 Y73.439 E0.00161
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02288
G1 X66.453 Y73.817 E0.01324
G1 X66.272 Y73.866 E0.00826
G1 X66.197 Y73.877 E0.00333
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.0 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 5.991210, filament speed 0.263034, preload 0.000000
G1 X66.948 Y73.125 E0.00555 F359.5
G1 X66.642 Y73.349 E0.01667
G1 X66.135 Y73.487 E0.02308
G1 X65.637 Y73.452 E0.02192
G1 X65.109 Y73.199 E0.02571
G1 X64.754 Y72.818 E0.02284
G1 X64.547 Y72.351 E0.02243
G1 X64.518 Y71.804 E0.02402
G1 X64.682 Y71.299 E0.02335
G1 X65.017 Y70.875 E0.02371
G1 X65.485 Y70.598 E0.02391
G1 X66.055 Y70.504 E0.02536
G1 X66.578 Y70.623 E0.02356
G1 X67.032 Y70.919 E0.02376
G1 X67.35 Y71.36 E0.0239
G1 X67.49 Y71.876 E0.02347
G1 X67.432 Y72.428 E0.02437
G1 X67.172 Y72.919 E0.02437
G1 X67.051 Y73.051 E0.00787
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.5 [feed mm/s], 9.0 [head mm/s]
G1 X66.968 Y72 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.986816, filament speed 0.493190, preload 0.000000
; Prepare for Destring
G1 X66.847 Y72 E0.00664 F539.2
G1 X66.484 Y72 E0.01991
G1 X65.516 Y72 E0.05311
G1 X65.153 Y72 E0.01992
G1 X65.032 Y72 E0.00663
; Fan set to Cool value 50%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 9.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 8.986816, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X65.032 Y72 Z1.103 E0 F300
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.869 Y72 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66 Y73.131 E0
G1 X66.283 Y73.98 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 10.002649, post = 9.865006
; Dwell time remaining = 0.134993
;
; Post-layer lift
G1 X66.283 Y73.98 Z1.161 E0 F300
; END_LAYER_OBJECT z=1.053
; BEGIN_LAYER_OBJECT z=1.111 z_thickness=0.278
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z1.161 E0 F9000
G1 X46.187 Y73.389 Z1.111 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X46.989 Y72.989 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 30.000000, filament speed 1.386948, preload 0.000000
; Prepare for Destring
G1 X46.81 Y72.989 E0.0083 F1800
G1 X46.271 Y72.987 E0.02489
G1 X45.374 Y72.985 E0.04148
G1 X44.118 Y72.981 E0.05807
G1 X44.012 Y72.918 E0.00571
G1 X44.012 Y71.587 E0.06154
G1 X44.012 Y70.012 E0.07282
G1 X45.592 Y70.012 E0.07307
G1 X46.927 Y70.012 E0.06171
G1 X46.989 Y70.18 E0.00828
G1 X46.989 Y71.409 E0.05681
G1 X46.989 Y72.286 E0.04059
G1 X46.989 Y72.813 E0.02436
G1 X46.989 Y72.989 E0.00813
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.989 Y72.989 Z1.161 E0 F300
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.772 Y69.465 E0
G1 X45.374 Y68.392 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z1.111 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.0071 F1350
G1 X44.507 Y62.388 E0.02129
G1 X43.739 Y62.388 E0.03549
G1 X42.664 Y62.388 E0.04968
G1 X42.61 Y62.185 E0.00968
G1 X42.61 Y60.585 E0.07399
G1 X42.61 Y58.61 E0.0913
G1 X44.011 Y58.613 E0.06473
G1 X45.233 Y58.616 E0.05652
G1 X46.278 Y58.618 E0.0483
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04949
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.0212
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.497 Y62.788 E0.05336
G1 X44.051 Y62.788 E0.06683
G1 X42.314 Y62.788 E0.0803
G1 X42.274 Y62.774 E0.00195
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00694
G1 X42.208 Y58.275 E0.19974
G1 X42.217 Y58.242 E0.0016
G1 X42.242 Y58.218 E0.00159
G1 X42.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.20362
G1 X46.753 Y58.257 E0.00389
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08336
G1 X46.783 Y61.609 E0.06889
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01467
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X45.799 Y61.988 E0.00844 F1800
G1 X45.251 Y61.988 E0.02533
G1 X44.338 Y61.988 E0.04222
G1 X43.059 Y61.988 E0.05911
G1 X43.011 Y61.738 E0.01175
G1 X43.011 Y60.479 E0.0582
G1 X43.011 Y59.011 E0.0679
G1 X44.563 Y59.015 E0.07174
G1 X45.878 Y59.019 E0.06082
G1 X45.988 Y59.076 E0.00572
G1 X45.985 Y60.349 E0.05888
G1 X45.983 Y61.259 E0.04207
G1 X45.982 Y61.805 E0.02525
G1 X45.982 Y61.988 E0.00844
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y61.475 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.518 Y61.467 E0
; head speed 45.000004, filament speed 2.600527, preload 0.000000
G1 X44.409 Y61.358 E0.00896 F2700
G1 X44.08 Y61.029 E0.02686
G1 X43.97 Y60.919 E0.00896
G1 X43.642 Y60.591 E0.02686
G1 X43.532 Y60.481 E0.00896
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.394 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.808 Y59.495 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.846 Y59.532 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.600527, preload 0.000000
; Prepare for Destring
G1 X44.915 Y59.601 E0.00565 F2700
G1 X45.122 Y59.809 E0.01696
G1 X45.192 Y59.878 E0.00565
G1 X45.399 Y60.085 E0.01696
G1 X45.468 Y60.154 E0.00565
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.468 Y60.154 Z1.161 E0 F300
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y60.06 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X42.616 Y61.076 E0
G1 X41.544 Y61.475 E0
G1 X37.7 Y61.58 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z1.111 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.0071 F1350
G1 X34.512 Y62.388 E0.02132
G1 X33.744 Y62.388 E0.03552
G1 X32.668 Y62.388 E0.04973
G1 X32.61 Y62.183 E0.00982
G1 X32.61 Y60.584 E0.07396
G1 X32.61 Y58.61 E0.09124
G1 X34.012 Y58.613 E0.06482
G1 X35.236 Y58.616 E0.05659
G1 X36.282 Y58.618 E0.04835
G1 X36.388 Y58.681 E0.00568
G1 X36.388 Y59.75 E0.04946
G1 X36.388 Y60.515 E0.03533
G1 X36.388 Y60.973 E0.0212
G1 X36.388 Y61.126 E0.00709
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X36.388 Y61.315 E0.00269 F900
G1 X36.393 Y61.65 E0.0155
G1 X36.402 Y62.283 E0.02927
G1 X36.786 Y62.786 E0.02924
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05436
G1 X34.118 Y62.788 E0.06879
G1 X32.318 Y62.788 E0.08322
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.218 E0.0016
G1 X32.276 Y58.209 E0.00159
G1 X36.684 Y58.217 E0.20379
G1 X36.757 Y58.264 E0.00404
G1 X36.78 Y58.288 E0.00153
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08327
G1 X36.788 Y61.609 E0.06881
G1 X36.788 Y62.785 E0.05436
G1 X36.788 Y62.786 E0.00003
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.782 Y62.785 E0.00018
G1 X36.277 Y62.401 E0.02931
G1 X35.649 Y62.392 E0.02904
G1 X35.316 Y62.388 E0.01543
G1 X35.256 Y62.388 E0.00274
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.04 Y62.04 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X35.988 Y61.988 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X35.806 Y61.988 E0.00842 F1800
G1 X35.259 Y61.988 E0.02526
G1 X34.349 Y61.988 E0.04211
G1 X33.074 Y61.988 E0.05894
G1 X33.011 Y61.821 E0.00825
G1 X33.011 Y60.528 E0.05976
G1 X33.011 Y59.01 E0.07017
G1 X34.565 Y59.015 E0.07186
G1 X35.882 Y59.019 E0.06089
G1 X35.988 Y59.082 E0.00572
G1 X35.988 Y60.353 E0.05875
G1 X35.988 Y61.261 E0.04198
G1 X35.988 Y61.806 E0.02519
G1 X35.988 Y61.988 E0.00841
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.04 Y62.04 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y61.475 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.467 Y61.467 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.600527, preload 0.000000
; Prepare for Destring
G1 X35.347 Y61.348 E0.0098 F2700
G1 X34.985 Y60.99 E0.02938
G1 X34.383 Y60.394 E0.04898
G1 X34.068 Y60.343 E0.01841
G1 X33.665 Y60.343 E0.0233
G1 X33.531 Y60.343 E0.00777
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X33.531 Y60.343 Z1.161 E0 F300
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.777 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y62.04 E0
G1 X36.323 Y62.323 E0
G1 X36.889 Y63.172 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z1.111 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.0071 F1350
G1 X32.114 Y40.04 E0.02131
G1 X32.116 Y39.272 E0.03551
G1 X32.118 Y38.196 E0.04972
G1 X32.224 Y38.112 E0.00624
G1 X33.822 Y38.115 E0.07387
G1 X35.801 Y38.119 E0.09152
G1 X35.889 Y38.219 E0.00616
G1 X35.885 Y40.204 E0.09174
G1 X35.882 Y41.803 E0.07393
G1 X35.777 Y41.889 E0.00627
G1 X34.714 Y41.889 E0.04918
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.971 E0.0533
G1 X31.708 Y39.54 E0.0662
G1 X31.709 Y37.829 E0.07908
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00132
G1 X31.796 Y37.724 E0.00389
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00109
G1 X36.188 Y37.711 E0.20105
G1 X36.226 Y37.722 E0.00182
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00538
G1 X36.291 Y42.19 E0.20011
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00558
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X32.513 Y41.378 E0.00658 F1800
G1 X32.513 Y40.847 E0.02457
G1 X32.513 Y39.922 E0.04277
G1 X32.513 Y38.603 E0.06097
G1 X32.621 Y38.513 E0.0065
G1 X33.9 Y38.515 E0.05912
G1 X35.401 Y38.519 E0.06941
G1 X35.488 Y38.619 E0.00611
G1 X35.484 Y40.126 E0.06968
G1 X35.482 Y41.402 E0.05899
G1 X35.38 Y41.488 E0.00614
G1 X34.165 Y41.488 E0.05618
G1 X33.298 Y41.488 E0.04012
G1 X32.777 Y41.488 E0.02407
G1 X32.603 Y41.488 E0.00803
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y39.808 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y39.927 E0
; head speed 45.000004, filament speed 2.600527, preload 0.000000
G1 X33.132 Y39.828 E0.00813 F2700
G1 X33.431 Y39.529 E0.02439
G1 X33.53 Y39.43 E0.00813
G1 X33.828 Y39.131 E0.02439
G1 X33.928 Y39.032 E0.00813
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y38.96 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.849 Y40.374 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X34.968 Y40.255 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.600527, preload 0.000000
; Prepare for Destring
G1 X34.889 Y40.334 E0.00648 F2700
G1 X34.651 Y40.572 E0.01943
G1 X34.572 Y40.651 E0.00647
G1 X34.334 Y40.889 E0.01943
G1 X34.255 Y40.968 E0.00648
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X34.255 Y40.968 Z1.161 E0 F300
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34.283 Y40.94 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.356 Y38.316 E0
G1 X32.603 Y37.482 E0
G1 X32.59 Y37.461 E0
G1 X32.586 Y37.437 E0
G1 X32.586 Y32.454 E0
G1 X32.303 Y31.606 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z1.111 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00712 F1350
G1 X32.114 Y30.045 E0.02135
G1 X32.116 Y29.275 E0.03558
G1 X32.118 Y28.198 E0.04982
G1 X32.223 Y28.111 E0.00626
G1 X33.82 Y28.112 E0.07385
G1 X35.799 Y28.112 E0.09148
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y30.208 E0.09153
G1 X35.882 Y31.804 E0.0738
G1 X35.776 Y31.888 E0.00626
G1 X34.711 Y31.888 E0.04926
G1 X33.95 Y31.888 E0.03518
G1 X33.493 Y31.888 E0.02111
G1 X33.341 Y31.888 E0.00704
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 15.000000, filament speed 0.693474, preload 0.000000
G1 X33.246 Y31.888 E0.00433 F900
G1 X32.867 Y31.893 E0.01752
G1 X32.197 Y31.9 E0.03097
G1 X31.709 Y32.2 E0.02645
G1 X31.709 Y32.2 E0.00003
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00004
G1 X31.708 Y32.197 E0.00011
G1 X31.708 Y31.033 E0.05378
G1 X31.709 Y29.571 E0.0676
G1 X31.71 Y27.81 E0.08142
G1 X31.722 Y27.771 E0.00188
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00109
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.20029
G1 X36.285 Y32.199 E0.00133
G1 X36.268 Y32.222 E0.00132
G1 X36.204 Y32.276 E0.00389
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00108
G1 X34.428 Y32.289 E0.08008
G1 X32.983 Y32.286 E0.06683
G1 X31.824 Y32.284 E0.05357
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00115
G1 X31.741 Y32.231 E0.00241
G1 X31.725 Y32.206 E0.00138
G1 X31.723 Y32.176 E0.00139
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02286
G1 X32.112 Y31.578 E0.0092
G1 X32.112 Y31.061 E0.02388
G1 X32.112 Y30.757 E0.01405
G1 X32.112 Y30.666 E0.00425
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y31.323 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.513 Y31.396 E0
; head speed 30.000000, filament speed 1.386948, preload 0.000000
G1 X32.513 Y31.221 E0.00808 F1800
G1 X32.514 Y30.697 E0.02426
G1 X32.516 Y29.823 E0.04042
G1 X32.519 Y28.599 E0.05658
G1 X32.619 Y28.512 E0.00614
G1 X33.894 Y28.512 E0.05891
G1 X35.398 Y28.513 E0.06953
G1 X35.488 Y28.621 E0.00652
G1 X35.487 Y30.121 E0.06933
G1 X35.487 Y31.398 E0.05902
G1 X35.379 Y31.487 E0.0065
G1 X34.342 Y31.485 E0.04795
G1 X33.533 Y31.483 E0.03737
G1 X32.953 Y31.481 E0.02681
G1 X32.602 Y31.48 E0.01624
G1 X32.513 Y31.396 E0.00568
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y31.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y30.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y30.876 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.600527, preload 0.000000
; Prepare for Destring
G1 X33.134 Y30.773 E0.00837 F2700
G1 X33.44 Y30.464 E0.02513
G1 X33.949 Y29.948 E0.04187
G1 X34 Y29.634 E0.0184
G1 X34 Y29.183 E0.02609
G1 X34 Y29.032 E0.00869
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y29.032 Z1.161 E0 F300
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 40%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y32.125 E0
G1 X33.151 Y37.546 E0
G1 X32.869 Y38.394 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 15.729866, post = 13.888210
; Dwell time remaining = -3.888210
;
; Post-layer lift
G1 X32.303 Y40.657 Z1.366 E0 F300
; END_LAYER_OBJECT z=1.111
; *** Estimate all extruders at 2.1 [s], Slowing 0.168x to 9.9 [s] ***
; BEGIN_LAYER_OBJECT z=1.316 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 3.8 [head mm/s]
G1 X66.182 Y73.879 Z1.366 E0 F9000
G1 X66.182 Y73.879 Z1.316 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 3.790283, filament speed 0.165776, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F227.4
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 2.5 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.526855, filament speed 0.110517, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F151.6
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72.566 E0
G1 X67.414 Y71.717 E0
G1 X67.414 Y71.717 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.4 [feed mm/s], 7.6 [head mm/s]
G1 X67.346 Y71.785 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 7.580566, filament speed 0.414440, preload 0.000000
; Prepare for Destring
G1 X67.158 Y71.957 E0.01395 F454.8
G1 X66.855 Y72 E0.01675
G1 X66.08 Y72.002 E0.04238
G1 X65.719 Y72.003 E0.01971
G1 X64.973 Y72.006 E0.04077
G1 X64.783 Y72.086 E0.01132
G1 X64.654 Y72.215 E0.00997
; Fan set to Cool value 50%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 7.6 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 7.580566, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X64.654 Y72.215 Z1.366 E0 F300
; Fan set to Cool value 50%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.586 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.974546, post = 9.929063
; Dwell time remaining = 0.070937
;
; Post-layer lift
G1 X66.283 Y73.98 Z1.439 E0 F300
; END_LAYER_OBJECT z=1.316
; BEGIN_LAYER_OBJECT z=1.389 z_thickness=0.278
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z1.439 E0 F9000
G1 X46.187 Y73.389 Z1.389 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00004
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y72.788 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.445 Y72.869 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600528, preload 0.000000
; Prepare for Destring
G1 X44.51 Y72.789 E0.00594 F2700
G1 X44.525 Y72.508 E0.01627
G1 X44.528 Y71.763 E0.04305
G1 X44.529 Y71.411 E0.02033
G1 X44.532 Y70.626 E0.04537
G1 X44.66 Y70.391 E0.01547
G1 X44.92 Y70.131 E0.02124
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X44.92 Y70.131 Z1.439 E0 F300
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X44.808 Y70.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.808 Y62.916 E0
G1 X44.813 Y62.891 E0
G1 X44.828 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z1.389 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.0071 F1350
G1 X44.507 Y62.388 E0.02129
G1 X43.739 Y62.388 E0.03549
G1 X42.664 Y62.388 E0.04968
G1 X42.61 Y62.185 E0.00968
G1 X42.61 Y60.585 E0.07399
G1 X42.61 Y58.61 E0.0913
G1 X44.011 Y58.613 E0.06473
G1 X45.233 Y58.616 E0.05652
G1 X46.278 Y58.618 E0.0483
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04949
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.0212
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.497 Y62.788 E0.05336
G1 X44.051 Y62.788 E0.06683
G1 X42.314 Y62.788 E0.0803
G1 X42.274 Y62.774 E0.00195
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00694
G1 X42.208 Y58.275 E0.19974
G1 X42.217 Y58.242 E0.0016
G1 X42.242 Y58.218 E0.0016
G1 X42.275 Y58.209 E0.00159
G1 X46.679 Y58.217 E0.20362
G1 X46.753 Y58.257 E0.00389
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08336
G1 X46.783 Y61.609 E0.06889
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01467
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y62.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.525 Y61.867 E0
; head speed 45.000000, filament speed 2.600528, preload 0.000000
G1 X44.534 Y61.546 E0.01857 F2700
G1 X44.662 Y61.338 E0.01409
G1 X45.233 Y60.77 E0.04655
G1 X45.607 Y60.398 E0.03049
G1 X45.741 Y60.343 E0.00837
G1 X45.867 Y60.343 E0.0073
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y59.212 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.525 Y59.154 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600528, preload 0.000000
; Prepare for Destring
G1 X44.518 Y59.208 E0.00315 F2700
G1 X44.385 Y59.352 E0.01136
G1 X44.015 Y59.72 E0.03015
G1 X43.822 Y59.912 E0.01571
G1 X43.442 Y60.289 E0.03097
G1 X43.289 Y60.343 E0.00938
G1 X43.13 Y60.343 E0.00915
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X43.13 Y60.343 Z1.439 E0 F300
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.394 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X42.198 Y61.457 E0
G1 X42.178 Y61.47 E0
G1 X42.155 Y61.475 E0
G1 X37.7 Y61.58 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z1.389 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.0071 F1350
G1 X34.512 Y62.388 E0.02132
G1 X33.744 Y62.388 E0.03552
G1 X32.668 Y62.388 E0.04973
G1 X32.61 Y62.183 E0.00982
G1 X32.61 Y60.584 E0.07396
G1 X32.61 Y58.61 E0.09124
G1 X34.012 Y58.613 E0.06482
G1 X35.236 Y58.616 E0.05659
G1 X36.282 Y58.618 E0.04835
G1 X36.388 Y58.681 E0.00568
G1 X36.388 Y59.75 E0.04946
G1 X36.388 Y60.515 E0.03533
G1 X36.388 Y60.973 E0.0212
G1 X36.388 Y61.126 E0.00709
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X36.388 Y61.315 E0.00269 F900
G1 X36.393 Y61.65 E0.0155
G1 X36.402 Y62.283 E0.02927
G1 X36.786 Y62.786 E0.02924
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05436
G1 X34.118 Y62.788 E0.06879
G1 X32.318 Y62.788 E0.08322
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.218 E0.0016
G1 X32.276 Y58.209 E0.00159
G1 X36.684 Y58.217 E0.20379
G1 X36.757 Y58.264 E0.00404
G1 X36.78 Y58.288 E0.00153
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08327
G1 X36.788 Y61.609 E0.06881
G1 X36.788 Y62.785 E0.05436
G1 X36.788 Y62.786 E0.00003
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.782 Y62.785 E0.00018
G1 X36.277 Y62.401 E0.02931
G1 X35.649 Y62.392 E0.02904
G1 X35.316 Y62.388 E0.01543
G1 X35.256 Y62.388 E0.00274
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y62.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.475 Y61.867 E0
; head speed 45.000000, filament speed 2.600528, preload 0.000000
G1 X35.483 Y61.546 E0.01857 F2700
G1 X35.611 Y61.338 E0.01409
G1 X35.869 Y61.08 E0.0211
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.757 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y59.212 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.475 Y59.154 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600528, preload 0.000000
; Prepare for Destring
G1 X35.467 Y59.208 E0.00315 F2700
G1 X35.334 Y59.352 E0.01136
G1 X34.961 Y59.721 E0.03031
G1 X34.383 Y60.292 E0.04697
G1 X34.068 Y60.343 E0.01841
G1 X33.561 Y60.343 E0.02934
G1 X33.256 Y60.343 E0.0176
G1 X33.154 Y60.343 E0.00587
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X33.154 Y60.343 Z1.439 E0 F300
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.212 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.626 Y61.757 E0
G1 X35.475 Y62.04 E0
G1 X36.832 Y63.043 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z1.389 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.0071 F1350
G1 X32.114 Y40.04 E0.02131
G1 X32.116 Y39.272 E0.03551
G1 X32.118 Y38.196 E0.04972
G1 X32.224 Y38.112 E0.00624
G1 X33.822 Y38.115 E0.07387
G1 X35.801 Y38.119 E0.09152
G1 X35.889 Y38.219 E0.00616
G1 X35.885 Y40.204 E0.09174
G1 X35.882 Y41.803 E0.07393
G1 X35.777 Y41.889 E0.00627
G1 X34.714 Y41.889 E0.04918
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.971 E0.0533
G1 X31.708 Y39.54 E0.0662
G1 X31.709 Y37.829 E0.07908
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00132
G1 X31.796 Y37.724 E0.00389
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00109
G1 X36.188 Y37.711 E0.20105
G1 X36.226 Y37.722 E0.00182
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00538
G1 X36.291 Y42.19 E0.20011
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00188
G1 X36.132 Y42.292 E0.00557
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.869 Y40.091 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X32.632 Y40.091 E0
; head speed 45.000000, filament speed 2.600528, preload 0.000000
G1 X32.829 Y40.099 E0.01143 F2700
G1 X33.007 Y40.229 E0.0127
G1 X33.394 Y40.619 E0.03176
G1 X33.582 Y40.807 E0.01535
G1 X33.942 Y41.169 E0.02955
G1 X34 Y41.281 E0.00725
G1 X34 Y41.368 E0.00506
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y41.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.131 Y40.091 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.368 Y40.091 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600528, preload 0.000000
; Prepare for Destring
G1 X35.171 Y40.083 E0.01143 F2700
G1 X34.993 Y39.953 E0.0127
G1 X34.604 Y39.561 E0.03195
G1 X34.439 Y39.394 E0.01356
G1 X34.053 Y39.005 E0.03165
G1 X34 Y38.828 E0.01067
G1 X34 Y38.631 E0.01138
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X34 Y38.631 Z1.439 E0 F300
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y38.394 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.169 Y37.482 E0
G1 X33.156 Y37.461 E0
G1 X33.151 Y37.437 E0
G1 X33.151 Y32.454 E0
G1 X32.869 Y31.606 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z1.389 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040211, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00712 F1350
G1 X32.114 Y30.045 E0.02135
G1 X32.116 Y29.275 E0.03558
G1 X32.118 Y28.198 E0.04982
G1 X32.223 Y28.111 E0.00626
G1 X33.82 Y28.112 E0.07385
G1 X35.799 Y28.112 E0.09148
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y30.208 E0.09153
G1 X35.882 Y31.804 E0.0738
G1 X35.776 Y31.888 E0.00626
G1 X34.711 Y31.888 E0.04926
G1 X33.95 Y31.888 E0.03518
G1 X33.493 Y31.888 E0.02111
G1 X33.341 Y31.888 E0.00704
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 15.000001, filament speed 0.693474, preload 0.000000
G1 X33.246 Y31.888 E0.00433 F900
G1 X32.867 Y31.893 E0.01752
G1 X32.197 Y31.9 E0.03097
G1 X31.709 Y32.2 E0.02645
G1 X31.709 Y32.2 E0.00003
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00004
G1 X31.708 Y32.197 E0.00011
G1 X31.708 Y31.033 E0.05378
G1 X31.709 Y29.571 E0.0676
G1 X31.71 Y27.81 E0.08142
G1 X31.722 Y27.771 E0.00188
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00133
G1 X36.277 Y27.796 E0.00387
G1 X36.288 Y27.816 E0.00109
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.20029
G1 X36.285 Y32.199 E0.00132
G1 X36.268 Y32.222 E0.00133
G1 X36.204 Y32.276 E0.00389
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00108
G1 X34.428 Y32.289 E0.08008
G1 X32.983 Y32.286 E0.06683
G1 X31.824 Y32.284 E0.05357
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00115
G1 X31.741 Y32.231 E0.00241
G1 X31.725 Y32.206 E0.00138
G1 X31.723 Y32.176 E0.00139
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02286
G1 X32.112 Y31.578 E0.0092
G1 X32.112 Y31.061 E0.02388
G1 X32.112 Y30.757 E0.01405
G1 X32.112 Y30.666 E0.00425
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.566 Y31.04 E0
G1 X35.131 Y31.04 E0
G1 X35.131 Y31.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.368 Y31.04 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600528, preload 0.000000
; Prepare for Destring
G1 X35.171 Y31.032 E0.01143 F2700
G1 X34.993 Y30.902 E0.0127
G1 X34.603 Y30.508 E0.03207
G1 X34.051 Y29.948 E0.04542
G1 X34 Y29.634 E0.01841
G1 X34 Y29.077 E0.03217
G1 X34 Y28.743 E0.01931
G1 X34 Y28.632 E0.00644
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y28.632 Z1.439 E0 F300
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 44%
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y32.125 E0
G1 X33.151 Y37.546 E0
G1 X32.869 Y38.394 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 13.603247, post = 11.961513
; Dwell time remaining = -1.961513
;
; Post-layer lift
G1 X32.303 Y40.657 Z1.629 E0 F300
; END_LAYER_OBJECT z=1.389
; *** Estimate all extruders at 2.6 [s], Slowing 0.200x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=1.579 z_thickness=0.263
; Fan set to Cool value 50%
; fan %*255
M106 S128
;
; 'Loop Path', 0.2 [feed mm/s], 4.5 [head mm/s]
G1 X66.182 Y73.879 Z1.629 E0 F9000
G1 X66.182 Y73.879 Z1.579 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 4.493408, filament speed 0.196529, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F269.6
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.0 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.995605, filament speed 0.131019, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F179.7
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.0 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 5.991210, filament speed 0.262038, preload 0.000000
G1 X66.948 Y73.125 E0.00553 F359.5
G1 X66.642 Y73.349 E0.0166
G1 X66.135 Y73.487 E0.023
G1 X65.637 Y73.452 E0.02183
G1 X65.109 Y73.199 E0.02562
G1 X64.754 Y72.818 E0.02275
G1 X64.547 Y72.351 E0.02235
G1 X64.518 Y71.804 E0.02393
G1 X64.682 Y71.299 E0.02326
G1 X65.017 Y70.875 E0.02361
G1 X65.485 Y70.598 E0.02383
G1 X66.055 Y70.504 E0.02526
G1 X66.578 Y70.623 E0.02347
G1 X67.032 Y70.919 E0.02367
G1 X67.35 Y71.36 E0.02381
G1 X67.49 Y71.876 E0.02339
G1 X67.432 Y72.428 E0.02427
G1 X67.172 Y72.919 E0.02427
G1 X67.051 Y73.051 E0.00785
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.5 [feed mm/s], 9.0 [head mm/s]
G1 X66.968 Y72 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.986816, filament speed 0.491321, preload 0.000000
; Prepare for Destring
G1 X66.847 Y72 E0.00661 F539.2
G1 X66.484 Y72 E0.01984
G1 X65.516 Y72 E0.05291
G1 X65.153 Y72 E0.01984
G1 X65.032 Y72 E0.00661
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 9.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 8.986816, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X65.032 Y72 Z1.629 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.869 Y72 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66 Y73.131 E0
G1 X66.283 Y73.98 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 10.002649, post = 9.865006
; Dwell time remaining = 0.134993
;
; Post-layer lift
G1 X66.283 Y73.98 Z1.717 E0 F300
; END_LAYER_OBJECT z=1.579
; BEGIN_LAYER_OBJECT z=1.667 z_thickness=0.278
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z1.717 E0 F9000
G1 X46.187 Y73.389 Z1.667 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00003
G1 X47.786 Y73.788 E0.00018
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X46.989 Y72.989 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 30.000000, filament speed 1.386947, preload 0.000000
; Prepare for Destring
G1 X46.81 Y72.989 E0.0083 F1800
G1 X46.271 Y72.987 E0.02489
G1 X45.374 Y72.985 E0.04148
G1 X44.118 Y72.981 E0.05807
G1 X44.012 Y72.918 E0.00571
G1 X44.012 Y71.587 E0.06154
G1 X44.012 Y70.012 E0.07282
G1 X45.592 Y70.012 E0.07307
G1 X46.927 Y70.012 E0.06171
G1 X46.989 Y70.18 E0.00828
G1 X46.989 Y71.409 E0.05681
G1 X46.989 Y72.286 E0.04059
G1 X46.989 Y72.813 E0.02436
G1 X46.989 Y72.989 E0.00813
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.989 Y72.989 Z1.717 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.772 Y69.465 E0
G1 X45.374 Y68.392 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z1.667 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.0071 F1350
G1 X44.507 Y62.388 E0.02129
G1 X43.739 Y62.388 E0.03549
G1 X42.664 Y62.388 E0.04968
G1 X42.61 Y62.185 E0.00968
G1 X42.61 Y60.585 E0.07399
G1 X42.61 Y58.61 E0.0913
G1 X44.011 Y58.613 E0.06473
G1 X45.233 Y58.616 E0.05652
G1 X46.278 Y58.618 E0.0483
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04949
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.0212
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.497 Y62.788 E0.05336
G1 X44.051 Y62.788 E0.06683
G1 X42.314 Y62.788 E0.0803
G1 X42.274 Y62.774 E0.00195
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00694
G1 X42.208 Y58.275 E0.19974
G1 X42.217 Y58.242 E0.0016
G1 X42.242 Y58.218 E0.00159
G1 X42.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.20362
G1 X46.753 Y58.257 E0.00389
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08336
G1 X46.783 Y61.609 E0.06889
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01467
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 30.000000, filament speed 1.386947, preload 0.000000
G1 X45.799 Y61.988 E0.00844 F1800
G1 X45.251 Y61.988 E0.02533
G1 X44.338 Y61.988 E0.04222
G1 X43.059 Y61.988 E0.05911
G1 X43.011 Y61.738 E0.01175
G1 X43.011 Y60.479 E0.0582
G1 X43.011 Y59.011 E0.0679
G1 X44.563 Y59.015 E0.07174
G1 X45.878 Y59.019 E0.06082
G1 X45.988 Y59.076 E0.00572
G1 X45.985 Y60.349 E0.05888
G1 X45.983 Y61.259 E0.04207
G1 X45.982 Y61.805 E0.02525
G1 X45.982 Y61.988 E0.00844
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y61.475 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.518 Y61.467 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X44.409 Y61.358 E0.00896 F2700
G1 X44.08 Y61.029 E0.02686
G1 X43.97 Y60.919 E0.00896
G1 X43.642 Y60.591 E0.02686
G1 X43.532 Y60.481 E0.00896
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.394 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.808 Y59.495 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.846 Y59.532 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X44.915 Y59.601 E0.00565 F2700
G1 X45.122 Y59.809 E0.01696
G1 X45.192 Y59.878 E0.00565
G1 X45.399 Y60.085 E0.01696
G1 X45.468 Y60.154 E0.00565
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.468 Y60.154 Z1.717 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y60.06 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X42.616 Y61.076 E0
G1 X41.544 Y61.475 E0
G1 X37.7 Y61.58 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z1.667 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.0071 F1350
G1 X34.512 Y62.388 E0.02132
G1 X33.744 Y62.388 E0.03552
G1 X32.668 Y62.388 E0.04973
G1 X32.61 Y62.183 E0.00982
G1 X32.61 Y60.584 E0.07396
G1 X32.61 Y58.61 E0.09124
G1 X34.012 Y58.613 E0.06482
G1 X35.236 Y58.616 E0.05659
G1 X36.282 Y58.618 E0.04835
G1 X36.388 Y58.681 E0.00568
G1 X36.388 Y59.75 E0.04946
G1 X36.388 Y60.515 E0.03533
G1 X36.388 Y60.973 E0.0212
G1 X36.388 Y61.126 E0.00709
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X36.388 Y61.315 E0.00269 F900
G1 X36.393 Y61.65 E0.0155
G1 X36.402 Y62.283 E0.02927
G1 X36.786 Y62.786 E0.02924
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05436
G1 X34.118 Y62.788 E0.06879
G1 X32.318 Y62.788 E0.08322
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.218 E0.00159
G1 X32.276 Y58.209 E0.0016
G1 X36.684 Y58.217 E0.20379
G1 X36.757 Y58.264 E0.00404
G1 X36.78 Y58.288 E0.00153
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08327
G1 X36.788 Y61.609 E0.06881
G1 X36.788 Y62.785 E0.05436
G1 X36.788 Y62.786 E0.00003
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.782 Y62.785 E0.00017
G1 X36.277 Y62.401 E0.02932
G1 X35.649 Y62.392 E0.02904
G1 X35.316 Y62.388 E0.01543
G1 X35.256 Y62.388 E0.00274
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.04 Y62.04 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X35.988 Y61.988 E0
; head speed 30.000000, filament speed 1.386947, preload 0.000000
G1 X35.806 Y61.988 E0.00842 F1800
G1 X35.259 Y61.988 E0.02526
G1 X34.349 Y61.988 E0.04211
G1 X33.074 Y61.988 E0.05894
G1 X33.011 Y61.821 E0.00825
G1 X33.011 Y60.528 E0.05976
G1 X33.011 Y59.01 E0.07017
G1 X34.565 Y59.015 E0.07186
G1 X35.882 Y59.019 E0.06089
G1 X35.988 Y59.082 E0.00572
G1 X35.988 Y60.353 E0.05875
G1 X35.988 Y61.261 E0.04198
G1 X35.988 Y61.806 E0.02519
G1 X35.988 Y61.988 E0.00841
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.04 Y62.04 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y61.475 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.467 Y61.467 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X35.347 Y61.348 E0.0098 F2700
G1 X34.985 Y60.99 E0.02938
G1 X34.383 Y60.394 E0.04898
G1 X34.068 Y60.343 E0.01841
G1 X33.665 Y60.343 E0.0233
G1 X33.531 Y60.343 E0.00777
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X33.531 Y60.343 Z1.717 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.777 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y62.04 E0
G1 X36.323 Y62.323 E0
G1 X36.889 Y63.172 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z1.667 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.0071 F1350
G1 X32.114 Y40.04 E0.02131
G1 X32.116 Y39.272 E0.03551
G1 X32.118 Y38.196 E0.04972
G1 X32.224 Y38.112 E0.00624
G1 X33.822 Y38.115 E0.07387
G1 X35.801 Y38.119 E0.09152
G1 X35.889 Y38.219 E0.00616
G1 X35.885 Y40.204 E0.09174
G1 X35.882 Y41.803 E0.07393
G1 X35.777 Y41.889 E0.00627
G1 X34.714 Y41.889 E0.04918
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.971 E0.0533
G1 X31.708 Y39.54 E0.0662
G1 X31.709 Y37.829 E0.07908
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00132
G1 X31.796 Y37.724 E0.00389
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00109
G1 X36.188 Y37.711 E0.20105
G1 X36.226 Y37.722 E0.00182
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00538
G1 X36.291 Y42.19 E0.20011
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00558
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02978
G1 X32.112 Y40.751 E0.01691
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 30.000000, filament speed 1.386947, preload 0.000000
G1 X32.513 Y41.378 E0.00658 F1800
G1 X32.513 Y40.847 E0.02457
G1 X32.513 Y39.922 E0.04277
G1 X32.513 Y38.603 E0.06097
G1 X32.621 Y38.513 E0.0065
G1 X33.9 Y38.515 E0.05911
G1 X35.401 Y38.519 E0.06942
G1 X35.488 Y38.619 E0.00611
G1 X35.484 Y40.126 E0.06968
G1 X35.482 Y41.402 E0.05899
G1 X35.38 Y41.488 E0.00614
G1 X34.165 Y41.488 E0.05617
G1 X33.298 Y41.488 E0.04013
G1 X32.777 Y41.488 E0.02407
G1 X32.603 Y41.488 E0.00802
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y39.808 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y39.927 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X33.132 Y39.828 E0.00813 F2700
G1 X33.431 Y39.529 E0.02439
G1 X33.53 Y39.43 E0.00813
G1 X33.828 Y39.131 E0.02439
G1 X33.928 Y39.032 E0.00813
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y38.96 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.849 Y40.374 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X34.968 Y40.255 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X34.889 Y40.334 E0.00648 F2700
G1 X34.651 Y40.572 E0.01943
G1 X34.572 Y40.651 E0.00647
G1 X34.334 Y40.889 E0.01943
G1 X34.255 Y40.968 E0.00648
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X34.255 Y40.968 Z1.717 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34.283 Y40.94 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.356 Y38.316 E0
G1 X32.603 Y37.482 E0
G1 X32.59 Y37.461 E0
G1 X32.586 Y37.437 E0
G1 X32.586 Y32.454 E0
G1 X32.303 Y31.606 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z1.667 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00712 F1350
G1 X32.114 Y30.045 E0.02135
G1 X32.116 Y29.275 E0.03558
G1 X32.118 Y28.198 E0.04982
G1 X32.223 Y28.111 E0.00626
G1 X33.82 Y28.112 E0.07385
G1 X35.799 Y28.112 E0.09148
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y30.208 E0.09153
G1 X35.882 Y31.804 E0.0738
G1 X35.776 Y31.888 E0.00626
G1 X34.711 Y31.888 E0.04926
G1 X33.95 Y31.888 E0.03518
G1 X33.493 Y31.888 E0.02111
G1 X33.341 Y31.888 E0.00704
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y31.888 E0.00433 F900
G1 X32.867 Y31.893 E0.01752
G1 X32.197 Y31.9 E0.03098
G1 X31.709 Y32.2 E0.02644
G1 X31.709 Y32.2 E0.00003
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00004
G1 X31.708 Y32.197 E0.00011
G1 X31.708 Y31.033 E0.05378
G1 X31.709 Y29.571 E0.0676
G1 X31.71 Y27.81 E0.08142
G1 X31.722 Y27.771 E0.00188
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00109
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.20029
G1 X36.285 Y32.199 E0.00132
G1 X36.268 Y32.222 E0.00133
G1 X36.204 Y32.276 E0.00389
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00108
G1 X34.428 Y32.289 E0.08008
G1 X32.983 Y32.286 E0.06683
G1 X31.824 Y32.284 E0.05357
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00115
G1 X31.741 Y32.231 E0.0024
G1 X31.725 Y32.206 E0.00139
G1 X31.723 Y32.176 E0.00139
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02286
G1 X32.112 Y31.578 E0.0092
G1 X32.112 Y31.061 E0.02388
G1 X32.112 Y30.757 E0.01405
G1 X32.112 Y30.666 E0.00425
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y31.323 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.513 Y31.396 E0
; head speed 30.000000, filament speed 1.386947, preload 0.000000
G1 X32.513 Y31.221 E0.00808 F1800
G1 X32.514 Y30.697 E0.02426
G1 X32.516 Y29.823 E0.04042
G1 X32.519 Y28.599 E0.05658
G1 X32.619 Y28.512 E0.00614
G1 X33.894 Y28.512 E0.05891
G1 X35.398 Y28.513 E0.06953
G1 X35.488 Y28.621 E0.00651
G1 X35.487 Y30.121 E0.06934
G1 X35.487 Y31.398 E0.05902
G1 X35.379 Y31.487 E0.0065
G1 X34.342 Y31.485 E0.04795
G1 X33.533 Y31.483 E0.03737
G1 X32.953 Y31.481 E0.02681
G1 X32.602 Y31.48 E0.01624
G1 X32.513 Y31.396 E0.00568
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y31.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y30.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y30.876 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X33.134 Y30.773 E0.00837 F2700
G1 X33.44 Y30.464 E0.02513
G1 X33.949 Y29.948 E0.04187
G1 X34 Y29.634 E0.0184
G1 X34 Y29.183 E0.02608
G1 X34 Y29.032 E0.0087
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y29.032 Z1.717 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y32.125 E0
G1 X33.151 Y37.546 E0
G1 X32.869 Y38.394 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 15.729866, post = 13.888209
; Dwell time remaining = -3.888210
;
; Post-layer lift
G1 X32.303 Y40.657 Z1.892 E0 F300
; END_LAYER_OBJECT z=1.667
; *** Estimate all extruders at 2.1 [s], Slowing 0.168x to 9.9 [s] ***
; BEGIN_LAYER_OBJECT z=1.842 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 3.8 [head mm/s]
G1 X66.182 Y73.879 Z1.892 E0 F9000
G1 X66.182 Y73.879 Z1.842 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 3.790283, filament speed 0.165776, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F227.4
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 2.5 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.526855, filament speed 0.110517, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F151.6
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72.566 E0
G1 X67.414 Y71.717 E0
G1 X67.414 Y71.717 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.4 [feed mm/s], 7.6 [head mm/s]
G1 X67.346 Y71.785 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 7.580566, filament speed 0.414440, preload 0.000000
; Prepare for Destring
G1 X67.158 Y71.957 E0.01395 F454.8
G1 X66.855 Y72 E0.01675
G1 X66.08 Y72.002 E0.04238
G1 X65.719 Y72.003 E0.01971
G1 X64.973 Y72.006 E0.04077
G1 X64.783 Y72.086 E0.01132
G1 X64.654 Y72.215 E0.00997
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 7.6 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 7.580566, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X64.654 Y72.215 Z1.892 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.586 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.974546, post = 9.929063
; Dwell time remaining = 0.070937
;
; Post-layer lift
G1 X66.283 Y73.98 Z1.994 E0 F300
; END_LAYER_OBJECT z=1.842
; BEGIN_LAYER_OBJECT z=1.944 z_thickness=0.277
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z1.994 E0 F9000
G1 X46.187 Y73.389 Z1.944 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.036470, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00711 F1350
G1 X45.57 Y73.387 E0.02132
G1 X44.798 Y73.385 E0.03554
G1 X43.718 Y73.381 E0.04976
G1 X43.612 Y73.319 E0.00566
G1 X43.612 Y72.264 E0.04864
G1 X43.612 Y71.028 E0.05693
G1 X43.612 Y69.612 E0.06523
G1 X45.033 Y69.612 E0.06548
G1 X46.273 Y69.612 E0.05713
G1 X47.332 Y69.612 E0.04877
G1 X47.39 Y69.817 E0.0098
G1 X47.39 Y70.853 E0.04775
G1 X47.39 Y71.594 E0.03411
G1 X47.39 Y72.038 E0.02048
G1 X47.39 Y72.187 E0.00683
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.690980, preload 0.000000
G1 X47.39 Y72.317 E0.00269 F900
G1 X47.395 Y72.652 E0.01545
G1 X47.404 Y73.285 E0.02916
G1 X47.79 Y73.79 E0.02928
G1 X47.79 Y73.79 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05424
G1 X45.12 Y73.786 E0.06864
G1 X43.317 Y73.783 E0.08305
G1 X43.243 Y73.736 E0.00402
G1 X43.22 Y73.712 E0.00153
G1 X43.212 Y73.68 E0.00153
G1 X43.212 Y69.278 E0.20276
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.00159
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20284
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00191
G1 X47.791 Y69.404 E0.00702
G1 X47.791 Y71.169 E0.08132
G1 X47.791 Y72.631 E0.06733
G1 X47.791 Y73.788 E0.05332
G1 X47.791 Y73.789 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00003
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02931
G1 X46.65 Y73.394 E0.02896
G1 X46.317 Y73.389 E0.01537
G1 X46.258 Y73.389 E0.00271
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y72.788 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.445 Y72.869 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.591174, preload 0.000000
; Prepare for Destring
G1 X44.51 Y72.789 E0.00592 F2700
G1 X44.525 Y72.508 E0.01621
G1 X44.528 Y71.763 E0.0429
G1 X44.529 Y71.411 E0.02026
G1 X44.532 Y70.626 E0.0452
G1 X44.66 Y70.391 E0.01541
G1 X44.92 Y70.131 E0.02116
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X44.92 Y70.131 Z1.994 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X44.808 Y70.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.808 Y62.916 E0
G1 X44.813 Y62.891 E0
G1 X44.828 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z1.944 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.036470, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.00707 F1350
G1 X44.507 Y62.388 E0.02122
G1 X43.739 Y62.388 E0.03536
G1 X42.664 Y62.388 E0.0495
G1 X42.61 Y62.185 E0.00965
G1 X42.61 Y60.585 E0.07372
G1 X42.61 Y58.61 E0.09097
G1 X44.011 Y58.613 E0.0645
G1 X45.233 Y58.616 E0.05632
G1 X46.278 Y58.618 E0.04813
G1 X46.388 Y58.674 E0.00566
G1 X46.388 Y59.745 E0.04931
G1 X46.388 Y60.509 E0.03522
G1 X46.388 Y60.968 E0.02114
G1 X46.388 Y61.121 E0.00704
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.690980, preload 0.000000
G1 X46.388 Y61.309 E0.00215 F900
G1 X46.392 Y61.635 E0.015
G1 X46.4 Y62.271 E0.02929
G1 X46.737 Y62.707 E0.02536
G1 X46.761 Y62.751 E0.00233
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.00069
G1 X46.742 Y62.784 E0.0007
G1 X46.651 Y62.788 E0.0042
G1 X45.497 Y62.788 E0.05317
G1 X44.051 Y62.788 E0.06659
G1 X42.314 Y62.788 E0.08001
G1 X42.274 Y62.774 E0.00194
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00691
G1 X42.208 Y58.275 E0.19902
G1 X42.217 Y58.242 E0.00159
G1 X42.242 Y58.218 E0.00159
G1 X42.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.20288
G1 X46.753 Y58.257 E0.00388
G1 X46.779 Y58.282 E0.00163
G1 X46.788 Y58.316 E0.00163
G1 X46.786 Y60.119 E0.08307
G1 X46.783 Y61.609 E0.06863
G1 X46.782 Y62.785 E0.0542
G1 X46.781 Y62.786 E0.00004
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.777 Y62.785 E0.00015
G1 X46.219 Y62.388 E0.03155
G1 X45.627 Y62.388 E0.02727
G1 X45.309 Y62.388 E0.01462
G1 X45.25 Y62.388 E0.00273
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y62.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.525 Y61.867 E0
; head speed 45.000004, filament speed 2.591174, preload 0.000000
G1 X44.534 Y61.546 E0.01851 F2700
G1 X44.662 Y61.338 E0.01403
G1 X45.233 Y60.77 E0.04639
G1 X45.607 Y60.398 E0.03037
G1 X45.741 Y60.343 E0.00835
G1 X45.867 Y60.343 E0.00727
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y59.212 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.525 Y59.154 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.591174, preload 0.000000
; Prepare for Destring
G1 X44.518 Y59.208 E0.00314 F2700
G1 X44.385 Y59.352 E0.01131
G1 X44.015 Y59.72 E0.03005
G1 X43.822 Y59.912 E0.01566
G1 X43.442 Y60.289 E0.03085
G1 X43.289 Y60.343 E0.00935
G1 X43.13 Y60.343 E0.00912
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X43.13 Y60.343 Z1.994 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.394 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X42.198 Y61.457 E0
G1 X42.178 Y61.47 E0
G1 X42.155 Y61.475 E0
G1 X37.7 Y61.58 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z1.944 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.036470, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.00708 F1350
G1 X34.512 Y62.388 E0.02124
G1 X33.744 Y62.388 E0.03539
G1 X32.668 Y62.388 E0.04955
G1 X32.61 Y62.183 E0.00978
G1 X32.61 Y60.584 E0.0737
G1 X32.61 Y58.61 E0.09091
G1 X34.012 Y58.613 E0.06459
G1 X35.236 Y58.616 E0.05638
G1 X36.282 Y58.618 E0.04818
G1 X36.388 Y58.681 E0.00566
G1 X36.388 Y59.75 E0.04928
G1 X36.388 Y60.515 E0.0352
G1 X36.388 Y60.973 E0.02113
G1 X36.388 Y61.126 E0.00706
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 15.000000, filament speed 0.690980, preload 0.000000
G1 X36.388 Y61.315 E0.00268 F900
G1 X36.393 Y61.65 E0.01544
G1 X36.402 Y62.283 E0.02917
G1 X36.786 Y62.786 E0.02914
G1 X36.787 Y62.787 E0.00003
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05417
G1 X34.118 Y62.788 E0.06854
G1 X32.318 Y62.788 E0.08292
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00191
G1 X32.209 Y62.596 E0.007
G1 X32.209 Y58.275 E0.19904
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.218 E0.00159
G1 X32.276 Y58.209 E0.00159
G1 X36.684 Y58.217 E0.20305
G1 X36.757 Y58.264 E0.00403
G1 X36.78 Y58.288 E0.00152
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08297
G1 X36.788 Y61.609 E0.06856
G1 X36.788 Y62.785 E0.05416
G1 X36.788 Y62.786 E0.00004
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.787 E0.00004
G1 X36.782 Y62.785 E0.00017
G1 X36.277 Y62.401 E0.02921
G1 X35.649 Y62.392 E0.02893
G1 X35.316 Y62.388 E0.01538
G1 X35.256 Y62.388 E0.00273
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y62.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.475 Y61.867 E0
; head speed 45.000004, filament speed 2.591174, preload 0.000000
G1 X35.483 Y61.546 E0.01851 F2700
G1 X35.611 Y61.338 E0.01403
G1 X35.869 Y61.08 E0.02103
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.757 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y59.212 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.475 Y59.154 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.591174, preload 0.000000
; Prepare for Destring
G1 X35.467 Y59.208 E0.00314 F2700
G1 X35.334 Y59.352 E0.01131
G1 X34.961 Y59.721 E0.03021
G1 X34.383 Y60.292 E0.0468
G1 X34.068 Y60.343 E0.01834
G1 X33.561 Y60.343 E0.02924
G1 X33.256 Y60.343 E0.01754
G1 X33.154 Y60.343 E0.00585
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X33.154 Y60.343 Z1.994 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.212 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.626 Y61.757 E0
G1 X35.475 Y62.04 E0
G1 X36.832 Y63.043 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z1.944 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.036470, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.00708 F1350
G1 X32.114 Y40.04 E0.02123
G1 X32.116 Y39.272 E0.03538
G1 X32.118 Y38.196 E0.04954
G1 X32.224 Y38.112 E0.00622
G1 X33.822 Y38.115 E0.0736
G1 X35.801 Y38.119 E0.09119
G1 X35.889 Y38.219 E0.00614
G1 X35.885 Y40.204 E0.09141
G1 X35.882 Y41.803 E0.07367
G1 X35.777 Y41.889 E0.00625
G1 X34.714 Y41.889 E0.04899
G1 X33.954 Y41.889 E0.035
G1 X33.498 Y41.889 E0.021
G1 X33.346 Y41.889 E0.007
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.690980, preload 0.000000
G1 X33.246 Y41.889 E0.00406 F900
G1 X32.909 Y41.892 E0.01552
G1 X32.32 Y41.899 E0.02711
G1 X31.902 Y42.187 E0.0234
G1 X31.829 Y42.259 E0.00473
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00144
G1 X31.751 Y42.242 E0.00143
G1 X31.708 Y42.124 E0.00576
G1 X31.708 Y40.971 E0.05312
G1 X31.708 Y39.54 E0.06595
G1 X31.709 Y37.829 E0.0788
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00131
G1 X31.796 Y37.724 E0.00387
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00108
G1 X36.188 Y37.711 E0.20034
G1 X36.226 Y37.722 E0.00181
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00535
G1 X36.291 Y42.19 E0.19939
G1 X36.278 Y42.229 E0.00187
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00556
G1 X34.395 Y42.292 E0.07998
G1 X32.952 Y42.292 E0.06649
G1 X31.802 Y42.292 E0.05299
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02807
G1 X32.112 Y41.117 E0.02968
G1 X32.112 Y40.751 E0.01685
G1 X32.112 Y40.659 E0.00423
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.869 Y40.091 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X32.632 Y40.091 E0
; head speed 45.000004, filament speed 2.591174, preload 0.000000
G1 X32.829 Y40.099 E0.01139 F2700
G1 X33.007 Y40.229 E0.01265
G1 X33.394 Y40.619 E0.03165
G1 X33.582 Y40.807 E0.01529
G1 X33.942 Y41.169 E0.02945
G1 X34 Y41.281 E0.00722
G1 X34 Y41.368 E0.00504
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y41.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.131 Y40.091 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.368 Y40.091 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.591174, preload 0.000000
; Prepare for Destring
G1 X35.171 Y40.083 E0.01139 F2700
G1 X34.993 Y39.953 E0.01265
G1 X34.604 Y39.561 E0.03183
G1 X34.439 Y39.394 E0.01352
G1 X34.053 Y39.005 E0.03154
G1 X34 Y38.828 E0.01063
G1 X34 Y38.631 E0.01134
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X34 Y38.631 Z1.994 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y38.394 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.169 Y37.482 E0
G1 X33.156 Y37.461 E0
G1 X33.151 Y37.437 E0
G1 X33.151 Y32.454 E0
G1 X32.869 Y31.606 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z1.944 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.036470, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00709 F1350
G1 X32.114 Y30.045 E0.02128
G1 X32.116 Y29.275 E0.03545
G1 X32.118 Y28.198 E0.04964
G1 X32.223 Y28.111 E0.00623
G1 X33.82 Y28.112 E0.0736
G1 X35.799 Y28.112 E0.09114
G1 X35.889 Y28.228 E0.00674
G1 X35.885 Y30.208 E0.0912
G1 X35.882 Y31.804 E0.07354
G1 X35.776 Y31.888 E0.00623
G1 X34.711 Y31.888 E0.04908
G1 X33.95 Y31.888 E0.03506
G1 X33.493 Y31.888 E0.02104
G1 X33.341 Y31.888 E0.00701
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 15.000000, filament speed 0.690980, preload 0.000000
G1 X33.246 Y31.888 E0.00431 F900
G1 X32.867 Y31.893 E0.01746
G1 X32.197 Y31.9 E0.03086
G1 X31.709 Y32.2 E0.02635
G1 X31.709 Y32.2 E0.00004
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00003
G1 X31.708 Y32.197 E0.00012
G1 X31.708 Y31.033 E0.05358
G1 X31.709 Y29.571 E0.06736
G1 X31.71 Y27.81 E0.08113
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00186
G1 X31.868 Y27.708 E0.00553
G1 X36.171 Y27.708 E0.19824
G1 X36.199 Y27.715 E0.00131
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00387
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.19956
G1 X36.285 Y32.199 E0.00132
G1 X36.268 Y32.222 E0.00133
G1 X36.204 Y32.276 E0.00387
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00107
G1 X34.428 Y32.289 E0.0798
G1 X32.983 Y32.286 E0.06658
G1 X31.824 Y32.284 E0.05338
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00114
G1 X31.741 Y32.231 E0.0024
G1 X31.725 Y32.206 E0.00138
G1 X31.723 Y32.176 E0.00138
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02278
G1 X32.112 Y31.578 E0.00917
G1 X32.112 Y31.061 E0.02379
G1 X32.112 Y30.757 E0.014
G1 X32.112 Y30.666 E0.00423
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.566 Y31.04 E0
G1 X35.131 Y31.04 E0
G1 X35.131 Y31.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.368 Y31.04 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.591174, preload 0.000000
; Prepare for Destring
G1 X35.171 Y31.032 E0.01139 F2700
G1 X34.993 Y30.902 E0.01265
G1 X34.603 Y30.508 E0.03195
G1 X34.051 Y29.948 E0.04526
G1 X34 Y29.634 E0.01834
G1 X34 Y29.077 E0.03206
G1 X34 Y28.743 E0.01924
G1 X34 Y28.632 E0.00643
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y28.632 Z1.994 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y32.125 E0
G1 X33.151 Y37.546 E0
G1 X32.869 Y38.394 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 13.603248, post = 11.961514
; Dwell time remaining = -1.961514
;
; Post-layer lift
G1 X32.303 Y40.657 Z2.155 E0 F300
; END_LAYER_OBJECT z=1.944
; *** Estimate all extruders at 2.6 [s], Slowing 0.200x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=2.105 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 4.5 [head mm/s]
G1 X66.182 Y73.879 Z2.155 E0 F9000
G1 X66.182 Y73.879 Z2.105 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 4.493408, filament speed 0.196529, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F269.6
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.0 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.995605, filament speed 0.131019, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F179.7
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.0 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 5.991210, filament speed 0.262038, preload 0.000000
G1 X66.948 Y73.125 E0.00553 F359.5
G1 X66.642 Y73.349 E0.0166
G1 X66.135 Y73.487 E0.023
G1 X65.637 Y73.452 E0.02183
G1 X65.109 Y73.199 E0.02562
G1 X64.754 Y72.818 E0.02275
G1 X64.547 Y72.351 E0.02235
G1 X64.518 Y71.804 E0.02393
G1 X64.682 Y71.299 E0.02326
G1 X65.017 Y70.875 E0.02361
G1 X65.485 Y70.598 E0.02383
G1 X66.055 Y70.504 E0.02526
G1 X66.578 Y70.623 E0.02347
G1 X67.032 Y70.919 E0.02367
G1 X67.35 Y71.36 E0.02381
G1 X67.49 Y71.876 E0.02339
G1 X67.432 Y72.428 E0.02427
G1 X67.172 Y72.919 E0.02427
G1 X67.051 Y73.051 E0.00785
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.5 [feed mm/s], 9.0 [head mm/s]
G1 X66.968 Y72 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.986816, filament speed 0.491321, preload 0.000000
; Prepare for Destring
G1 X66.847 Y72 E0.00661 F539.2
G1 X66.484 Y72 E0.01984
G1 X65.516 Y72 E0.05291
G1 X65.153 Y72 E0.01984
G1 X65.032 Y72 E0.00661
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 9.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 8.986816, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X65.032 Y72 Z2.155 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.869 Y72 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66 Y73.131 E0
G1 X66.283 Y73.98 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 10.002649, post = 9.865006
; Dwell time remaining = 0.134993
;
; Post-layer lift
G1 X66.283 Y73.98 Z2.272 E0 F300
; END_LAYER_OBJECT z=2.105
; BEGIN_LAYER_OBJECT z=2.222 z_thickness=0.278
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z2.272 E0 F9000
G1 X46.187 Y73.389 Z2.222 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00003
G1 X47.786 Y73.788 E0.00018
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X46.989 Y72.989 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 30.000000, filament speed 1.386947, preload 0.000000
; Prepare for Destring
G1 X46.81 Y72.989 E0.0083 F1800
G1 X46.271 Y72.987 E0.02489
G1 X45.374 Y72.985 E0.04148
G1 X44.118 Y72.981 E0.05807
G1 X44.012 Y72.918 E0.00571
G1 X44.012 Y71.587 E0.06154
G1 X44.012 Y70.012 E0.07282
G1 X45.592 Y70.012 E0.07307
G1 X46.927 Y70.012 E0.06171
G1 X46.989 Y70.18 E0.00828
G1 X46.989 Y71.409 E0.05681
G1 X46.989 Y72.286 E0.04059
G1 X46.989 Y72.813 E0.02436
G1 X46.989 Y72.989 E0.00813
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.989 Y72.989 Z2.272 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.772 Y69.465 E0
G1 X45.374 Y68.392 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z2.222 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.0071 F1350
G1 X44.507 Y62.388 E0.02129
G1 X43.739 Y62.388 E0.03549
G1 X42.664 Y62.388 E0.04968
G1 X42.61 Y62.185 E0.00968
G1 X42.61 Y60.585 E0.07399
G1 X42.61 Y58.61 E0.0913
G1 X44.011 Y58.613 E0.06473
G1 X45.233 Y58.616 E0.05652
G1 X46.278 Y58.618 E0.0483
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04949
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.0212
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.497 Y62.788 E0.05336
G1 X44.051 Y62.788 E0.06683
G1 X42.314 Y62.788 E0.0803
G1 X42.274 Y62.774 E0.00195
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00694
G1 X42.208 Y58.275 E0.19974
G1 X42.217 Y58.242 E0.0016
G1 X42.242 Y58.218 E0.00159
G1 X42.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.20362
G1 X46.753 Y58.257 E0.00389
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08336
G1 X46.783 Y61.609 E0.06889
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01467
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 30.000000, filament speed 1.386947, preload 0.000000
G1 X45.799 Y61.988 E0.00844 F1800
G1 X45.251 Y61.988 E0.02533
G1 X44.338 Y61.988 E0.04222
G1 X43.059 Y61.988 E0.05911
G1 X43.011 Y61.738 E0.01175
G1 X43.011 Y60.479 E0.0582
G1 X43.011 Y59.011 E0.0679
G1 X44.563 Y59.015 E0.07174
G1 X45.878 Y59.019 E0.06082
G1 X45.988 Y59.076 E0.00572
G1 X45.985 Y60.349 E0.05888
G1 X45.983 Y61.259 E0.04207
G1 X45.982 Y61.805 E0.02525
G1 X45.982 Y61.988 E0.00844
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y61.475 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.518 Y61.467 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X44.409 Y61.358 E0.00896 F2700
G1 X44.08 Y61.029 E0.02686
G1 X43.97 Y60.919 E0.00896
G1 X43.642 Y60.591 E0.02686
G1 X43.532 Y60.481 E0.00896
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.394 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.808 Y59.495 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.846 Y59.532 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X44.915 Y59.601 E0.00565 F2700
G1 X45.122 Y59.809 E0.01696
G1 X45.192 Y59.878 E0.00565
G1 X45.399 Y60.085 E0.01696
G1 X45.468 Y60.154 E0.00565
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.468 Y60.154 Z2.272 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y60.06 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X42.616 Y61.076 E0
G1 X41.544 Y61.475 E0
G1 X37.7 Y61.58 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z2.222 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.0071 F1350
G1 X34.512 Y62.388 E0.02132
G1 X33.744 Y62.388 E0.03552
G1 X32.668 Y62.388 E0.04973
G1 X32.61 Y62.183 E0.00982
G1 X32.61 Y60.584 E0.07396
G1 X32.61 Y58.61 E0.09124
G1 X34.012 Y58.613 E0.06482
G1 X35.236 Y58.616 E0.05659
G1 X36.282 Y58.618 E0.04835
G1 X36.388 Y58.681 E0.00568
G1 X36.388 Y59.75 E0.04946
G1 X36.388 Y60.515 E0.03533
G1 X36.388 Y60.973 E0.0212
G1 X36.388 Y61.126 E0.00709
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X36.388 Y61.315 E0.00269 F900
G1 X36.393 Y61.65 E0.0155
G1 X36.402 Y62.283 E0.02927
G1 X36.786 Y62.786 E0.02924
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05436
G1 X34.118 Y62.788 E0.06879
G1 X32.318 Y62.788 E0.08322
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.218 E0.00159
G1 X32.276 Y58.209 E0.0016
G1 X36.684 Y58.217 E0.20379
G1 X36.757 Y58.264 E0.00404
G1 X36.78 Y58.288 E0.00153
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08327
G1 X36.788 Y61.609 E0.06881
G1 X36.788 Y62.785 E0.05436
G1 X36.788 Y62.786 E0.00003
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.782 Y62.785 E0.00017
G1 X36.277 Y62.401 E0.02932
G1 X35.649 Y62.392 E0.02904
G1 X35.316 Y62.388 E0.01543
G1 X35.256 Y62.388 E0.00274
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.04 Y62.04 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X35.988 Y61.988 E0
; head speed 30.000000, filament speed 1.386947, preload 0.000000
G1 X35.806 Y61.988 E0.00842 F1800
G1 X35.259 Y61.988 E0.02526
G1 X34.349 Y61.988 E0.04211
G1 X33.074 Y61.988 E0.05894
G1 X33.011 Y61.821 E0.00825
G1 X33.011 Y60.528 E0.05976
G1 X33.011 Y59.01 E0.07017
G1 X34.565 Y59.015 E0.07186
G1 X35.882 Y59.019 E0.06089
G1 X35.988 Y59.082 E0.00572
G1 X35.988 Y60.353 E0.05875
G1 X35.988 Y61.261 E0.04198
G1 X35.988 Y61.806 E0.02519
G1 X35.988 Y61.988 E0.00841
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.04 Y62.04 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y61.475 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.467 Y61.467 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X35.347 Y61.348 E0.0098 F2700
G1 X34.985 Y60.99 E0.02938
G1 X34.383 Y60.394 E0.04898
G1 X34.068 Y60.343 E0.01841
G1 X33.665 Y60.343 E0.0233
G1 X33.531 Y60.343 E0.00777
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X33.531 Y60.343 Z2.272 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.777 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y62.04 E0
G1 X36.323 Y62.323 E0
G1 X36.889 Y63.172 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z2.222 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.0071 F1350
G1 X32.114 Y40.04 E0.02131
G1 X32.116 Y39.272 E0.03551
G1 X32.118 Y38.196 E0.04972
G1 X32.224 Y38.112 E0.00624
G1 X33.822 Y38.115 E0.07387
G1 X35.801 Y38.119 E0.09152
G1 X35.889 Y38.219 E0.00616
G1 X35.885 Y40.204 E0.09174
G1 X35.882 Y41.803 E0.07393
G1 X35.777 Y41.889 E0.00627
G1 X34.714 Y41.889 E0.04918
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.971 E0.0533
G1 X31.708 Y39.54 E0.0662
G1 X31.709 Y37.829 E0.07908
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00132
G1 X31.796 Y37.724 E0.00389
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00109
G1 X36.188 Y37.711 E0.20105
G1 X36.226 Y37.722 E0.00182
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00538
G1 X36.291 Y42.19 E0.20011
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00558
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02978
G1 X32.112 Y40.751 E0.01691
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 30.000000, filament speed 1.386947, preload 0.000000
G1 X32.513 Y41.378 E0.00658 F1800
G1 X32.513 Y40.847 E0.02457
G1 X32.513 Y39.922 E0.04277
G1 X32.513 Y38.603 E0.06097
G1 X32.621 Y38.513 E0.0065
G1 X33.9 Y38.515 E0.05911
G1 X35.401 Y38.519 E0.06942
G1 X35.488 Y38.619 E0.00611
G1 X35.484 Y40.126 E0.06968
G1 X35.482 Y41.402 E0.05899
G1 X35.38 Y41.488 E0.00614
G1 X34.165 Y41.488 E0.05617
G1 X33.298 Y41.488 E0.04013
G1 X32.777 Y41.488 E0.02407
G1 X32.603 Y41.488 E0.00802
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y39.808 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y39.927 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X33.132 Y39.828 E0.00813 F2700
G1 X33.431 Y39.529 E0.02439
G1 X33.53 Y39.43 E0.00813
G1 X33.828 Y39.131 E0.02439
G1 X33.928 Y39.032 E0.00813
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y38.96 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.849 Y40.374 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X34.968 Y40.255 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X34.889 Y40.334 E0.00648 F2700
G1 X34.651 Y40.572 E0.01943
G1 X34.572 Y40.651 E0.00647
G1 X34.334 Y40.889 E0.01943
G1 X34.255 Y40.968 E0.00648
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X34.255 Y40.968 Z2.272 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34.283 Y40.94 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.356 Y38.316 E0
G1 X32.603 Y37.482 E0
G1 X32.59 Y37.461 E0
G1 X32.586 Y37.437 E0
G1 X32.586 Y32.454 E0
G1 X32.303 Y31.606 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z2.222 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00712 F1350
G1 X32.114 Y30.045 E0.02135
G1 X32.116 Y29.275 E0.03558
G1 X32.118 Y28.198 E0.04982
G1 X32.223 Y28.111 E0.00626
G1 X33.82 Y28.112 E0.07385
G1 X35.799 Y28.112 E0.09148
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y30.208 E0.09153
G1 X35.882 Y31.804 E0.0738
G1 X35.776 Y31.888 E0.00626
G1 X34.711 Y31.888 E0.04926
G1 X33.95 Y31.888 E0.03518
G1 X33.493 Y31.888 E0.02111
G1 X33.341 Y31.888 E0.00704
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y31.888 E0.00433 F900
G1 X32.867 Y31.893 E0.01752
G1 X32.197 Y31.9 E0.03098
G1 X31.709 Y32.2 E0.02644
G1 X31.709 Y32.2 E0.00003
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00004
G1 X31.708 Y32.197 E0.00011
G1 X31.708 Y31.033 E0.05378
G1 X31.709 Y29.571 E0.0676
G1 X31.71 Y27.81 E0.08142
G1 X31.722 Y27.771 E0.00188
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00109
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.20029
G1 X36.285 Y32.199 E0.00132
G1 X36.268 Y32.222 E0.00133
G1 X36.204 Y32.276 E0.00389
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00108
G1 X34.428 Y32.289 E0.08008
G1 X32.983 Y32.286 E0.06683
G1 X31.824 Y32.284 E0.05357
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00115
G1 X31.741 Y32.231 E0.0024
G1 X31.725 Y32.206 E0.00139
G1 X31.723 Y32.176 E0.00139
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02286
G1 X32.112 Y31.578 E0.0092
G1 X32.112 Y31.061 E0.02388
G1 X32.112 Y30.757 E0.01405
G1 X32.112 Y30.666 E0.00425
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y31.323 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.513 Y31.396 E0
; head speed 30.000000, filament speed 1.386947, preload 0.000000
G1 X32.513 Y31.221 E0.00808 F1800
G1 X32.514 Y30.697 E0.02426
G1 X32.516 Y29.823 E0.04042
G1 X32.519 Y28.599 E0.05658
G1 X32.619 Y28.512 E0.00614
G1 X33.894 Y28.512 E0.05891
G1 X35.398 Y28.513 E0.06953
G1 X35.488 Y28.621 E0.00651
G1 X35.487 Y30.121 E0.06934
G1 X35.487 Y31.398 E0.05902
G1 X35.379 Y31.487 E0.0065
G1 X34.342 Y31.485 E0.04795
G1 X33.533 Y31.483 E0.03737
G1 X32.953 Y31.481 E0.02681
G1 X32.602 Y31.48 E0.01624
G1 X32.513 Y31.396 E0.00568
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y31.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y30.757 E0
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y30.876 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X33.134 Y30.773 E0.00837 F2700
G1 X33.44 Y30.464 E0.02513
G1 X33.949 Y29.948 E0.04187
G1 X34 Y29.634 E0.0184
G1 X34 Y29.183 E0.02608
G1 X34 Y29.032 E0.0087
; Blending Fan to Cool (80.9% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y29.032 Z2.272 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y32.125 E0
G1 X33.151 Y37.546 E0
G1 X32.869 Y38.394 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 15.729866, post = 13.888209
; Dwell time remaining = -3.888210
;
; Post-layer lift
G1 X32.303 Y40.657 Z2.418 E0 F300
; END_LAYER_OBJECT z=2.222
; *** Estimate all extruders at 2.1 [s], Slowing 0.168x to 9.9 [s] ***
; BEGIN_LAYER_OBJECT z=2.368 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 3.8 [head mm/s]
G1 X66.182 Y73.879 Z2.418 E0 F9000
G1 X66.182 Y73.879 Z2.368 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 3.790283, filament speed 0.165776, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F227.4
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 2.5 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.526855, filament speed 0.110517, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F151.6
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72.566 E0
G1 X67.414 Y71.717 E0
G1 X67.414 Y71.717 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.4 [feed mm/s], 7.6 [head mm/s]
G1 X67.346 Y71.785 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 7.580566, filament speed 0.414440, preload 0.000000
; Prepare for Destring
G1 X67.158 Y71.957 E0.01395 F454.8
G1 X66.855 Y72 E0.01675
G1 X66.08 Y72.002 E0.04238
G1 X65.719 Y72.003 E0.01971
G1 X64.973 Y72.006 E0.04077
G1 X64.783 Y72.086 E0.01132
G1 X64.654 Y72.215 E0.00997
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 7.6 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 7.580566, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X64.654 Y72.215 Z2.418 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.586 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.974546, post = 9.929063
; Dwell time remaining = 0.070937
;
; Post-layer lift
G1 X66.283 Y73.98 Z2.55 E0 F300
; END_LAYER_OBJECT z=2.368
; BEGIN_LAYER_OBJECT z=2.500 z_thickness=0.278
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z2.55 E0 F9000
G1 X46.187 Y73.389 Z2.5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00003
G1 X47.786 Y73.788 E0.00018
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y72.788 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.445 Y72.869 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X44.51 Y72.789 E0.00594 F2700
G1 X44.525 Y72.508 E0.01627
G1 X44.528 Y71.763 E0.04305
G1 X44.529 Y71.411 E0.02033
G1 X44.532 Y70.626 E0.04537
G1 X44.66 Y70.391 E0.01547
G1 X44.92 Y70.131 E0.02124
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X44.92 Y70.131 Z2.55 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X44.808 Y70.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.808 Y62.916 E0
G1 X44.813 Y62.891 E0
G1 X44.828 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z2.5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X44.967 Y62.388 E0.0071 F1350
G1 X44.507 Y62.388 E0.02129
G1 X43.739 Y62.388 E0.03549
G1 X42.664 Y62.388 E0.04968
G1 X42.61 Y62.185 E0.00968
G1 X42.61 Y60.585 E0.07399
G1 X42.61 Y58.61 E0.0913
G1 X44.011 Y58.613 E0.06473
G1 X45.233 Y58.616 E0.05652
G1 X46.278 Y58.618 E0.0483
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04949
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.0212
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.429319
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.497 Y62.788 E0.05336
G1 X44.051 Y62.788 E0.06683
G1 X42.314 Y62.788 E0.0803
G1 X42.274 Y62.774 E0.00195
G1 X42.25 Y62.74 E0.00194
G1 X42.208 Y62.596 E0.00694
G1 X42.208 Y58.275 E0.19974
G1 X42.217 Y58.242 E0.0016
G1 X42.242 Y58.218 E0.00159
G1 X42.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.20362
G1 X46.753 Y58.257 E0.00389
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08336
G1 X46.783 Y61.609 E0.06889
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01467
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y62.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.525 Y61.867 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X44.534 Y61.546 E0.01857 F2700
G1 X44.662 Y61.338 E0.01409
G1 X45.233 Y60.77 E0.04655
G1 X45.607 Y60.398 E0.03049
G1 X45.741 Y60.343 E0.00837
G1 X45.867 Y60.343 E0.0073
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y59.212 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.525 Y59.154 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X44.518 Y59.208 E0.00315 F2700
G1 X44.385 Y59.352 E0.01136
G1 X44.015 Y59.72 E0.03015
G1 X43.822 Y59.912 E0.01571
G1 X43.442 Y60.289 E0.03097
G1 X43.289 Y60.343 E0.00938
G1 X43.13 Y60.343 E0.00915
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X43.13 Y60.343 Z2.55 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.394 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X42.198 Y61.457 E0
G1 X42.178 Y61.47 E0
G1 X42.155 Y61.475 E0
G1 X37.7 Y61.58 E0
G1 X35.192 Y62.323 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X35.127 Y62.388 E0
G1 X35.127 Y62.388 Z2.5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X34.973 Y62.388 E0.0071 F1350
G1 X34.512 Y62.388 E0.02132
G1 X33.744 Y62.388 E0.03552
G1 X32.668 Y62.388 E0.04973
G1 X32.61 Y62.183 E0.00982
G1 X32.61 Y60.584 E0.07396
G1 X32.61 Y58.61 E0.09124
G1 X34.012 Y58.613 E0.06482
G1 X35.236 Y58.616 E0.05659
G1 X36.282 Y58.618 E0.04835
G1 X36.388 Y58.681 E0.00568
G1 X36.388 Y59.75 E0.04946
G1 X36.388 Y60.515 E0.03533
G1 X36.388 Y60.973 E0.0212
G1 X36.388 Y61.126 E0.00709
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X36.323 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.477478
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X36.388 Y61.257 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X36.388 Y61.315 E0.00269 F900
G1 X36.393 Y61.65 E0.0155
G1 X36.402 Y62.283 E0.02927
G1 X36.786 Y62.786 E0.02924
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.786 Y62.788 E0.00003
G1 X36.785 Y62.788 E0.00003
G1 X36.782 Y62.788 E0.00016
G1 X35.606 Y62.788 E0.05436
G1 X34.118 Y62.788 E0.06879
G1 X32.318 Y62.788 E0.08322
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.218 E0.00159
G1 X32.276 Y58.209 E0.0016
G1 X36.684 Y58.217 E0.20379
G1 X36.757 Y58.264 E0.00404
G1 X36.78 Y58.288 E0.00153
G1 X36.788 Y58.32 E0.00153
G1 X36.788 Y60.121 E0.08327
G1 X36.788 Y61.609 E0.06881
G1 X36.788 Y62.785 E0.05436
G1 X36.788 Y62.786 E0.00003
G1 X36.787 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00004
G1 X36.786 Y62.787 E0.00003
G1 X36.782 Y62.785 E0.00017
G1 X36.277 Y62.401 E0.02932
G1 X35.649 Y62.392 E0.02904
G1 X35.316 Y62.388 E0.01543
G1 X35.256 Y62.388 E0.00274
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.192 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y62.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.475 Y61.867 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X35.483 Y61.546 E0.01857 F2700
G1 X35.611 Y61.338 E0.01409
G1 X35.869 Y61.08 E0.0211
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.757 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.475 Y59.212 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.475 Y59.154 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X35.467 Y59.208 E0.00315 F2700
G1 X35.334 Y59.352 E0.01136
G1 X34.961 Y59.721 E0.03031
G1 X34.383 Y60.292 E0.04697
G1 X34.068 Y60.343 E0.01841
G1 X33.561 Y60.343 E0.02934
G1 X33.256 Y60.343 E0.0176
G1 X33.154 Y60.343 E0.00587
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X33.154 Y60.343 Z2.55 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.212 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.626 Y61.757 E0
G1 X35.475 Y62.04 E0
G1 X36.832 Y63.043 E0
G1 X42.828 Y69.111 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z2.5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y40.501 E0.0071 F1350
G1 X32.114 Y40.04 E0.02131
G1 X32.116 Y39.272 E0.03551
G1 X32.118 Y38.196 E0.04972
G1 X32.224 Y38.112 E0.00624
G1 X33.822 Y38.115 E0.07387
G1 X35.801 Y38.119 E0.09152
G1 X35.889 Y38.219 E0.00616
G1 X35.885 Y40.204 E0.09174
G1 X35.882 Y41.803 E0.07393
G1 X35.777 Y41.889 E0.00627
G1 X34.714 Y41.889 E0.04918
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.449543
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.971 E0.0533
G1 X31.708 Y39.54 E0.0662
G1 X31.709 Y37.829 E0.07908
G1 X31.715 Y37.801 E0.00132
G1 X31.732 Y37.778 E0.00132
G1 X31.796 Y37.724 E0.00389
G1 X31.816 Y37.712 E0.00108
G1 X31.839 Y37.708 E0.00108
G1 X36.188 Y37.711 E0.20106
G1 X36.226 Y37.722 E0.00182
G1 X36.25 Y37.753 E0.00182
G1 X36.293 Y37.862 E0.00538
G1 X36.291 Y42.19 E0.20011
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00558
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.869 Y40.091 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X32.632 Y40.091 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X32.829 Y40.099 E0.01143 F2700
G1 X33.007 Y40.229 E0.0127
G1 X33.394 Y40.619 E0.03176
G1 X33.582 Y40.807 E0.01535
G1 X33.942 Y41.169 E0.02955
G1 X34 Y41.281 E0.00725
G1 X34 Y41.368 E0.00506
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y41.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.131 Y40.091 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.368 Y40.091 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X35.171 Y40.083 E0.01143 F2700
G1 X34.993 Y39.953 E0.0127
G1 X34.604 Y39.561 E0.03195
G1 X34.439 Y39.394 E0.01356
G1 X34.053 Y39.005 E0.03165
G1 X34 Y38.828 E0.01067
G1 X34 Y38.631 E0.01138
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X34 Y38.631 Z2.55 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y38.394 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.169 Y37.482 E0
G1 X33.156 Y37.461 E0
G1 X33.151 Y37.437 E0
G1 X33.151 Y32.454 E0
G1 X32.869 Y31.606 E0
G1 X32.02 Y30.757 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y30.661 E0
G1 X32.112 Y30.661 Z2.5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X32.112 Y30.507 E0.00712 F1350
G1 X32.114 Y30.045 E0.02135
G1 X32.116 Y29.275 E0.03558
G1 X32.118 Y28.198 E0.04982
G1 X32.223 Y28.111 E0.00626
G1 X33.82 Y28.112 E0.07385
G1 X35.799 Y28.112 E0.09148
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y30.208 E0.09153
G1 X35.882 Y31.804 E0.0738
G1 X35.776 Y31.888 E0.00626
G1 X34.711 Y31.888 E0.04926
G1 X33.95 Y31.888 E0.03518
G1 X33.493 Y31.888 E0.02111
G1 X33.341 Y31.888 E0.00704
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.151 Y31.889 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.452442
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.339 Y31.888 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y31.888 E0.00433 F900
G1 X32.867 Y31.893 E0.01752
G1 X32.197 Y31.9 E0.03097
G1 X31.709 Y32.2 E0.02645
G1 X31.709 Y32.2 E0.00003
G1 X31.708 Y32.2 E0.00003
G1 X31.708 Y32.199 E0.00004
G1 X31.708 Y32.197 E0.00011
G1 X31.708 Y31.033 E0.05378
G1 X31.709 Y29.571 E0.0676
G1 X31.71 Y27.81 E0.08142
G1 X31.722 Y27.771 E0.00188
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00109
G1 X36.293 Y27.839 E0.00108
G1 X36.292 Y32.171 E0.20029
G1 X36.285 Y32.199 E0.00132
G1 X36.268 Y32.222 E0.00133
G1 X36.204 Y32.276 E0.00389
G1 X36.184 Y32.288 E0.00108
G1 X36.161 Y32.292 E0.00108
G1 X34.428 Y32.289 E0.08008
G1 X32.983 Y32.286 E0.06683
G1 X31.824 Y32.284 E0.05357
G1 X31.8 Y32.28 E0.00114
G1 X31.779 Y32.266 E0.00115
G1 X31.741 Y32.231 E0.0024
G1 X31.725 Y32.206 E0.00139
G1 X31.723 Y32.176 E0.00139
G1 X31.735 Y32.149 E0.00138
G1 X32.049 Y31.767 E0.02286
G1 X32.112 Y31.578 E0.0092
G1 X32.112 Y31.061 E0.02388
G1 X32.112 Y30.757 E0.01405
G1 X32.112 Y30.666 E0.00425
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.02 Y30.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.566 Y31.04 E0
G1 X35.131 Y31.04 E0
G1 X35.131 Y31.04 E0
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.368 Y31.04 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X35.171 Y31.032 E0.01143 F2700
G1 X34.993 Y30.902 E0.0127
G1 X34.603 Y30.508 E0.03207
G1 X34.051 Y29.948 E0.04542
G1 X34 Y29.634 E0.01841
G1 X34 Y29.077 E0.03217
G1 X34 Y28.743 E0.01931
G1 X34 Y28.632 E0.00644
; Blending Fan to Cool (88.0% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y28.632 Z2.55 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y32.125 E0
G1 X33.151 Y37.546 E0
G1 X32.869 Y38.394 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 13.603248, post = 11.961513
; Dwell time remaining = -1.961513
;
; Post-layer lift
G1 X32.303 Y40.657 Z2.682 E0 F300
; END_LAYER_OBJECT z=2.500
; *** Estimate all extruders at 2.6 [s], Slowing 0.200x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=2.632 z_thickness=0.264
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 4.5 [head mm/s]
G1 X66.182 Y73.879 Z2.682 E0 F9000
G1 X66.182 Y73.879 Z2.632 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 4.493408, filament speed 0.197276, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00703 F269.6
G1 X65.542 Y73.84 E0.0211
G1 X64.945 Y73.579 E0.02863
G1 X64.456 Y73.099 E0.0301
G1 X64.208 Y72.602 E0.02436
G1 X64.11 Y72.052 E0.02453
G1 X64.182 Y71.471 E0.02573
G1 X64.424 Y70.942 E0.02555
G1 X64.906 Y70.45 E0.03022
G1 X65.471 Y70.181 E0.02745
G1 X66.053 Y70.11 E0.02577
G1 X66.602 Y70.208 E0.02445
G1 X67.096 Y70.452 E0.02421
G1 X67.582 Y70.947 E0.03048
G1 X67.855 Y71.605 E0.03123
G1 X67.872 Y72.037 E0.01901
G1 X67.878 Y72.181 E0.00634
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.0 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.995605, filament speed 0.131517, preload 0.000000
G1 X67.866 Y72.273 E0.00332 F179.7
G1 X67.795 Y72.5 E0.01044
G1 X67.676 Y72.881 E0.01756
G1 X67.444 Y73.22 E0.01801
G1 X67.433 Y73.254 E0.00159
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01434
G1 X67.605 Y73.606 E0.00138
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00138
G1 X67.112 Y74.012 E0.0256
G1 X66.504 Y74.238 E0.02849
G1 X65.869 Y74.292 E0.02796
G1 X65.134 Y74.133 E0.03301
G1 X64.557 Y73.781 E0.02969
G1 X64.101 Y73.287 E0.02952
G1 X63.818 Y72.722 E0.02775
G1 X63.702 Y72 E0.0321
G1 X63.818 Y71.278 E0.0321
G1 X64.102 Y70.71 E0.0279
G1 X64.605 Y70.178 E0.03213
G1 X65.202 Y69.842 E0.03007
G1 X65.875 Y69.708 E0.03013
G1 X66.579 Y69.779 E0.03107
G1 X67.17 Y70.022 E0.02807
G1 X67.69 Y70.453 E0.02964
G1 X68.08 Y71.013 E0.02996
G1 X68.269 Y71.674 E0.03017
G1 X68.279 Y72.252 E0.02536
G1 X68.106 Y72.931 E0.03077
G1 X67.742 Y73.482 E0.02897
G1 X67.624 Y73.606 E0.00755
G1 X67.585 Y73.626 E0.00191
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01488
G1 X67.213 Y73.439 E0.00161
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02288
G1 X66.453 Y73.817 E0.01325
G1 X66.272 Y73.866 E0.00825
G1 X66.197 Y73.877 E0.00333
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.0 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 5.991211, filament speed 0.263035, preload 0.000000
G1 X66.948 Y73.125 E0.00555 F359.5
G1 X66.642 Y73.349 E0.01667
G1 X66.135 Y73.487 E0.02308
G1 X65.637 Y73.452 E0.02192
G1 X65.109 Y73.199 E0.02571
G1 X64.754 Y72.818 E0.02284
G1 X64.547 Y72.351 E0.02243
G1 X64.518 Y71.804 E0.02402
G1 X64.682 Y71.299 E0.02335
G1 X65.017 Y70.875 E0.02371
G1 X65.485 Y70.598 E0.02391
G1 X66.055 Y70.504 E0.02536
G1 X66.578 Y70.623 E0.02356
G1 X67.032 Y70.919 E0.02376
G1 X67.35 Y71.36 E0.0239
G1 X67.49 Y71.876 E0.02347
G1 X67.432 Y72.428 E0.02437
G1 X67.172 Y72.919 E0.02437
G1 X67.051 Y73.051 E0.00787
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.5 [feed mm/s], 9.0 [head mm/s]
G1 X66.968 Y72 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.986816, filament speed 0.493190, preload 0.000000
; Prepare for Destring
G1 X66.847 Y72 E0.00664 F539.2
G1 X66.484 Y72 E0.01991
G1 X65.516 Y72 E0.05311
G1 X65.153 Y72 E0.01992
G1 X65.032 Y72 E0.00663
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 9.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 8.986816, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X65.032 Y72 Z2.682 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.869 Y72 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66 Y73.131 E0
G1 X66.283 Y73.98 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 10.002648, post = 9.865005
; Dwell time remaining = 0.134994
;
; Post-layer lift
G1 X66.283 Y73.98 Z2.828 E0 F300
; END_LAYER_OBJECT z=2.632
; BEGIN_LAYER_OBJECT z=2.778 z_thickness=0.278
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z2.828 E0 F9000
G1 X46.187 Y73.389 Z2.778 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040212, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04793
G1 X47.39 Y71.594 E0.03423
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 14.999999, filament speed 0.693475, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00004
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01543
G1 X46.258 Y73.389 E0.00271
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X46.989 Y72.989 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 29.999998, filament speed 1.386949, preload 0.000000
; Prepare for Destring
G1 X46.81 Y72.989 E0.0083 F1800
G1 X46.271 Y72.987 E0.02489
G1 X45.374 Y72.985 E0.04148
G1 X44.118 Y72.981 E0.05807
G1 X44.012 Y72.918 E0.00571
G1 X44.012 Y71.587 E0.06154
G1 X44.012 Y70.012 E0.07283
G1 X45.592 Y70.012 E0.07306
G1 X46.927 Y70.012 E0.06171
G1 X46.989 Y70.18 E0.00828
G1 X46.989 Y71.409 E0.05681
G1 X46.989 Y72.286 E0.04059
G1 X46.989 Y72.813 E0.02436
G1 X46.989 Y72.989 E0.00813
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for Loop
G1 X46.989 Y72.989 Z2.828 E0 F300
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 43%
; fan %*255
M106 S110
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.772 Y69.465 E0
G1 X45.374 Y68.392 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z2.778 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040212, preload 0.000000
; unsupported segments 5
; Unsupported degree: 1.000000
; Overhang(43.8+)
; Unsupported Fan = 50 (from 41)
G1 X44.903 Y62.388 E0.01009 F1079.9
; fan %*255
M106 S128
G1 X44.734 Y62.388 E0.00781 F863.7
G1 X44.227 Y62.388 E0.02342 F771.1
G1 X43.382 Y62.388 E0.03905 F719.7
G1 X42.2 Y62.388 E0.05466 F686.9
G1 X40.68 Y62.388 E0.07028 F613.2
G1 X38.315 Y62.388 E0.10932 F539.6
G1 X36.795 Y62.388 E0.07028 F613.2
G1 X35.613 Y62.388 E0.05466 F686.9
G1 X34.768 Y62.388 E0.03904 F760.6
G1 X34.262 Y62.388 E0.02343 F834.3
G1 X34.093 Y62.388 E0.00781 F907.9
; fan %*255
M106 S105
G1 X33.934 Y62.388 E0.00732 F981.6
G1 X33.46 Y62.388 E0.02195 F1055.3
G1 X32.668 Y62.388 E0.03658 F1129
; Prepare for Perimeter
G1 X32.61 Y62.183 E0.00981 F1202.6
G1 X32.61 Y61.216 E0.04473 F1276.3
G1 X32.61 Y59.56 E0.07658
G1 X32.61 Y58.61 E0.0439 F1202.6
G1 X33.399 Y58.61 E0.03648 F1129
G1 X33.873 Y58.61 E0.0219 F1055.3
G1 X34.031 Y58.61 E0.00731 F981.6
; fan %*255
M106 S128
G1 X34.201 Y58.61 E0.00785 F907.9
G1 X34.711 Y58.61 E0.02356 F834.3
G1 X35.56 Y58.61 E0.03927 F760.6
G1 X36.749 Y58.61 E0.05497 F686.9
G1 X38.278 Y58.61 E0.07068 F613.2
G1 X40.656 Y58.61 E0.10995 F539.6
G1 X42.185 Y58.61 E0.07067 F613.2
G1 X43.374 Y58.61 E0.05498 F686.9
G1 X44.223 Y58.61 E0.03926 F760.6
G1 X44.733 Y58.61 E0.02356 F834.3
G1 X44.903 Y58.61 E0.00785 F907.9
; fan %*255
M106 S105
G1 X45.055 Y58.611 E0.00707 F981.6
G1 X45.514 Y58.614 E0.0212 F1055.3
G1 X46.278 Y58.618 E0.03533 F1129
G1 X46.388 Y58.674 E0.00568 F1260
G1 X46.388 Y59.745 E0.04949 F1350
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.0212
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426384
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 14.999999, filament speed 0.693475, preload 0.000000
; unsupported segments 5
; Unsupported degree: 1.000000
; Overhang(43.8+)
; Unsupported Fan = 50 (from 41)
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069 F867.2
G1 X46.651 Y62.788 E0.00422 F834.5
G1 X45.756 Y62.788 E0.04136 F801.7
G1 X45.22 Y62.788 E0.02482 F768.9
G1 X45.041 Y62.788 E0.00827 F736.2
; fan %*255
M106 S128
G1 X44.87 Y62.788 E0.0079 F703.4
G1 X44.357 Y62.788 E0.0237 F670.6
G1 X43.503 Y62.788 E0.0395 F637.9
G1 X42.307 Y62.788 E0.0553 F605.1
G1 X40.769 Y62.788 E0.0711 F572.3
G1 X38.376 Y62.788 E0.11061 F539.6
G1 X36.838 Y62.788 E0.0711 F572.3
G1 X35.642 Y62.788 E0.0553 F605.1
G1 X34.788 Y62.788 E0.0395 F637.9
G1 X34.275 Y62.788 E0.0237 F670.6
G1 X34.104 Y62.788 E0.0079 F703.4
; fan %*255
M106 S105
G1 X33.906 Y62.788 E0.00918 F736.2
G1 X33.31 Y62.788 E0.02752 F768.9
G1 X32.318 Y62.788 E0.04587 F801.7
G1 X32.279 Y62.775 E0.00192 F834.5
G1 X32.255 Y62.741 E0.00192 F867.2
G1 X32.209 Y62.596 E0.00703 F900
G1 X32.209 Y61.423 E0.05423
G1 X32.209 Y59.427 E0.09226
G1 X32.209 Y58.275 E0.05327
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.217 E0.00159 F867.2
G1 X32.275 Y58.209 E0.0016 F834.5
; Prepare for Loop
G1 X33.198 Y58.209 E0.04264 F801.7
G1 X33.751 Y58.209 E0.02559 F768.9
G1 X33.936 Y58.209 E0.00853 F736.2
; fan %*255
M106 S128
G1 X34.109 Y58.209 E0.00799 F703.4
G1 X34.627 Y58.209 E0.02397 F670.6
G1 X35.491 Y58.209 E0.03995 F637.9
G1 X36.701 Y58.209 E0.05593 F605.1
G1 X38.257 Y58.209 E0.07192 F572.3
G1 X40.676 Y58.209 E0.11186 F539.6
G1 X42.232 Y58.209 E0.07191 F572.3
G1 X43.441 Y58.209 E0.05593 F605.1
G1 X44.306 Y58.209 E0.03995 F637.9
G1 X44.824 Y58.209 E0.02397 F670.6
G1 X44.997 Y58.209 E0.00799 F703.4
; fan %*255
M106 S105
G1 X45.184 Y58.209 E0.00865 F736.2
G1 X45.745 Y58.212 E0.02593 F768.9
G1 X46.679 Y58.217 E0.04321 F801.7
G1 X46.753 Y58.257 E0.00389 F834.5
G1 X46.779 Y58.282 E0.00164 F867.2
G1 X46.788 Y58.316 E0.00163 F900
G1 X46.786 Y59.509 E0.05516
G1 X46.783 Y61.609 E0.09709
G1 X46.782 Y62.785 E0.0544
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01467
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 29.999998, filament speed 1.386949, preload 0.000000
; unsupported segments 5
; Unsupported degree: 1.000000
; Overhang(43.8+)
; Unsupported Fan = 50 (from 41)
G1 X45.865 Y61.988 E0.00541 F1800
G1 X45.514 Y61.988 E0.01622
G1 X45.397 Y61.988 E0.00541 F1619.9
G1 X45.046 Y61.988 E0.01622 F1379.9
G1 X44.929 Y61.988 E0.00541 F1227.1
; fan %*255
M106 S128
G1 X44.761 Y61.988 E0.00777 F1112.5
G1 X44.257 Y61.988 E0.02329 F997.9
G1 X43.417 Y61.988 E0.03882 F883.3
G1 X42.242 Y61.988 E0.05435 F768.7
G1 X40.73 Y61.988 E0.06987 F654.2
G1 X38.379 Y61.988 E0.1087 F539.6
G1 X36.868 Y61.988 E0.06988 F654.2
G1 X35.692 Y61.988 E0.05435 F768.7
G1 X34.853 Y61.988 E0.03882 F883.3
G1 X34.349 Y61.988 E0.02329 F997.9
; Prepare for Path
G1 X34.181 Y61.988 E0.00776 F1112.5
; fan %*255
M106 S105
G1 X34.058 Y61.988 E0.00569 F1227.1
G1 X33.689 Y61.988 E0.01706 F1341.7
G1 X33.074 Y61.988 E0.02844 F1456.2
G1 X33.011 Y61.821 E0.00825 F1570.8
G1 X33.011 Y60.613 E0.05581 F1685.4
G1 X33.011 Y59.747 E0.04007
G1 X33.011 Y59.01 E0.03404 F1570.8
G1 X33.571 Y59.01 E0.02591 F1456.2
G1 X33.908 Y59.01 E0.01555 F1341.7
G1 X34.02 Y59.01 E0.00518 F1227.1
; fan %*255
M106 S128
G1 X34.19 Y59.01 E0.00786 F1112.5
G1 X34.7 Y59.01 E0.02359 F997.9
G1 X35.55 Y59.01 E0.03931 F883.3
G1 X36.74 Y59.01 E0.05503 F768.7
G1 X38.271 Y59.01 E0.07075 F654.2
G1 X40.651 Y59.01 E0.11006 F539.6
G1 X42.182 Y59.01 E0.07076 F654.2
G1 X43.372 Y59.01 E0.05503 F768.7
G1 X44.222 Y59.01 E0.0393 F883.3
G1 X44.733 Y59.01 E0.02359 F997.9
G1 X44.903 Y59.01 E0.00786 F1112.5
; fan %*255
M106 S105
G1 X45.011 Y59.011 E0.00501 F1227.1
G1 X45.336 Y59.014 E0.01504 F1341.7
G1 X45.878 Y59.019 E0.02506 F1456.2
G1 X45.988 Y59.076 E0.00572 F1570.8
G1 X45.986 Y59.844 E0.03552 F1800
G1 X45.985 Y60.35 E0.02337
G1 X45.983 Y61.259 E0.04207
G1 X45.982 Y61.806 E0.02525
G1 X45.982 Y61.988 E0.00842
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.323 Y61.757 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X36.285 Y61.692 E0
; head speed 37.500000, filament speed 1.733687, preload 0.000000
; unsupported segments 2
; Unsupported degree: 1.000000
; Overhang(43.8+)
; Unsupported Fan = 50 (from 41)
; fan %*255
M106 S128
G1 X36.164 Y61.567 E0.00808 F539.6
G1 X35.8 Y61.189 E0.02426
G1 X35.78 Y60.621 E0.02625
G1 X35.79 Y60.632 E0.00069
G1 X36.241 Y61.075 E0.02925
G1 X36.782 Y61.608 E0.03508
G1 X37.332 Y61.608 E0.02539
G1 X37.331 Y61.607 E0.00005
G1 X36.605 Y60.88 E0.04746
G1 X35.78 Y60.054 E0.05401
G1 X35.803 Y59.513 E0.02503
G1 X35.81 Y59.52 E0.00047
G1 X37.914 Y61.608 E0.13702
G1 X38.463 Y61.608 E0.02539
G1 X38.462 Y61.607 E0.00005
G1 X36.247 Y59.392 E0.14482
G1 X36.264 Y59.392 E0.00076
G1 X36.824 Y59.403 E0.02592
G1 X39.045 Y61.608 E0.14468
G1 X39.594 Y61.608 E0.02538
G1 X39.594 Y61.607 E0.00005
G1 X37.379 Y59.392 E0.14482
G1 X37.395 Y59.392 E0.00077
G1 X37.955 Y59.403 E0.02591
G1 X40.177 Y61.608 E0.14468
G1 X40.726 Y61.608 E0.02539
G1 X40.725 Y61.607 E0.00005
G1 X38.51 Y59.392 E0.14482
G1 X38.526 Y59.392 E0.00077
G1 X39.087 Y59.403 E0.02591
G1 X41.308 Y61.608 E0.14468
G1 X41.857 Y61.608 E0.02539
G1 X41.856 Y61.607 E0.00004
G1 X39.641 Y59.392 E0.14483
G1 X39.658 Y59.392 E0.00076
G1 X40.218 Y59.403 E0.02592
G1 X42.424 Y61.607 E0.14418
G1 X42.942 Y61.561 E0.02401
G1 X42.932 Y61.551 E0.00061
G1 X40.773 Y59.392 E0.14119
G1 X40.789 Y59.392 E0.00077
G1 X41.35 Y59.403 E0.02591
G1 X42.3 Y60.353 E0.06211
G1 X43.087 Y61.141 E0.0515
G1 X43.087 Y61.124 E0.00076 F695.1
G1 X43.08 Y60.567 E0.02574 F850.6
G1 X42.452 Y59.94 E0.04105 F1006
G1 X42.075 Y59.563 E0.02464 F1161.5
G1 X41.949 Y59.437 E0.00825 F1317
; fan %*255
M106 S105
G1 X41.904 Y59.392 E0.00292 F1472.5
G1 X41.923 Y59.393 E0.0009 F1628
G1 X42.146 Y59.407 E0.01029 F1869.9
G1 X42.508 Y59.43 E0.0168 F2250
G1 X42.877 Y59.799 E0.02411
G1 X43.098 Y60.02 E0.01447
G1 X43.172 Y60.094 E0.00482
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.111 Y60.06 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.808 Y59.495 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.846 Y59.532 E0
; head speed 44.999996, filament speed 2.600530, preload 0.000000
G1 X44.915 Y59.601 E0.00565 F2700
G1 X45.122 Y59.809 E0.01696
G1 X45.192 Y59.878 E0.00565
G1 X45.399 Y60.085 E0.01696
G1 X45.468 Y60.154 E0.00565
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y60.06 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y61.475 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.518 Y61.467 E0
; head speed 44.999996, filament speed 2.600530, preload 0.000000
G1 X44.419 Y61.368 E0.00814 F2700
G1 X44.12 Y61.069 E0.02442
G1 X44.02 Y60.969 E0.00813
G1 X43.721 Y60.67 E0.02442
G1 X43.622 Y60.571 E0.00814
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.677 Y60.626 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X38.586 Y60.626 E0
G1 X37.737 Y60.909 E0
G1 X35.192 Y61.192 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.247 Y61.247 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 44.999996, filament speed 2.600530, preload 0.000000
; Prepare for Destring
G1 X35.151 Y61.152 E0.00779 F2700
G1 X34.863 Y60.868 E0.02339
G1 X34.383 Y60.394 E0.03898
G1 X34.068 Y60.343 E0.0184
G1 X33.665 Y60.343 E0.02331
G1 X33.531 Y60.343 E0.00776
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for Loop
G1 X33.531 Y60.343 Z2.828 E0 F300
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 43%
; fan %*255
M106 S110
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.777 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X39.911 Y62.323 E0
G1 X42.758 Y62.329 E0
G1 X42.799 Y62.344 E0
G1 X42.823 Y62.38 E0
G1 X43.111 Y63.608 E0
G1 X43.152 Y69.125 E0
G1 X43.158 Y69.151 E0
G1 X43.172 Y69.172 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z2.778 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040212, preload 0.000000
; unsupported segments 5
; Unsupported degree: 1.000000
; Overhang(43.8+)
; Unsupported Fan = 50 (from 41)
G1 X32.112 Y40.42 E0.01084 F1079.9
; fan %*255
M106 S128
G1 X32.112 Y40.252 E0.00777 F863.7
G1 X32.112 Y39.748 E0.02329 F771.1
G1 X32.112 Y38.909 E0.03882 F719.7
G1 X32.112 Y37.733 E0.05435 F686.9
G1 X32.112 Y36.221 E0.06987 F613.2
G1 X32.112 Y33.87 E0.1087 F539.6
G1 X32.112 Y32.359 E0.06988 F613.2
G1 X32.112 Y31.183 E0.05434 F686.9
G1 X32.112 Y30.344 E0.03882 F760.6
G1 X32.112 Y29.84 E0.0233 F834.3
G1 X32.112 Y29.672 E0.00776 F907.9
; fan %*255
M106 S105
G1 X32.113 Y29.508 E0.00757 F981.6
G1 X32.115 Y29.017 E0.02272 F1055.3
; Prepare for Perimeter
G1 X32.118 Y28.198 E0.03787 F1129
G1 X32.223 Y28.111 E0.00625 F1202.6
G1 X33.189 Y28.112 E0.04467 F1276.3
G1 X34.842 Y28.112 E0.07642 F1350
G1 X35.799 Y28.112 E0.04425 F1276.3
G1 X35.889 Y28.228 E0.00676 F1202.6
G1 X35.889 Y28.979 E0.03473 F1129
G1 X35.889 Y29.43 E0.02085 F1055.3
G1 X35.889 Y29.58 E0.00695 F981.6
; fan %*255
M106 S128
G1 X35.889 Y29.748 E0.00777 F907.9
G1 X35.889 Y30.252 E0.02329 F834.3
G1 X35.889 Y31.092 E0.03882 F760.6
G1 X35.889 Y32.267 E0.05435 F686.9
G1 X35.889 Y33.779 E0.06987 F613.2
G1 X35.889 Y36.13 E0.1087 F539.6
G1 X35.889 Y37.641 E0.06988 F613.2
G1 X35.889 Y38.817 E0.05434 F686.9
G1 X35.889 Y39.657 E0.03882 F760.6
G1 X35.889 Y40.16 E0.0233 F834.3
G1 X35.889 Y40.328 E0.00776 F907.9
; fan %*255
M106 S105
G1 X35.888 Y40.492 E0.00757 F981.6
G1 X35.886 Y40.984 E0.02273 F1055.3
G1 X35.882 Y41.803 E0.03787 F1129
G1 X35.777 Y41.889 E0.00627 F1260
G1 X34.714 Y41.889 E0.04916 F1350
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02108
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451820
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 14.999999, filament speed 0.693475, preload 0.000000
; unsupported segments 5
; Unsupported degree: 1.000000
; Overhang(43.8+)
; Unsupported Fan = 50 (from 41)
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144 F867.2
G1 X31.708 Y42.124 E0.00578 F834.5
G1 X31.708 Y41.204 E0.04253 F801.7
G1 X31.708 Y40.652 E0.02553 F768.9
G1 X31.708 Y40.468 E0.0085 F736.2
; fan %*255
M106 S128
G1 X31.708 Y40.297 E0.0079 F703.4
G1 X31.708 Y39.785 E0.02371 F670.6
G1 X31.708 Y38.93 E0.0395 F637.9
G1 X31.708 Y37.734 E0.0553 F605.1
G1 X31.708 Y36.196 E0.0711 F572.3
G1 X31.708 Y33.804 E0.1106 F539.6
G1 X31.708 Y32.266 E0.07111 F572.3
G1 X31.708 Y31.07 E0.0553 F605.1
G1 X31.708 Y30.215 E0.0395 F637.9
G1 X31.708 Y29.703 E0.0237 F670.6
G1 X31.708 Y29.532 E0.0079 F703.4
; fan %*255
M106 S105
G1 X31.708 Y29.34 E0.00885 F736.2
G1 X31.709 Y28.766 E0.02653 F768.9
G1 X31.71 Y27.81 E0.04422 F801.7
G1 X31.722 Y27.771 E0.00187 F834.5
G1 X31.755 Y27.747 E0.00188 F867.2
G1 X31.868 Y27.708 E0.00555 F900
G1 X33.029 Y27.708 E0.05369
G1 X35.013 Y27.708 E0.09173
G1 X36.171 Y27.708 E0.05353
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00109 F867.2
G1 X36.293 Y27.839 E0.00108 F834.5
; Prepare for Loop
G1 X36.292 Y28.779 E0.04348 F801.7
G1 X36.292 Y29.344 E0.02608 F768.9
G1 X36.292 Y29.532 E0.0087 F736.2
; fan %*255
M106 S128
G1 X36.292 Y29.703 E0.0079 F703.4
G1 X36.292 Y30.215 E0.0237 F670.6
G1 X36.292 Y31.07 E0.0395 F637.9
G1 X36.292 Y32.266 E0.0553 F605.1
G1 X36.292 Y33.804 E0.07111 F572.3
G1 X36.292 Y36.196 E0.1106 F539.6
G1 X36.292 Y37.734 E0.0711 F572.3
G1 X36.292 Y38.93 E0.0553 F605.1
G1 X36.292 Y39.785 E0.0395 F637.9
G1 X36.292 Y40.297 E0.02371 F670.6
G1 X36.292 Y40.468 E0.0079 F703.4
; fan %*255
M106 S105
G1 X36.292 Y40.66 E0.00884 F736.2
G1 X36.292 Y41.234 E0.02654 F768.9
G1 X36.291 Y42.19 E0.04422 F801.7
G1 X36.278 Y42.229 E0.00188 F834.5
G1 X36.246 Y42.253 E0.00187 F867.2
G1 X36.132 Y42.292 E0.00558 F900
G1 X34.964 Y42.292 E0.05398
G1 X32.952 Y42.292 E0.09302
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 29.999998, filament speed 1.386949, preload 0.000000
; unsupported segments 5
; Unsupported degree: 1.000000
; Overhang(43.8+)
; Unsupported Fan = 50 (from 41)
G1 X32.513 Y41.378 E0.00658 F1800
G1 X32.513 Y41.009 E0.01708
G1 X32.513 Y40.841 E0.00777 F1619.9
G1 X32.513 Y40.518 E0.01491 F1379.9
G1 X32.513 Y40.411 E0.00498 F1227.1
; fan %*255
M106 S128
G1 X32.513 Y40.243 E0.00776 F1112.5
G1 X32.513 Y39.739 E0.02329 F997.9
G1 X32.513 Y38.899 E0.03882 F883.3
G1 X32.513 Y37.724 E0.05435 F768.7
G1 X32.513 Y36.212 E0.06988 F654.2
G1 X32.513 Y33.861 E0.10869 F539.6
G1 X32.513 Y32.35 E0.06988 F654.2
G1 X32.513 Y31.174 E0.05435 F768.7
G1 X32.513 Y30.334 E0.03882 F883.3
; Prepare for Path
G1 X32.513 Y29.831 E0.02329 F997.9
G1 X32.513 Y29.663 E0.00776 F1112.5
; fan %*255
M106 S105
G1 X32.513 Y29.544 E0.00547 F1227.1
G1 X32.515 Y29.19 E0.0164 F1341.7
G1 X32.519 Y28.599 E0.02733 F1456.2
G1 X32.619 Y28.512 E0.00613 F1570.8
G1 X33.366 Y28.512 E0.0345 F1685.4
G1 X34.659 Y28.513 E0.05979 F1800
G1 X35.398 Y28.513 E0.03415 F1685.4
G1 X35.488 Y28.621 E0.00652 F1570.8
G1 X35.488 Y29.159 E0.02485 F1456.2
G1 X35.488 Y29.481 E0.01492 F1341.7
G1 X35.488 Y29.589 E0.00498 F1227.1
; fan %*255
M106 S128
G1 X35.488 Y29.757 E0.00776 F1112.5
G1 X35.488 Y30.261 E0.02329 F997.9
G1 X35.488 Y31.101 E0.03882 F883.3
G1 X35.488 Y32.276 E0.05435 F768.7
G1 X35.488 Y33.788 E0.06988 F654.2
G1 X35.488 Y36.139 E0.1087 F539.6
G1 X35.488 Y37.65 E0.06987 F654.2
G1 X35.488 Y38.826 E0.05435 F768.7
G1 X35.488 Y39.665 E0.03882 F883.3
G1 X35.488 Y40.169 E0.02329 F997.9
G1 X35.488 Y40.337 E0.00777 F1112.5
; fan %*255
M106 S105
G1 X35.487 Y40.455 E0.00547 F1227.1
G1 X35.485 Y40.81 E0.0164 F1341.7
G1 X35.482 Y41.402 E0.02734 F1456.2
G1 X35.38 Y41.488 E0.00615 F1570.8
G1 X34.634 Y41.488 E0.03449 F1800
G1 X34.166 Y41.488 E0.02167
G1 X33.298 Y41.488 E0.04012
G1 X32.777 Y41.488 E0.02408
G1 X32.603 Y41.488 E0.00803
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y33.02 E0
G1 X32.869 Y32.172 E0
G1 X32.869 Y31.606 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X32.855 Y31.862 E0
; head speed 37.500000, filament speed 1.733687, preload 0.000000
; unsupported segments 2
; Unsupported degree: 1.000000
; Overhang(43.8+)
; Unsupported Fan = 50 (from 41)
; fan %*255
M106 S128
G1 X32.979 Y31.742 E0.00799 F539.6
G1 X33.353 Y31.383 E0.02398
G1 X33.939 Y31.344 E0.02713
G1 X33.925 Y31.358 E0.0009
G1 X33.457 Y31.833 E0.03082
G1 X32.893 Y32.406 E0.03719
G1 X32.893 Y32.955 E0.02539
G1 X32.905 Y32.944 E0.00076
G1 X33.653 Y32.195 E0.04893
G1 X34.505 Y31.344 E0.05567
G1 X34.946 Y31.468 E0.02117
G1 X32.893 Y33.537 E0.13475
G1 X32.893 Y34.087 E0.02539
G1 X32.905 Y34.075 E0.00076
G1 X35.107 Y31.873 E0.144
G1 X35.107 Y31.889 E0.00076
G1 X35.094 Y32.452 E0.02603
G1 X32.893 Y34.669 E0.14441
G1 X32.893 Y35.218 E0.02539
G1 X32.905 Y35.206 E0.00076
G1 X35.107 Y33.004 E0.144
G1 X35.107 Y33.02 E0.00076
G1 X35.094 Y33.583 E0.02603
G1 X32.893 Y35.8 E0.14441
G1 X32.893 Y36.349 E0.02539
G1 X32.905 Y36.338 E0.00076
G1 X35.107 Y34.135 E0.144
G1 X35.107 Y34.152 E0.00076
G1 X35.094 Y34.715 E0.02603
G1 X32.893 Y36.932 E0.14441
G1 X32.893 Y37.481 E0.02539
G1 X32.905 Y37.469 E0.00076
G1 X35.107 Y35.267 E0.144
G1 X35.107 Y35.283 E0.00076
G1 X35.094 Y35.846 E0.02603
G1 X32.893 Y38.047 E0.14388
G1 X33.014 Y38.491 E0.02128
G1 X35.107 Y36.398 E0.13684
G1 X35.107 Y36.415 E0.00077
G1 X35.094 Y36.977 E0.02602
G1 X34.182 Y37.889 E0.05958
G1 X33.417 Y38.654 E0.05004
G1 X33.434 Y38.654 E0.00076
G1 X33.996 Y38.64 E0.02603
G1 X34.496 Y38.141 E0.03264 F695.1
G1 X34.866 Y37.771 E0.02421 F850.6
G1 X35.107 Y37.529 E0.01577 F1006
G1 X35.107 Y37.546 E0.00079 F1161.5
G1 X35.106 Y37.7 E0.00712 F1317
; fan %*255
M106 S105
G1 X35.102 Y37.804 E0.00478 F1489.8
G1 X35.089 Y38.113 E0.01433 F1761.3
G1 X34.743 Y38.459 E0.02259 F2250
G1 X34.536 Y38.666 E0.01356
G1 X34.467 Y38.735 E0.00452
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34.283 Y38.677 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.849 Y40.374 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X34.968 Y40.255 E0
; head speed 44.999996, filament speed 2.600530, preload 0.000000
G1 X34.889 Y40.334 E0.00648 F2700
G1 X34.651 Y40.572 E0.01943
G1 X34.572 Y40.651 E0.00647
G1 X34.334 Y40.889 E0.01943
G1 X34.255 Y40.968 E0.00648
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34.283 Y40.94 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y39.808 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y39.927 E0
; head speed 44.999996, filament speed 2.600530, preload 0.000000
G1 X33.115 Y39.845 E0.00672 F2700
G1 X33.361 Y39.598 E0.02015
G1 X33.444 Y39.516 E0.00671
G1 X33.69 Y39.27 E0.02015
G1 X33.772 Y39.188 E0.00672
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.717 Y39.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.717 Y34.151 E0
G1 X33.434 Y33.303 E0
G1 X33.151 Y30.757 E0
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 41%
; fan %*255
M106 S105
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.096 Y30.812 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 44.999996, filament speed 2.600530, preload 0.000000
; Prepare for Destring
G1 X33.191 Y30.716 E0.0078 F2700
G1 X33.475 Y30.428 E0.02338
G1 X33.949 Y29.948 E0.03897
G1 X34 Y29.634 E0.01841
G1 X34 Y29.183 E0.02608
G1 X34 Y29.032 E0.0087
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 42%
; fan %*255
M106 S107
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y29.032 Z2.828 E0 F300
; Blending Fan to Cool (10.2% blend)
; Blended Fan at 43%
; fan %*255
M106 S110
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.717 Y31.323 E0
G1 X33.434 Y32.172 E0
G1 X32.586 Y35.519 E0
G1 X32.586 Y39.808 E0
G1 X32.303 Y40.657 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 36.928844, post = 31.307383
; Dwell time remaining = -21.307383
;
; Post-layer lift
G1 X32.303 Y40.657 Z2.945 E0 F300
; END_LAYER_OBJECT z=2.778
; *** Estimate all extruders at 2.1 [s], Slowing 0.168x to 9.9 [s] ***
; BEGIN_LAYER_OBJECT z=2.895 z_thickness=0.263
; Fan set to Cool value 50%
; fan %*255
M106 S128
;
; 'Loop Path', 0.2 [feed mm/s], 3.8 [head mm/s]
G1 X66.182 Y73.879 Z2.945 E0 F9000
G1 X66.182 Y73.879 Z2.895 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 3.790283, filament speed 0.165776, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F227.4
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 2.5 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.526855, filament speed 0.110517, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F151.6
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72.566 E0
G1 X67.414 Y71.717 E0
G1 X67.414 Y71.717 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.4 [feed mm/s], 7.6 [head mm/s]
G1 X67.346 Y71.785 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 7.580566, filament speed 0.414440, preload 0.000000
; Prepare for Destring
G1 X67.158 Y71.957 E0.01395 F454.8
G1 X66.855 Y72 E0.01675
G1 X66.08 Y72.002 E0.04238
G1 X65.719 Y72.003 E0.01971
G1 X64.973 Y72.006 E0.04077
G1 X64.783 Y72.086 E0.01132
G1 X64.654 Y72.215 E0.00997
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 7.6 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 7.580566, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X64.654 Y72.215 Z2.945 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.586 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.974546, post = 9.929063
; Dwell time remaining = 0.070937
;
; Post-layer lift
G1 X66.283 Y73.98 Z3.106 E0 F300
; END_LAYER_OBJECT z=2.895
; BEGIN_LAYER_OBJECT z=3.056 z_thickness=0.278
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z3.106 E0 F9000
G1 X46.187 Y73.389 Z3.056 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00003
G1 X47.786 Y73.788 E0.00018
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y72.788 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.445 Y72.869 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X44.51 Y72.789 E0.00594 F2700
G1 X44.525 Y72.508 E0.01627
G1 X44.528 Y71.763 E0.04305
G1 X44.529 Y71.411 E0.02033
G1 X44.532 Y70.626 E0.04537
G1 X44.66 Y70.391 E0.01547
G1 X44.92 Y70.131 E0.02124
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X44.92 Y70.131 Z3.106 E0 F300
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X44.808 Y70.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.808 Y62.916 E0
G1 X44.813 Y62.891 E0
G1 X44.828 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z3.056 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
G1 X44.926 Y62.388 E0.009 F1350
G1 X44.342 Y62.388 E0.02698
G1 X43.37 Y62.388 E0.04498
G1 X42.008 Y62.388 E0.06296
G1 X40.257 Y62.388 E0.08096
G1 X38.116 Y62.388 E0.09895
G1 X32.668 Y62.388 E0.25187
; Prepare for Perimeter
G1 X32.61 Y62.183 E0.00981
G1 X32.61 Y58.61 E0.16521
G1 X40.916 Y58.615 E0.384
G1 X43.031 Y58.616 E0.09775
G1 X44.818 Y58.618 E0.08263
G1 X46.278 Y58.618 E0.0675
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04948
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.02121
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426338
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.489 Y62.788 E0.05374
G1 X44.031 Y62.788 E0.06739
G1 X42.279 Y62.788 E0.08102
G1 X40.231 Y62.788 E0.09466
G1 X32.318 Y62.788 E0.36582
G1 X32.279 Y62.775 E0.00192
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00702
G1 X32.209 Y58.275 E0.19977
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.217 E0.00159
G1 X32.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.66592
G1 X46.753 Y58.257 E0.00388
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08337
G1 X46.783 Y61.609 E0.06888
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00004
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.777 Y62.785 E0.00015
G1 X46.219 Y62.388 E0.03167
G1 X45.627 Y62.388 E0.02736
G1 X45.309 Y62.388 E0.01468
G1 X45.25 Y62.388 E0.00273
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X39.191 Y60.348 E0
G1 X36.606 Y59.777 E0
G1 X36.04 Y59.777 E0
G1 X36.04 Y59.777 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X35.983 Y59.592 E0
; head speed 37.500000, filament speed 1.733684, preload 0.000000
G1 X36.048 Y59.53 E0.00417 F2250
G1 X36.242 Y59.341 E0.01252
G1 X36.567 Y59.028 E0.02087
G1 X37.15 Y58.991 E0.027
G1 X37.136 Y59.005 E0.00089
G1 X36.648 Y59.5 E0.03214
G1 X36.063 Y60.094 E0.03854
G1 X36.063 Y60.643 E0.02538
G1 X36.077 Y60.63 E0.0009
G1 X36.852 Y59.862 E0.05042
G1 X37.732 Y58.991 E0.05723
G1 X38.281 Y58.991 E0.02539
G1 X38.269 Y59.003 E0.00077
G1 X36.064 Y61.21 E0.14426
G1 X36.122 Y61.716 E0.02352
G1 X36.13 Y61.708 E0.00052
G1 X38.863 Y58.991 E0.17815
G1 X39.412 Y58.991 E0.02539
G1 X39.401 Y59.003 E0.00077
G1 X36.436 Y61.968 E0.19385
G1 X36.452 Y61.969 E0.00073
G1 X36.962 Y62.007 E0.02368
G1 X39.995 Y58.991 E0.19771
G1 X40.544 Y58.991 E0.02539
G1 X40.532 Y59.003 E0.00077
G1 X37.527 Y62.008 E0.19647
G1 X37.544 Y62.008 E0.00076
G1 X38.104 Y61.997 E0.02591
G1 X41.126 Y58.991 E0.19705
G1 X41.675 Y58.991 E0.02539
G1 X41.663 Y59.003 E0.00077
G1 X38.658 Y62.008 E0.19647
G1 X38.675 Y62.008 E0.00076
G1 X39.235 Y61.997 E0.02591
G1 X42.243 Y58.991 E0.19656
G1 X42.766 Y59.032 E0.02427
G1 X42.758 Y59.04 E0.00052
G1 X39.79 Y62.008 E0.19407
G1 X39.806 Y62.008 E0.00077
G1 X40.367 Y61.997 E0.02591
G1 X43.047 Y59.317 E0.17522
G1 X43.048 Y59.332 E0.00072
G1 X43.089 Y59.84 E0.02354
G1 X40.921 Y62.008 E0.14176
G1 X40.938 Y62.008 E0.00077
G1 X41.498 Y61.997 E0.02591
G1 X42.346 Y61.149 E0.05543
G1 X43.09 Y60.404 E0.04868
G1 X43.09 Y60.421 E0.00077
G1 X43.079 Y60.982 E0.02594
G1 X42.517 Y61.543 E0.0367
G1 X42.052 Y62.008 E0.03039
G1 X42.074 Y62.006 E0.00101
G1 X42.686 Y61.941 E0.02842
G1 X43.021 Y61.606 E0.0219
G1 X43.132 Y61.494 E0.0073
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.394 Y61.475 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y62.04 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.525 Y61.867 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X44.534 Y61.546 E0.01857 F2700
G1 X44.662 Y61.338 E0.01409
G1 X45.233 Y60.77 E0.04655
G1 X45.607 Y60.398 E0.03049
G1 X45.741 Y60.343 E0.00837
G1 X45.867 Y60.343 E0.0073
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y59.212 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.525 Y59.154 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X44.518 Y59.208 E0.00315 F2700
G1 X44.385 Y59.352 E0.01136
G1 X43.961 Y59.776 E0.03464
G1 X43.707 Y60.031 E0.02079
G1 X43.622 Y60.115 E0.00694
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X43.677 Y60.06 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X41.131 Y59.777 E0
G1 X40.283 Y59.495 E0
G1 X37.454 Y59.495 E0
G1 X36.606 Y59.212 E0
G1 X35.475 Y59.212 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.475 Y59.178 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X35.467 Y59.212 E0.00205 F2700
G1 X35.334 Y59.353 E0.0112
G1 X34.964 Y59.718 E0.03
G1 X34.383 Y60.292 E0.04725
G1 X34.068 Y60.343 E0.01841
G1 X33.561 Y60.343 E0.02934
G1 X33.256 Y60.343 E0.0176
G1 X33.154 Y60.343 E0.00587
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X33.154 Y60.343 Z3.106 E0 F300
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.212 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X39.345 Y62.323 E0
G1 X42.758 Y62.329 E0
G1 X42.799 Y62.344 E0
G1 X42.823 Y62.38 E0
G1 X43.111 Y63.608 E0
G1 X43.152 Y69.125 E0
G1 X43.158 Y69.151 E0
G1 X43.172 Y69.172 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z3.056 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
G1 X32.112 Y40.46 E0.009 F1350
G1 X32.112 Y39.876 E0.02699
G1 X32.113 Y38.903 E0.045
G1 X32.114 Y37.54 E0.06298
G1 X32.114 Y35.788 E0.08099
G1 X32.116 Y33.647 E0.09898
; Prepare for Perimeter
G1 X32.118 Y28.198 E0.25196
G1 X32.223 Y28.111 E0.00625
G1 X35.799 Y28.112 E0.16533
G1 X35.889 Y28.228 E0.00677
G1 X35.885 Y36.474 E0.38123
G1 X35.884 Y38.574 E0.09711
G1 X35.883 Y40.351 E0.08212
G1 X35.882 Y41.803 E0.06713
G1 X35.777 Y41.889 E0.00628
G1 X34.714 Y41.889 E0.04917
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451725
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.723 E0.06479
G1 X31.708 Y38.928 E0.08299
G1 X31.709 Y36.739 E0.1012
G1 X31.71 Y27.81 E0.4128
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00188
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00109
G1 X36.291 Y42.19 E0.66347
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00188
G1 X36.132 Y42.292 E0.00557
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00005
G1 X31.803 Y42.286 E0.00019
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.849 Y32.737 E0
G1 X35.131 Y31.606 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X35.108 Y31.582 E0
; head speed 37.500000, filament speed 1.733684, preload 0.000000
G1 X35.188 Y31.668 E0.00544 F2250
G1 X35.429 Y31.926 E0.0163
G1 X35.508 Y32.548 E0.02899
G1 X35.493 Y32.533 E0.00099
G1 X35.076 Y32.124 E0.02698
G1 X34.573 Y31.629 E0.03263
G1 X34.023 Y31.629 E0.02539
G1 X34.032 Y31.638 E0.00056
G1 X34.721 Y32.334 E0.04529
G1 X35.508 Y33.13 E0.05173
G1 X35.508 Y33.679 E0.02539
G1 X35.496 Y33.668 E0.00075
G1 X33.441 Y31.629 E0.13382
G1 X32.892 Y31.629 E0.02539
G1 X32.901 Y31.638 E0.00056
G1 X35.508 Y34.261 E0.17099
G1 X35.508 Y34.811 E0.02539
G1 X35.496 Y34.799 E0.00075
G1 X32.502 Y31.805 E0.19574
G1 X32.502 Y31.821 E0.00072
G1 X32.494 Y32.363 E0.02505
G1 X35.508 Y35.393 E0.19759
G1 X35.508 Y35.942 E0.02538
G1 X35.496 Y35.931 E0.00075
G1 X32.492 Y32.927 E0.1964
G1 X32.492 Y32.943 E0.00076
G1 X32.504 Y33.504 E0.02593
G1 X35.508 Y36.524 E0.19693
G1 X35.508 Y37.073 E0.02539
G1 X35.496 Y37.062 E0.00075
G1 X32.492 Y34.058 E0.19639
G1 X32.492 Y34.075 E0.00077
G1 X32.504 Y34.635 E0.02592
G1 X35.508 Y37.641 E0.19647
G1 X35.498 Y38.195 E0.02559
G1 X35.487 Y38.184 E0.00069
G1 X32.492 Y35.189 E0.19581
G1 X32.492 Y35.206 E0.00076
G1 X32.504 Y35.767 E0.02593
G1 X35.108 Y38.371 E0.17026
G1 X35.091 Y38.371 E0.00077
G1 X34.534 Y38.362 E0.02579
G1 X32.492 Y36.321 E0.13346
G1 X32.492 Y36.337 E0.00076
G1 X32.504 Y36.898 E0.02593
G1 X33.289 Y37.683 E0.05133
G1 X33.977 Y38.371 E0.04496
G1 X33.96 Y38.371 E0.00077
G1 X33.402 Y38.362 E0.02578
G1 X32.904 Y37.864 E0.0326
G1 X32.492 Y37.452 E0.0269
G1 X32.495 Y37.477 E0.00116
G1 X32.589 Y38.114 E0.02976
G1 X32.816 Y38.342 E0.01488
G1 X32.892 Y38.418 E0.00496
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.869 Y38.394 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.869 Y40.091 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X32.632 Y40.091 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X32.829 Y40.099 E0.01143 F2700
G1 X33.007 Y40.229 E0.0127
G1 X33.394 Y40.619 E0.03176
G1 X33.582 Y40.807 E0.01535
G1 X33.942 Y41.169 E0.02955
G1 X34 Y41.281 E0.00725
G1 X34 Y41.368 E0.00506
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y41.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.131 Y40.091 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.368 Y40.091 E0
; head speed 45.000000, filament speed 2.600526, preload 0.000000
G1 X35.171 Y40.083 E0.01143 F2700
G1 X34.993 Y39.953 E0.0127
G1 X34.404 Y39.363 E0.04821
G1 X34.064 Y39.022 E0.02779
G1 X34 Y38.941 E0.00598
G1 X34 Y38.914 E0.0016
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y38.96 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.283 Y36.414 E0
G1 X34.566 Y35.566 E0
G1 X34.846 Y32.696 E0
G1 X35.131 Y31.04 E0
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.201 Y31.04 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000000, filament speed 2.600526, preload 0.000000
; Prepare for Destring
G1 X35.138 Y31.033 E0.0037 F2700
G1 X34.991 Y30.9 E0.01143
G1 X34.621 Y30.525 E0.03046
G1 X34.051 Y29.948 E0.04684
G1 X34 Y29.634 E0.01841
G1 X34 Y29.077 E0.03218
G1 X34 Y28.743 E0.01931
G1 X34 Y28.632 E0.00644
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y28.632 Z3.106 E0 F300
; Blending Fan to Cool (72.6% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.717 Y31.323 E0
G1 X33.434 Y32.172 E0
G1 X32.586 Y35.519 E0
G1 X32.586 Y39.808 E0
G1 X32.303 Y40.657 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 18.207237, post = 15.485929
; Dwell time remaining = -5.485929
;
; Post-layer lift
G1 X32.303 Y40.657 Z3.208 E0 F300
; END_LAYER_OBJECT z=3.056
; *** Estimate all extruders at 2.6 [s], Slowing 0.200x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=3.158 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 4.5 [head mm/s]
G1 X66.182 Y73.879 Z3.208 E0 F9000
G1 X66.182 Y73.879 Z3.158 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 4.493408, filament speed 0.196529, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F269.6
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.0 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.995605, filament speed 0.131019, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F179.7
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.0 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 5.991210, filament speed 0.262038, preload 0.000000
G1 X66.948 Y73.125 E0.00553 F359.5
G1 X66.642 Y73.349 E0.0166
G1 X66.135 Y73.487 E0.023
G1 X65.637 Y73.452 E0.02183
G1 X65.109 Y73.199 E0.02562
G1 X64.754 Y72.818 E0.02275
G1 X64.547 Y72.351 E0.02235
G1 X64.518 Y71.804 E0.02393
G1 X64.682 Y71.299 E0.02326
G1 X65.017 Y70.875 E0.02361
G1 X65.485 Y70.598 E0.02383
G1 X66.055 Y70.504 E0.02526
G1 X66.578 Y70.623 E0.02347
G1 X67.032 Y70.919 E0.02367
G1 X67.35 Y71.36 E0.02381
G1 X67.49 Y71.876 E0.02339
G1 X67.432 Y72.428 E0.02427
G1 X67.172 Y72.919 E0.02427
G1 X67.051 Y73.051 E0.00785
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.5 [feed mm/s], 9.0 [head mm/s]
G1 X66.968 Y72 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.986816, filament speed 0.491321, preload 0.000000
; Prepare for Destring
G1 X66.847 Y72 E0.00661 F539.2
G1 X66.484 Y72 E0.01984
G1 X65.516 Y72 E0.05291
G1 X65.153 Y72 E0.01984
G1 X65.032 Y72 E0.00661
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 9.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 8.986816, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X65.032 Y72 Z3.208 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.869 Y72 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66 Y73.131 E0
G1 X66.283 Y73.98 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 10.002649, post = 9.865006
; Dwell time remaining = 0.134993
;
; Post-layer lift
G1 X66.283 Y73.98 Z3.383 E0 F300
; END_LAYER_OBJECT z=3.158
; BEGIN_LAYER_OBJECT z=3.333 z_thickness=0.277
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z3.383 E0 F9000
G1 X46.187 Y73.389 Z3.333 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.036469, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00711 F1350
G1 X45.57 Y73.387 E0.02132
G1 X44.798 Y73.385 E0.03554
G1 X43.718 Y73.381 E0.04976
G1 X43.612 Y73.319 E0.00566
G1 X43.612 Y72.264 E0.04864
G1 X43.612 Y71.028 E0.05693
G1 X43.612 Y69.612 E0.06523
G1 X45.033 Y69.612 E0.06548
G1 X46.273 Y69.612 E0.05713
G1 X47.332 Y69.612 E0.04877
G1 X47.39 Y69.817 E0.0098
G1 X47.39 Y70.853 E0.04775
G1 X47.39 Y71.594 E0.03411
G1 X47.39 Y72.038 E0.02048
G1 X47.39 Y72.187 E0.00683
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 14.999999, filament speed 0.690979, preload 0.000000
G1 X47.39 Y72.317 E0.00269 F900
G1 X47.395 Y72.652 E0.01545
G1 X47.404 Y73.285 E0.02916
G1 X47.79 Y73.79 E0.02928
G1 X47.79 Y73.79 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05424
G1 X45.12 Y73.786 E0.06864
G1 X43.317 Y73.783 E0.08305
G1 X43.243 Y73.736 E0.00402
G1 X43.22 Y73.712 E0.00153
G1 X43.212 Y73.68 E0.00153
G1 X43.212 Y69.278 E0.20276
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.00159
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20284
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00191
G1 X47.791 Y69.404 E0.00702
G1 X47.791 Y71.169 E0.08132
G1 X47.791 Y72.631 E0.06732
G1 X47.791 Y73.788 E0.05333
G1 X47.791 Y73.789 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00003
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02931
G1 X46.65 Y73.394 E0.02896
G1 X46.317 Y73.389 E0.01537
G1 X46.258 Y73.389 E0.00271
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X46.989 Y72.989 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 29.999998, filament speed 1.381958, preload 0.000000
; Prepare for Destring
G1 X46.81 Y72.989 E0.00827 F1800
G1 X46.271 Y72.987 E0.0248
G1 X45.374 Y72.985 E0.04133
G1 X44.118 Y72.981 E0.05787
G1 X44.012 Y72.918 E0.00569
G1 X44.012 Y71.587 E0.06131
G1 X44.012 Y70.012 E0.07256
G1 X45.592 Y70.012 E0.07281
G1 X46.927 Y70.012 E0.06148
G1 X46.989 Y70.18 E0.00825
G1 X46.989 Y71.409 E0.05661
G1 X46.989 Y72.286 E0.04044
G1 X46.989 Y72.813 E0.02427
G1 X46.989 Y72.989 E0.0081
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.989 Y72.989 Z3.383 E0 F300
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.772 Y69.465 E0
G1 X45.374 Y68.392 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z3.333 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.036469, preload 0.000000
G1 X44.926 Y62.388 E0.00896 F1350
G1 X44.342 Y62.388 E0.02689
G1 X43.37 Y62.388 E0.04482
G1 X42.008 Y62.388 E0.06274
G1 X40.257 Y62.388 E0.08066
G1 X38.116 Y62.388 E0.0986
G1 X32.668 Y62.388 E0.25096
; Prepare for Perimeter
G1 X32.61 Y62.183 E0.00978
G1 X32.61 Y58.61 E0.16461
G1 X40.916 Y58.615 E0.38262
G1 X43.031 Y58.616 E0.0974
G1 X44.818 Y58.618 E0.08233
G1 X46.278 Y58.618 E0.06726
G1 X46.388 Y58.674 E0.00566
G1 X46.388 Y59.745 E0.04931
G1 X46.388 Y60.509 E0.03522
G1 X46.388 Y60.968 E0.02114
G1 X46.388 Y61.121 E0.00704
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426338
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 14.999999, filament speed 0.690979, preload 0.000000
G1 X46.388 Y61.309 E0.00215 F900
G1 X46.392 Y61.635 E0.015
G1 X46.4 Y62.271 E0.02929
G1 X46.737 Y62.707 E0.02536
G1 X46.761 Y62.751 E0.00233
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.00069
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00421
G1 X45.489 Y62.788 E0.05355
G1 X44.031 Y62.788 E0.06714
G1 X42.279 Y62.788 E0.08073
G1 X40.231 Y62.788 E0.09432
G1 X32.318 Y62.788 E0.36451
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00191
G1 X32.209 Y62.596 E0.007
G1 X32.209 Y58.275 E0.19905
G1 X32.218 Y58.242 E0.00159
G1 X32.242 Y58.217 E0.00159
G1 X32.275 Y58.209 E0.00159
G1 X46.679 Y58.217 E0.66352
G1 X46.753 Y58.257 E0.00388
G1 X46.779 Y58.282 E0.00163
G1 X46.788 Y58.316 E0.00163
G1 X46.786 Y60.119 E0.08307
G1 X46.783 Y61.609 E0.06863
G1 X46.782 Y62.785 E0.0542
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03155
G1 X45.627 Y62.388 E0.02726
G1 X45.309 Y62.388 E0.01463
G1 X45.25 Y62.388 E0.00273
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 29.999998, filament speed 1.381958, preload 0.000000
G1 X45.822 Y61.988 E0.00734 F1800
G1 X45.344 Y61.988 E0.02202
G1 X44.547 Y61.988 E0.03671
G1 X43.432 Y61.988 E0.05138
G1 X41.998 Y61.988 E0.06607
G1 X40.245 Y61.988 E0.08075
G1 X38.173 Y61.988 E0.09543
G1 X33.074 Y61.988 E0.23491
G1 X33.011 Y61.821 E0.00822
G1 X33.011 Y59.01 E0.12946
G1 X40.705 Y59.015 E0.35445
G1 X42.71 Y59.017 E0.09233
G1 X44.434 Y59.018 E0.07944
G1 X45.878 Y59.019 E0.06653
G1 X45.988 Y59.076 E0.0057
G1 X45.985 Y60.35 E0.05869
G1 X45.983 Y61.26 E0.04192
G1 X45.982 Y61.806 E0.02515
G1 X45.982 Y61.988 E0.00839
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X37.454 Y61.757 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X37.384 Y61.687 E0
; head speed 37.500000, filament speed 1.727448, preload 0.000000
G1 X37.3 Y61.601 E0.00552 F2250
G1 X37.048 Y61.344 E0.01657
G1 X36.629 Y60.916 E0.02761
G1 X36.629 Y60.367 E0.02529
G1 X36.638 Y60.375 E0.00056
G1 X37.206 Y60.936 E0.03678
G1 X37.887 Y61.608 E0.04405
G1 X38.436 Y61.608 E0.0253
G1 X38.423 Y61.594 E0.00087
G1 X37.581 Y60.753 E0.05483
G1 X36.629 Y59.801 E0.06201
G1 X36.8 Y59.406 E0.0198
G1 X39.018 Y61.608 E0.14395
G1 X39.567 Y61.608 E0.0253
G1 X39.554 Y61.594 E0.00087
G1 X37.352 Y59.392 E0.14348
G1 X37.368 Y59.392 E0.00076
G1 X37.929 Y59.404 E0.02585
G1 X40.15 Y61.608 E0.14412
G1 X40.699 Y61.608 E0.02529
G1 X40.685 Y61.594 E0.00088
G1 X38.483 Y59.392 E0.14348
G1 X38.5 Y59.392 E0.00076
G1 X39.061 Y59.404 E0.02585
G1 X41.281 Y61.608 E0.14412
G1 X41.83 Y61.608 E0.02529
G1 X41.817 Y61.594 E0.00088
G1 X39.614 Y59.392 E0.14348
G1 X39.631 Y59.392 E0.00076
G1 X40.192 Y59.404 E0.02585
G1 X42.367 Y61.579 E0.14171
G1 X42.522 Y61.168 E0.02022
G1 X41.578 Y60.224 E0.06148
G1 X40.746 Y59.392 E0.05424
G1 X40.762 Y59.392 E0.00077
G1 X41.323 Y59.404 E0.02585
G1 X41.977 Y60.058 E0.04259
G1 X42.522 Y60.603 E0.03551
G1 X42.522 Y60.586 E0.00076
G1 X42.514 Y60.028 E0.0257
G1 X42.125 Y59.639 E0.02534
G1 X41.891 Y59.406 E0.0152
G1 X41.813 Y59.328 E0.00507
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X41.697 Y59.212 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.243 Y59.495 E0
G1 X44.808 Y59.495 E0
G1 X44.808 Y59.495 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.846 Y59.532 E0
; head speed 45.000004, filament speed 2.591172, preload 0.000000
G1 X44.915 Y59.601 E0.00563 F2700
G1 X45.122 Y59.809 E0.0169
G1 X45.192 Y59.878 E0.00563
G1 X45.399 Y60.085 E0.0169
G1 X45.468 Y60.154 E0.00563
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y60.06 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y61.475 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X44.518 Y61.467 E0
; head speed 45.000004, filament speed 2.591172, preload 0.000000
G1 X44.398 Y61.348 E0.00973 F2700
G1 X44.038 Y60.991 E0.0292
G1 X43.438 Y60.396 E0.04866
G1 X43.247 Y60.343 E0.01145
G1 X43.025 Y60.343 E0.01274
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X42.828 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X40.283 Y60.626 E0
G1 X39.434 Y60.909 E0
G1 X36.889 Y61.192 E0
G1 X36.04 Y61.475 E0
G1 X35.475 Y61.475 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X35.467 Y61.467 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.591172, preload 0.000000
; Prepare for Destring
G1 X35.347 Y61.348 E0.00976 F2700
G1 X34.985 Y60.99 E0.02928
G1 X34.383 Y60.394 E0.04881
G1 X34.068 Y60.343 E0.01834
G1 X33.665 Y60.343 E0.02322
G1 X33.531 Y60.343 E0.00774
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X33.531 Y60.343 Z3.383 E0 F300
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.777 Y60.343 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X39.911 Y62.323 E0
G1 X42.758 Y62.329 E0
G1 X42.799 Y62.344 E0
G1 X42.823 Y62.38 E0
G1 X43.111 Y63.608 E0
G1 X43.152 Y69.125 E0
G1 X43.158 Y69.151 E0
G1 X43.172 Y69.172 E0
G1 X45.091 Y71.091 E0
G1 X45.374 Y71.94 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z3.333 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.036469, preload 0.000000
G1 X32.112 Y40.46 E0.00897 F1350
G1 X32.112 Y39.876 E0.02689
G1 X32.113 Y38.903 E0.04483
G1 X32.114 Y37.54 E0.06277
G1 X32.114 Y35.788 E0.08069
G1 X32.116 Y33.647 E0.09863
; Prepare for Perimeter
G1 X32.118 Y28.198 E0.25105
G1 X32.223 Y28.111 E0.00623
G1 X35.799 Y28.112 E0.16474
G1 X35.889 Y28.228 E0.00673
G1 X35.885 Y36.474 E0.37987
G1 X35.884 Y38.574 E0.09676
G1 X35.883 Y40.351 E0.08182
G1 X35.882 Y41.803 E0.06689
G1 X35.777 Y41.889 E0.00625
G1 X34.714 Y41.889 E0.049
G1 X33.954 Y41.889 E0.03499
G1 X33.498 Y41.889 E0.021
G1 X33.346 Y41.889 E0.007
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451725
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 14.999999, filament speed 0.690979, preload 0.000000
G1 X33.246 Y41.889 E0.00406 F900
G1 X32.909 Y41.892 E0.01552
G1 X32.32 Y41.899 E0.02711
G1 X31.902 Y42.187 E0.0234
G1 X31.829 Y42.259 E0.00473
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00144
G1 X31.751 Y42.242 E0.00143
G1 X31.708 Y42.124 E0.00576
G1 X31.708 Y40.723 E0.06456
G1 X31.708 Y38.928 E0.0827
G1 X31.709 Y36.739 E0.10083
G1 X31.71 Y27.81 E0.41131
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00553
G1 X36.171 Y27.708 E0.19823
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00131
G1 X36.277 Y27.796 E0.00387
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00108
G1 X36.291 Y42.19 E0.66109
G1 X36.278 Y42.229 E0.00187
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00555
G1 X34.395 Y42.292 E0.07999
G1 X32.952 Y42.292 E0.06648
G1 X31.802 Y42.292 E0.05299
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00005
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02807
G1 X32.112 Y41.117 E0.02968
G1 X32.112 Y40.751 E0.01684
G1 X32.112 Y40.659 E0.00424
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 29.999998, filament speed 1.381958, preload 0.000000
G1 X32.513 Y41.378 E0.00655 F1800
G1 X32.513 Y40.913 E0.02143
G1 X32.513 Y40.125 E0.03633
G1 X32.514 Y39.012 E0.05123
G1 X32.514 Y37.577 E0.06614
G1 X32.515 Y35.817 E0.08104
G1 X32.516 Y33.735 E0.09594
G1 X32.519 Y28.599 E0.2366
G1 X32.619 Y28.512 E0.00611
G1 X35.398 Y28.513 E0.12797
G1 X35.488 Y28.621 E0.0065
G1 X35.484 Y36.283 E0.35294
G1 X35.483 Y38.272 E0.09162
G1 X35.482 Y39.978 E0.0786
G1 X35.482 Y41.402 E0.06558
G1 X35.38 Y41.488 E0.00612
G1 X34.165 Y41.488 E0.05597
G1 X33.298 Y41.488 E0.03998
G1 X32.777 Y41.488 E0.02399
G1 X32.603 Y41.488 E0.00799
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y36.414 E0
G1 X32.869 Y35.566 E0
G1 X33.132 Y32.732 E0
G1 X33.434 Y31.606 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X33.417 Y31.865 E0
; head speed 37.500000, filament speed 1.727448, preload 0.000000
G1 X33.297 Y31.99 E0.00797 F2250
G1 X32.938 Y32.364 E0.02391
G1 X32.893 Y32.955 E0.02729
G1 X32.907 Y32.941 E0.00091
G1 X33.382 Y32.474 E0.03072
G1 X33.955 Y31.91 E0.03704
G1 X34.504 Y31.91 E0.02529
G1 X34.493 Y31.921 E0.00077
G1 X33.744 Y32.677 E0.04899
G1 X32.893 Y33.537 E0.05575
G1 X32.893 Y34.087 E0.0253
G1 X32.905 Y34.075 E0.00076
G1 X34.946 Y32.034 E0.13297
G1 X35.107 Y32.438 E0.02006
G1 X32.893 Y34.669 E0.14477
G1 X32.893 Y35.218 E0.02529
G1 X32.905 Y35.206 E0.00076
G1 X35.107 Y33.004 E0.14348
G1 X35.107 Y33.02 E0.00077
G1 X35.094 Y33.583 E0.02593
G1 X32.893 Y35.8 E0.14389
G1 X32.893 Y36.349 E0.02529
G1 X32.905 Y36.338 E0.00076
G1 X35.107 Y34.135 E0.14348
G1 X35.107 Y34.152 E0.00077
G1 X35.094 Y34.715 E0.02593
G1 X32.893 Y36.932 E0.14389
G1 X32.893 Y37.481 E0.02529
G1 X32.905 Y37.469 E0.00076
G1 X35.107 Y35.267 E0.14348
G1 X35.107 Y35.283 E0.00077
G1 X35.094 Y35.846 E0.02593
G1 X33.014 Y37.926 E0.13548
G1 X33.417 Y38.088 E0.02002
G1 X34.316 Y37.19 E0.05852
G1 X35.107 Y36.398 E0.05157
G1 X35.107 Y36.415 E0.00076
G1 X35.094 Y36.977 E0.02593
G1 X34.488 Y37.583 E0.03945
G1 X33.983 Y38.088 E0.03292
G1 X34 Y38.088 E0.00078
G1 X34.565 Y38.071 E0.02607
G1 X34.911 Y37.726 E0.02251
G1 X35.118 Y37.518 E0.01351
G1 X35.187 Y37.449 E0.0045
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.131 Y37.263 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X34.849 Y39.808 E0
G1 X34.849 Y40.374 E0
G1 X34.849 Y40.374 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X34.968 Y40.255 E0
; head speed 45.000004, filament speed 2.591172, preload 0.000000
G1 X34.889 Y40.334 E0.00645 F2700
G1 X34.651 Y40.572 E0.01936
G1 X34.572 Y40.651 E0.00646
G1 X34.334 Y40.889 E0.01936
G1 X34.255 Y40.968 E0.00645
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34.283 Y40.94 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y39.808 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y39.927 E0
; head speed 45.000004, filament speed 2.591172, preload 0.000000
G1 X33.134 Y39.825 E0.00832 F2700
G1 X33.439 Y39.517 E0.02494
G1 X33.947 Y39.004 E0.04158
G1 X34 Y38.812 E0.01144
G1 X34 Y38.591 E0.01274
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y38.394 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.717 Y35.849 E0
G1 X33.434 Y35 E0
G1 X33.434 Y32.172 E0
G1 X33.151 Y31.323 E0
G1 X33.151 Y30.757 E0
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Stacked Sparse Infill Path', 2.6 [feed mm/s], 45.0 [head mm/s]
G1 X33.033 Y30.876 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 45.000004, filament speed 2.591172, preload 0.000000
; Prepare for Destring
G1 X33.134 Y30.773 E0.00834 F2700
G1 X33.44 Y30.464 E0.02503
G1 X33.949 Y29.948 E0.04172
G1 X34 Y29.634 E0.01835
G1 X34 Y29.183 E0.02598
G1 X34 Y29.032 E0.00867
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X34 Y29.032 Z3.383 E0 F300
; Blending Fan to Cool (68.5% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X34 Y28.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.717 Y31.323 E0
G1 X33.434 Y32.172 E0
G1 X32.586 Y35.519 E0
G1 X32.586 Y39.808 E0
G1 X32.303 Y40.657 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 19.447899, post = 16.883018
; Dwell time remaining = -6.883019
;
; Post-layer lift
G1 X32.303 Y40.657 Z3.471 E0 F300
; END_LAYER_OBJECT z=3.333
; *** Estimate all extruders at 2.1 [s], Slowing 0.168x to 9.9 [s] ***
; BEGIN_LAYER_OBJECT z=3.421 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 3.8 [head mm/s]
G1 X66.182 Y73.879 Z3.471 E0 F9000
G1 X66.182 Y73.879 Z3.421 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 3.790283, filament speed 0.165776, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F227.4
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 2.5 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 2.526855, filament speed 0.110517, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F151.6
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y72.566 E0
G1 X67.414 Y71.717 E0
G1 X67.414 Y71.717 E0
; Fan set to Cool value 50%
;
; 'Stacked Sparse Infill Path', 0.4 [feed mm/s], 7.6 [head mm/s]
G1 X67.346 Y71.785 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 7.580566, filament speed 0.414440, preload 0.000000
; Prepare for Destring
G1 X67.158 Y71.957 E0.01395 F454.8
G1 X66.855 Y72 E0.01675
G1 X66.08 Y72.002 E0.04238
G1 X65.719 Y72.003 E0.01971
G1 X64.973 Y72.006 E0.04077
G1 X64.783 Y72.086 E0.01132
G1 X64.654 Y72.215 E0.00997
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 7.6 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 7.580566, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X64.654 Y72.215 Z3.471 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X64.586 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.974546, post = 9.929063
; Dwell time remaining = 0.070937
;
; Post-layer lift
G1 X66.283 Y73.98 Z3.661 E0 F300
; END_LAYER_OBJECT z=3.421
; BEGIN_LAYER_OBJECT z=3.611 z_thickness=0.278
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z3.661 E0 F9000
G1 X46.187 Y73.389 Z3.611 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00003
G1 X47.786 Y73.788 E0.00018
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.091 Y72.223 E0
G1 X44.808 Y71.374 E0
G1 X43.96 Y69.96 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X43.884 Y70.036 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125002, filament speed 1.300263, preload 0.000000
; Prepare for Destring
G1 X44.047 Y69.88 E0.01041 F1687.5
G1 X44.614 Y69.894 E0.02622
G1 X45.167 Y69.884 E0.02559
G1 X45.16 Y69.891 E0.00048
G1 X44.587 Y70.467 E0.03756
G1 X43.88 Y71.178 E0.04634
G1 X43.894 Y71.745 E0.02622
G1 X43.884 Y72.298 E0.02559
G1 X43.891 Y72.291 E0.00048
G1 X45.012 Y71.172 E0.07323
G1 X46.308 Y69.877 E0.08469
G1 X46.774 Y69.965 E0.02195
G1 X47.22 Y70.063 E0.02111
G1 X47.134 Y70.179 E0.0067
G1 X44.179 Y73.134 E0.19321
G1 X44.231 Y73.132 E0.00241
G1 X44.736 Y73.121 E0.02332
G1 X45.303 Y73.135 E0.02624
G1 X46.309 Y72.133 E0.06564
G1 X47.134 Y71.311 E0.05386
G1 X47.132 Y71.363 E0.00241
G1 X47.121 Y71.867 E0.02331
G1 X47.135 Y72.434 E0.02625
G1 X46.75 Y72.823 E0.02527
G1 X46.519 Y73.056 E0.01518
G1 X46.442 Y73.134 E0.00507
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.442 Y73.134 Z3.661 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.374 Y69.484 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z3.611 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
G1 X44.926 Y62.388 E0.009 F1350
G1 X44.342 Y62.388 E0.02698
G1 X43.37 Y62.388 E0.04498
G1 X42.008 Y62.388 E0.06296
G1 X40.257 Y62.388 E0.08096
G1 X38.116 Y62.388 E0.09895
G1 X32.668 Y62.388 E0.25187
; Prepare for Perimeter
G1 X32.61 Y62.183 E0.00981
G1 X32.61 Y58.61 E0.16521
G1 X40.916 Y58.615 E0.384
G1 X43.031 Y58.616 E0.09775
G1 X44.818 Y58.618 E0.08263
G1 X46.278 Y58.618 E0.0675
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04948
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.02121
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426338
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.489 Y62.788 E0.05374
G1 X44.031 Y62.788 E0.06739
G1 X42.279 Y62.788 E0.08102
G1 X40.231 Y62.788 E0.09466
G1 X32.318 Y62.788 E0.36582
G1 X32.279 Y62.775 E0.00192
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00702
G1 X32.209 Y58.275 E0.19977
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.217 E0.00159
G1 X32.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.66592
G1 X46.753 Y58.257 E0.00388
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08337
G1 X46.783 Y61.609 E0.06888
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00004
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.777 Y62.785 E0.00015
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01468
G1 X45.25 Y62.388 E0.00273
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.25 Y62.388 Z3.661 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.674 Y59.5 E0
G1 X34.343 Y59.212 E0
G1 X33.495 Y58.929 E0
G1 X33.495 Y58.929 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X33.558 Y58.865 E0
G1 X33.558 Y58.865 Z3.611 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125002, filament speed 1.300263, preload 0.000000
G1 X33.481 Y58.943 E0.00506 F1687.5
G1 X33.25 Y59.177 E0.01518
G1 X32.865 Y59.566 E0.0253
G1 X32.876 Y60.463 E0.04151
G1 X32.866 Y60.689 E0.01046
G1 X32.872 Y60.683 E0.00041
G1 X33.695 Y59.863 E0.0537
G1 X34.697 Y58.865 E0.06541
G1 X35.595 Y58.876 E0.0415
G1 X35.821 Y58.865 E0.01046
G1 X35.815 Y58.872 E0.00041
G1 X32.866 Y61.821 E0.19281
G1 X32.779 Y61.937 E0.00671
G1 X33.226 Y62.035 E0.02112
G1 X33.692 Y62.123 E0.02195
G1 X36.96 Y58.865 E0.21332
G1 X37.858 Y58.876 E0.0415
G1 X38.084 Y58.865 E0.01046
G1 X38.077 Y58.872 E0.00041
G1 X34.833 Y62.116 E0.21212
G1 X34.885 Y62.114 E0.00239
G1 X35.39 Y62.106 E0.02337
G1 X35.954 Y62.12 E0.02605
G1 X39.223 Y58.865 E0.21327
G1 X40.12 Y58.876 E0.0415
G1 X40.346 Y58.865 E0.01046
G1 X40.34 Y58.872 E0.00041
G1 X37.096 Y62.116 E0.21212
G1 X37.147 Y62.114 E0.00239
G1 X37.653 Y62.106 E0.02336
G1 X38.216 Y62.12 E0.02606
G1 X41.485 Y58.865 E0.21327
G1 X42.383 Y58.876 E0.0415
G1 X42.609 Y58.865 E0.01046
G1 X42.603 Y58.872 E0.00041
G1 X39.359 Y62.116 E0.21212
G1 X39.41 Y62.114 E0.00238
G1 X39.916 Y62.106 E0.02337
G1 X40.479 Y62.12 E0.02606
; Prepare for Destring
G1 X43.748 Y58.865 E0.21327
G1 X44.646 Y58.876 E0.0415
G1 X44.872 Y58.865 E0.01046
G1 X44.866 Y58.872 E0.00041
G1 X41.621 Y62.116 E0.21211
G1 X41.673 Y62.114 E0.00239
G1 X42.178 Y62.106 E0.02337
G1 X42.742 Y62.12 E0.02605
G1 X46.003 Y58.865 E0.21301
G1 X46.119 Y58.806 E0.00601
G1 X46.164 Y59.319 E0.02382
G1 X46.189 Y59.806 E0.02252
G1 X44.926 Y61.071 E0.08264
G1 X43.884 Y62.116 E0.06822
G1 X43.936 Y62.114 E0.00239
G1 X44.441 Y62.106 E0.02336
G1 X45.005 Y62.12 E0.02606
G1 X45.661 Y61.467 E0.04279
G1 X46.055 Y61.075 E0.02569
G1 X46.187 Y60.944 E0.00861
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.187 Y60.944 Z3.661 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y60.909 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y63.644 E0
G1 X45.94 Y72.505 E0
G1 X46.223 Y73.354 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z3.611 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
G1 X32.112 Y40.46 E0.009 F1350
G1 X32.112 Y39.876 E0.02699
G1 X32.113 Y38.903 E0.045
G1 X32.114 Y37.54 E0.06298
G1 X32.114 Y35.788 E0.08099
G1 X32.116 Y33.647 E0.09898
; Prepare for Perimeter
G1 X32.118 Y28.198 E0.25196
G1 X32.223 Y28.111 E0.00625
G1 X35.799 Y28.112 E0.16534
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y36.474 E0.38123
G1 X35.884 Y38.574 E0.09711
G1 X35.883 Y40.351 E0.08212
G1 X35.882 Y41.803 E0.06713
G1 X35.777 Y41.889 E0.00628
G1 X34.714 Y41.889 E0.04917
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451725
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.723 E0.06479
G1 X31.708 Y38.928 E0.08299
G1 X31.709 Y36.739 E0.1012
G1 X31.71 Y27.81 E0.4128
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00188
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00109
G1 X36.291 Y42.19 E0.66347
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00188
G1 X36.132 Y42.292 E0.00557
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00005
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.00019
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X32.112 Y40.659 Z3.661 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.405 Y31.099 E0
G1 X35.697 Y29.343 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X35.688 Y29.334 E0
G1 X35.688 Y29.334 Z3.611 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125002, filament speed 1.300263, preload 0.000000
G1 X35.568 Y29.221 E0.00763 F1687.5
G1 X35.209 Y28.88 E0.02289
G1 X34.61 Y28.312 E0.03815
G1 X33.589 Y28.311 E0.0472
G1 X33.535 Y28.312 E0.00252
G1 X34.505 Y29.309 E0.06432
G1 X35.685 Y30.521 E0.07822
G1 X35.677 Y31.375 E0.0395
G1 X35.688 Y31.597 E0.01025
G1 X35.661 Y31.57 E0.00176
G1 X32.403 Y28.312 E0.21301
G1 X32.369 Y28.33 E0.00177
G1 X32.341 Y28.83 E0.02315
G1 X32.315 Y29.355 E0.02429
G1 X35.685 Y32.784 E0.22229
G1 X35.677 Y33.638 E0.0395
G1 X35.688 Y33.86 E0.01025
G1 X35.661 Y33.833 E0.00176
G1 X32.312 Y30.484 E0.21897
G1 X32.315 Y30.539 E0.00257
G1 X32.331 Y31.05 E0.02364
G1 X32.315 Y31.618 E0.02625
G1 X35.685 Y35.047 E0.22228
G1 X35.677 Y35.901 E0.0395
G1 X35.688 Y36.122 E0.01025
G1 X35.661 Y36.095 E0.00176
G1 X32.312 Y32.746 E0.21897
G1 X32.315 Y32.802 E0.00257
G1 X32.331 Y33.313 E0.02364
G1 X32.315 Y33.88 E0.02624
G1 X35.685 Y37.309 E0.22229
G1 X35.677 Y38.164 E0.03949
G1 X35.688 Y38.385 E0.01026
G1 X35.661 Y38.358 E0.00175
G1 X32.312 Y35.009 E0.21897
G1 X32.315 Y35.065 E0.00258
G1 X32.331 Y35.576 E0.02364
G1 X32.315 Y36.143 E0.02624
; Prepare for Destring
G1 X35.685 Y39.572 E0.22228
G1 X35.677 Y40.426 E0.0395
G1 X35.688 Y40.648 E0.01025
G1 X35.661 Y40.621 E0.00176
G1 X32.312 Y37.272 E0.21897
G1 X32.315 Y37.327 E0.00257
G1 X32.331 Y37.838 E0.02364
G1 X32.315 Y38.406 E0.02625
G1 X35.597 Y41.688 E0.21459
G1 X35.542 Y41.689 E0.00252
G1 X34.521 Y41.688 E0.04721
G1 X33.309 Y40.507 E0.07824
G1 X32.312 Y39.535 E0.06438
G1 X32.315 Y39.59 E0.00257
G1 X32.331 Y40.101 E0.02364
G1 X32.315 Y40.669 E0.02625
G1 X32.88 Y41.234 E0.03698
G1 X33.22 Y41.574 E0.02221
G1 X33.334 Y41.688 E0.00746
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X33.334 Y41.688 Z3.661 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.303 Y40.657 E0
; time estimate: pre = 19.099039, post = 17.311935
; Dwell time remaining = -7.311935
;
; Post-layer lift
G1 X32.303 Y40.657 Z3.734 E0 F300
; END_LAYER_OBJECT z=3.611
; *** Estimate all extruders at 3.0 [s], Slowing 0.227x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=3.684 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 5.1 [head mm/s]
G1 X66.182 Y73.879 Z3.734 E0 F9000
G1 X66.182 Y73.879 Z3.684 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 5.108643, filament speed 0.223437, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F306.5
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.4 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 3.405761, filament speed 0.148958, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F204.3
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.8 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 6.811523, filament speed 0.297916, preload 0.000000
G1 X66.948 Y73.125 E0.00553 F408.7
G1 X66.642 Y73.349 E0.0166
G1 X66.135 Y73.487 E0.023
G1 X65.637 Y73.452 E0.02183
G1 X65.109 Y73.199 E0.02562
G1 X64.754 Y72.818 E0.02275
G1 X64.547 Y72.351 E0.02235
G1 X64.518 Y71.804 E0.02393
G1 X64.682 Y71.299 E0.02326
G1 X65.017 Y70.875 E0.02361
G1 X65.485 Y70.598 E0.02383
G1 X66.055 Y70.504 E0.02526
G1 X66.578 Y70.623 E0.02347
G1 X67.032 Y70.919 E0.02367
G1 X67.35 Y71.36 E0.02381
G1 X67.49 Y71.876 E0.02339
G1 X67.432 Y72.428 E0.02427
G1 X67.172 Y72.919 E0.02427
G1 X67.051 Y73.051 E0.00785
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.414 E0
; Fan set to Cool value 50%
;
; 'Sparse Infill Path', 0.3 [feed mm/s], 6.4 [head mm/s]
G1 X66.142 Y73.273 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 6.385803, filament speed 0.279296, preload 0.000000
; Prepare for Destring
G1 X66.051 Y73.182 E0.00562 F383.1
G1 X65.778 Y72.91 E0.01685
G1 X65.324 Y72.456 E0.02809
G1 X64.689 Y71.82 E0.03933
G1 X64.86 Y71.454 E0.01768
G1 X65.055 Y71.055 E0.01941
G1 X65.924 Y71.924 E0.05373
G1 X66.076 Y72.076 E0.00946
G1 X66.945 Y72.945 E0.05374
G1 X67.14 Y72.546 E0.0194
G1 X67.311 Y72.18 E0.01768
G1 X66.676 Y71.544 E0.03932
G1 X66.222 Y71.09 E0.0281
G1 X65.949 Y70.818 E0.01686
G1 X65.858 Y70.727 E0.00562
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 10.2 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 10.217285, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X65.858 Y70.727 Z3.734 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X65.717 Y70.586 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66 Y72.566 E0
G1 X66.283 Y73.414 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 10.012629, post = 9.889170
; Dwell time remaining = 0.110831
;
; Post-layer lift
G1 X66.283 Y73.98 Z3.939 E0 F300
; END_LAYER_OBJECT z=3.684
; BEGIN_LAYER_OBJECT z=3.889 z_thickness=0.278
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z3.939 E0 F9000
G1 X46.187 Y73.389 Z3.889 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040212, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04793
G1 X47.39 Y71.594 E0.03423
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 14.999999, filament speed 0.693475, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00004
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01543
G1 X46.258 Y73.389 E0.00271
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X46.989 Y72.989 E0
; head speed 29.999998, filament speed 1.386949, preload 0.000000
G1 X46.81 Y72.989 E0.0083 F1800
G1 X46.271 Y72.987 E0.02489
G1 X45.374 Y72.985 E0.04148
G1 X44.118 Y72.981 E0.05807
G1 X44.012 Y72.918 E0.00571
G1 X44.012 Y71.587 E0.06154
G1 X44.012 Y70.012 E0.07283
G1 X45.592 Y70.012 E0.07306
G1 X46.927 Y70.012 E0.06171
G1 X46.989 Y70.18 E0.00828
G1 X46.989 Y71.409 E0.05681
G1 X46.989 Y72.286 E0.04059
G1 X46.989 Y72.813 E0.02436
G1 X46.989 Y72.989 E0.00813
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.525 Y72.788 E0
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X44.526 Y72.789 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125000, filament speed 1.300265, preload 0.000000
; Prepare for Destring
G1 X44.447 Y72.708 E0.00521 F1687.5
G1 X44.211 Y72.466 E0.01562
G1 X44.211 Y72.074 E0.01814
G1 X44.212 Y71.559 E0.02377
G1 X44.211 Y71.343 E0.01002
G1 X44.214 Y71.345 E0.00019
G1 X44.886 Y71.992 E0.0431
G1 X45.712 Y72.788 E0.05307
G1 X46.572 Y72.788 E0.03974
G1 X46.789 Y72.789 E0.01001
G1 X46.789 Y72.789 E0
G1 X45.591 Y71.591 E0.07828
G1 X45.409 Y71.409 E0.01193
G1 X44.211 Y70.211 E0.0783
G1 X44.266 Y70.211 E0.00255
G1 X44.777 Y70.212 E0.02359
G1 X45.343 Y70.212 E0.02618
G1 X46.14 Y71.008 E0.0521
G1 X46.789 Y71.657 E0.04241
G1 X46.788 Y71.602 E0.00255
G1 X46.788 Y71.092 E0.0236
G1 X46.789 Y70.526 E0.02616
G1 X46.553 Y70.29 E0.01542
G1 X46.474 Y70.211 E0.00514
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.474 Y70.211 Z3.939 E0 F300
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y70.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.392 Y69.048 E0
G1 X45.379 Y69.027 E0
G1 X45.374 Y69.002 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z3.889 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040212, preload 0.000000
G1 X44.926 Y62.388 E0.009 F1350
G1 X44.342 Y62.388 E0.02698
G1 X43.37 Y62.388 E0.04498
G1 X42.008 Y62.388 E0.06297
G1 X40.257 Y62.388 E0.08095
G1 X38.116 Y62.388 E0.09895
G1 X32.668 Y62.388 E0.25187
; Prepare for Perimeter
G1 X32.61 Y62.183 E0.00981
G1 X32.61 Y58.61 E0.16521
G1 X40.916 Y58.615 E0.384
G1 X43.031 Y58.616 E0.09775
G1 X44.818 Y58.618 E0.08263
G1 X46.278 Y58.618 E0.06751
G1 X46.388 Y58.674 E0.00568
G1 X46.388 Y59.745 E0.04949
G1 X46.388 Y60.509 E0.03534
G1 X46.388 Y60.968 E0.02121
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426338
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 14.999999, filament speed 0.693475, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.489 Y62.788 E0.05374
G1 X44.031 Y62.788 E0.06739
G1 X42.279 Y62.788 E0.08102
G1 X40.231 Y62.788 E0.09466
G1 X32.318 Y62.788 E0.36582
G1 X32.279 Y62.775 E0.00192
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.217 E0.00159
G1 X32.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.66592
G1 X46.753 Y58.257 E0.00389
G1 X46.779 Y58.282 E0.00163
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08337
G1 X46.783 Y61.609 E0.06888
G1 X46.782 Y62.785 E0.0544
G1 X46.781 Y62.786 E0.00003
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.78 Y62.787 E0.00003
G1 X46.777 Y62.785 E0.00016
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02736
G1 X45.309 Y62.388 E0.01468
G1 X45.25 Y62.388 E0.00274
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 29.999998, filament speed 1.386949, preload 0.000000
G1 X45.822 Y61.988 E0.00737 F1800
G1 X45.344 Y61.988 E0.0221
G1 X44.547 Y61.988 E0.03684
G1 X43.432 Y61.988 E0.05157
G1 X41.998 Y61.988 E0.0663
G1 X40.245 Y61.988 E0.08105
G1 X38.173 Y61.988 E0.09577
; Prepare for Destring
G1 X33.074 Y61.988 E0.23576
G1 X33.011 Y61.821 E0.00825
G1 X33.011 Y59.01 E0.12993
G1 X40.705 Y59.015 E0.35572
G1 X42.71 Y59.017 E0.09267
G1 X44.434 Y59.018 E0.07972
G1 X45.878 Y59.019 E0.06677
G1 X45.988 Y59.076 E0.00572
G1 X45.985 Y60.35 E0.0589
G1 X45.983 Y61.26 E0.04208
G1 X45.982 Y61.806 E0.02524
G1 X45.982 Y61.988 E0.00842
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.982 Y61.988 Z3.939 E0 F300
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.495 Y61.757 E0
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X33.526 Y61.789 E0
G1 X33.526 Y61.789 Z3.889 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125000, filament speed 1.300265, preload 0.000000
G1 X33.447 Y61.696 E0.00561 F1687.5
G1 X33.212 Y61.419 E0.01683
G1 X33.212 Y61.043 E0.01739
G1 X33.212 Y60.559 E0.02235
G1 X33.211 Y60.343 E0.01001
G1 X33.211 Y60.343 E0
G1 X33.863 Y60.991 E0.0425
G1 X34.665 Y61.789 E0.0523
G1 X35.572 Y61.788 E0.0419
G1 X35.789 Y61.789 E0.01003
G1 X35.786 Y61.786 E0.00018
G1 X34.59 Y60.59 E0.0782
G1 X33.211 Y59.211 E0.09012
G1 X33.266 Y59.212 E0.00255
G1 X34.125 Y59.211 E0.0397
G1 X34.342 Y59.21 E0.01001
G1 X36.928 Y61.789 E0.16884
G1 X37.835 Y61.788 E0.0419
G1 X38.051 Y61.789 E0.01002
G1 X38.049 Y61.786 E0.00019
G1 X35.473 Y59.21 E0.16839
G1 X35.528 Y59.211 E0.00255
G1 X36.039 Y59.212 E0.0236
G1 X36.605 Y59.21 E0.02615
G1 X39.191 Y61.789 E0.16884
G1 X40.097 Y61.788 E0.0419
G1 X40.314 Y61.789 E0.01003
G1 X40.311 Y61.786 E0.00018
G1 X37.736 Y59.21 E0.16839
G1 X37.791 Y59.211 E0.00255
G1 X38.302 Y59.212 E0.0236
G1 X38.867 Y59.21 E0.02615
G1 X41.454 Y61.789 E0.16884
G1 X42.36 Y61.788 E0.04191
G1 X42.577 Y61.789 E0.01002
G1 X42.574 Y61.786 E0.00018
; Prepare for Destring
G1 X39.999 Y59.21 E0.16839
G1 X40.054 Y59.211 E0.00255
G1 X40.564 Y59.212 E0.0236
G1 X41.13 Y59.21 E0.02616
G1 X43.716 Y61.789 E0.16883
G1 X44.623 Y61.788 E0.04191
G1 X44.84 Y61.789 E0.01002
G1 X44.837 Y61.786 E0.00018
G1 X42.261 Y59.21 E0.16839
G1 X42.317 Y59.211 E0.00256
G1 X42.827 Y59.212 E0.0236
G1 X43.393 Y59.21 E0.02615
G1 X44.704 Y60.522 E0.08576
G1 X45.788 Y61.605 E0.07082
G1 X45.788 Y61.55 E0.00253
G1 X45.788 Y60.529 E0.04721
G1 X45.235 Y59.952 E0.03693
G1 X44.84 Y59.54 E0.02639
G1 X44.603 Y59.293 E0.01583
G1 X44.524 Y59.21 E0.00529
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X44.524 Y59.21 Z3.939 E0 F300
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X44.525 Y59.212 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.374 Y62.559 E0
G1 X45.374 Y69.111 E0
G1 X45.657 Y69.96 E0
G1 X45.94 Y72.505 E0
G1 X46.223 Y73.354 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z3.889 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.040212, preload 0.000000
G1 X32.112 Y40.46 E0.009 F1350
G1 X32.112 Y39.876 E0.02699
G1 X32.113 Y38.903 E0.045
G1 X32.114 Y37.54 E0.06298
G1 X32.114 Y35.788 E0.08099
G1 X32.116 Y33.647 E0.09898
; Prepare for Perimeter
G1 X32.118 Y28.198 E0.25196
G1 X32.223 Y28.111 E0.00625
G1 X35.799 Y28.112 E0.16534
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y36.474 E0.38124
G1 X35.884 Y38.574 E0.0971
G1 X35.883 Y40.351 E0.08212
G1 X35.882 Y41.803 E0.06713
G1 X35.777 Y41.889 E0.00628
G1 X34.714 Y41.889 E0.04917
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02108
G1 X33.346 Y41.889 E0.00702
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451725
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 14.999999, filament speed 0.693475, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.723 E0.06479
G1 X31.708 Y38.928 E0.08299
G1 X31.709 Y36.739 E0.1012
G1 X31.71 Y27.81 E0.4128
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00188
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00109
G1 X36.293 Y27.839 E0.00108
G1 X36.291 Y42.19 E0.66348
G1 X36.278 Y42.229 E0.00187
G1 X36.246 Y42.253 E0.00188
G1 X36.132 Y42.292 E0.00557
G1 X34.395 Y42.292 E0.08028
G1 X32.952 Y42.292 E0.06672
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00005
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02817
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.01691
G1 X32.112 Y40.659 E0.00424
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 29.999998, filament speed 1.386949, preload 0.000000
G1 X32.513 Y41.378 E0.00658 F1800
G1 X32.513 Y40.913 E0.0215
G1 X32.513 Y40.125 E0.03646
G1 X32.514 Y39.012 E0.05142
G1 X32.514 Y37.577 E0.06638
G1 X32.515 Y35.817 E0.08133
G1 X32.516 Y33.735 E0.09629
; Prepare for Destring
G1 X32.519 Y28.599 E0.23745
G1 X32.619 Y28.512 E0.00613
G1 X35.398 Y28.513 E0.12844
G1 X35.488 Y28.621 E0.00652
G1 X35.484 Y36.283 E0.35422
G1 X35.483 Y38.272 E0.09194
G1 X35.482 Y39.978 E0.07888
G1 X35.482 Y41.402 E0.06582
G1 X35.38 Y41.488 E0.00615
G1 X34.165 Y41.488 E0.05617
G1 X33.298 Y41.488 E0.04012
G1 X32.777 Y41.488 E0.02408
G1 X32.603 Y41.488 E0.00802
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X32.603 Y41.488 Z3.939 E0 F300
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y30.192 E0
G1 X32.869 Y29.343 E0
G1 X32.869 Y28.777 E0
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X32.773 Y28.873 E0
G1 X32.773 Y28.873 Z3.889 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125000, filament speed 1.300265, preload 0.000000
G1 X32.989 Y28.712 E0.01246 F1687.5
G1 X33.424 Y28.712 E0.02012
G1 X34.065 Y28.712 E0.02963
G1 X34.059 Y28.718 E0.00037
G1 X33.46 Y29.342 E0.04001
G1 X32.713 Y30.12 E0.04985
G1 X32.713 Y31.196 E0.04975
G1 X32.726 Y31.182 E0.0009
G1 X33.872 Y30.037 E0.07488
G1 X35.196 Y28.712 E0.08661
G1 X35.232 Y28.726 E0.00175
G1 X35.274 Y29.229 E0.02332
G1 X35.305 Y29.73 E0.0232
G1 X32.713 Y32.383 E0.17148
G1 X32.713 Y33.459 E0.04975
G1 X32.726 Y33.445 E0.0009
G1 X35.287 Y30.884 E0.16742
G1 X35.287 Y30.94 E0.00255
G1 X35.274 Y32.029 E0.0504
G1 X32.713 Y34.645 E0.16924
G1 X32.713 Y35.722 E0.04975
G1 X32.726 Y35.708 E0.00089
G1 X35.287 Y33.147 E0.16743
G1 X35.287 Y33.202 E0.00255
G1 X35.274 Y34.292 E0.05039
G1 X32.713 Y36.908 E0.16924
G1 X32.713 Y37.984 E0.04976
G1 X32.726 Y37.971 E0.00089
; Prepare for Destring
G1 X35.287 Y35.41 E0.16743
G1 X35.287 Y35.465 E0.00255
G1 X35.274 Y36.555 E0.05039
G1 X32.713 Y39.171 E0.16924
G1 X32.713 Y40.247 E0.04975
G1 X32.726 Y40.233 E0.0009
G1 X35.287 Y37.673 E0.16742
G1 X35.287 Y37.728 E0.00255
G1 X35.274 Y38.818 E0.05039
G1 X33.95 Y40.141 E0.08654
G1 X32.804 Y41.288 E0.07495
G1 X32.859 Y41.288 E0.00256
G1 X33.941 Y41.282 E0.05001
G1 X34.684 Y40.538 E0.04862
G1 X35.287 Y39.935 E0.03942
G1 X35.287 Y39.993 E0.00269
G1 X35.282 Y40.597 E0.0279
G1 X35.278 Y41.026 E0.01984
G1 X35.066 Y41.288 E0.01557
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X35.066 Y41.288 Z3.939 E0 F300
; Blending Fan to Cool (64.4% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.131 Y41.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y40.94 E0
G1 X32.303 Y40.657 E0
G1 X32.303 Y40.657 E0
; time estimate: pre = 20.694384, post = 18.624580
; Dwell time remaining = -8.624580
;
; Post-layer lift
G1 X32.303 Y40.657 Z3.997 E0 F300
; END_LAYER_OBJECT z=3.889
; *** Estimate all extruders at 2.7 [s], Slowing 0.219x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=3.947 z_thickness=0.263
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 4.9 [head mm/s]
G1 X66.182 Y73.879 Z3.997 E0 F9000
G1 X66.182 Y73.879 Z3.947 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 4.932861, filament speed 0.215749, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F296
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.3 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 3.288574, filament speed 0.143833, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F197.3
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X65.235 Y72.328 E0
G1 X64.586 Y71.151 E0
; Fan set to Cool value 50%
;
; 'Sparse Infill Path', 0.3 [feed mm/s], 6.2 [head mm/s]
G1 X64.508 Y71.229 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 6.166077, filament speed 0.269686, preload 0.000000
; Prepare for Destring
G1 X64.6 Y71.141 E0.00561 F370
G1 X64.878 Y70.874 E0.01685
G1 X65.34 Y70.429 E0.02807
G1 X66.003 Y70.343 E0.02922
G1 X66.464 Y70.357 E0.02018
G1 X66.483 Y70.385 E0.00151
G1 X65.527 Y71.341 E0.05912
G1 X64.353 Y72.515 E0.07262
G1 X64.791 Y73.203 E0.03565
G1 X64.832 Y73.168 E0.00235
G1 X67.206 Y70.794 E0.14681
G1 X67.643 Y71.477 E0.03547
G1 X67.612 Y71.519 E0.00228
G1 X66.459 Y72.673 E0.07137
G1 X65.517 Y73.614 E0.05822
G1 X65.535 Y73.646 E0.00158
G1 X66.005 Y73.655 E0.02056
G1 X66.66 Y73.571 E0.02888
G1 X67.122 Y73.127 E0.02804
G1 X67.399 Y72.86 E0.01682
G1 X67.491 Y72.771 E0.0056
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 9.9 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 9.865723, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X67.491 Y72.771 Z3.997 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.414 Y72.849 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 10.012060, post = 9.933956
; Dwell time remaining = 0.066044
;
; Post-layer lift
G1 X66.283 Y73.98 Z4.217 E0 F300
; END_LAYER_OBJECT z=3.947
; BEGIN_LAYER_OBJECT z=4.167 z_thickness=0.278
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z4.217 E0 F9000
G1 X46.187 Y73.389 Z4.167 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00003
G1 X47.786 Y73.788 E0.00018
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.091 Y72.223 E0
G1 X44.808 Y71.374 E0
G1 X43.96 Y69.96 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X43.884 Y70.036 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125002, filament speed 1.300263, preload 0.000000
; Prepare for Destring
G1 X44.047 Y69.88 E0.01041 F1687.5
G1 X44.614 Y69.894 E0.02622
G1 X45.167 Y69.884 E0.02559
G1 X45.16 Y69.891 E0.00048
G1 X44.587 Y70.467 E0.03756
G1 X43.88 Y71.178 E0.04634
G1 X43.894 Y71.745 E0.02622
G1 X43.884 Y72.298 E0.02559
G1 X43.891 Y72.291 E0.00048
G1 X45.012 Y71.172 E0.07323
G1 X46.308 Y69.877 E0.08469
G1 X46.774 Y69.965 E0.02195
G1 X47.22 Y70.063 E0.02111
G1 X47.134 Y70.179 E0.0067
G1 X44.179 Y73.134 E0.19321
G1 X44.231 Y73.132 E0.00241
G1 X44.736 Y73.121 E0.02332
G1 X45.303 Y73.135 E0.02624
G1 X46.309 Y72.133 E0.06564
G1 X47.134 Y71.311 E0.05386
G1 X47.132 Y71.363 E0.00241
G1 X47.121 Y71.867 E0.02331
G1 X47.135 Y72.434 E0.02625
G1 X46.75 Y72.823 E0.02527
G1 X46.519 Y73.056 E0.01518
G1 X46.442 Y73.134 E0.00507
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.442 Y73.134 Z4.217 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.374 Y69.484 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z4.167 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
G1 X44.926 Y62.388 E0.009 F1350
G1 X44.342 Y62.388 E0.02698
G1 X43.37 Y62.388 E0.04498
G1 X42.008 Y62.388 E0.06296
G1 X40.257 Y62.388 E0.08096
G1 X38.116 Y62.388 E0.09895
G1 X32.668 Y62.388 E0.25187
; Prepare for Perimeter
G1 X32.61 Y62.183 E0.00981
G1 X32.61 Y58.61 E0.16521
G1 X40.916 Y58.615 E0.384
G1 X43.031 Y58.616 E0.09775
G1 X44.818 Y58.618 E0.08263
G1 X46.278 Y58.618 E0.0675
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04948
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.02121
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426338
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.489 Y62.788 E0.05374
G1 X44.031 Y62.788 E0.06739
G1 X42.279 Y62.788 E0.08102
G1 X40.231 Y62.788 E0.09466
G1 X32.318 Y62.788 E0.36582
G1 X32.279 Y62.775 E0.00192
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00702
G1 X32.209 Y58.275 E0.19977
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.217 E0.00159
G1 X32.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.66592
G1 X46.753 Y58.257 E0.00388
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08337
G1 X46.783 Y61.609 E0.06888
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00004
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.777 Y62.785 E0.00015
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01468
G1 X45.25 Y62.388 E0.00273
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.25 Y62.388 Z4.217 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.674 Y59.5 E0
G1 X34.343 Y59.212 E0
G1 X33.495 Y58.929 E0
G1 X33.495 Y58.929 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X33.558 Y58.865 E0
G1 X33.558 Y58.865 Z4.167 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125002, filament speed 1.300263, preload 0.000000
G1 X33.481 Y58.943 E0.00506 F1687.5
G1 X33.25 Y59.177 E0.01518
G1 X32.865 Y59.566 E0.0253
G1 X32.876 Y60.463 E0.04151
G1 X32.866 Y60.689 E0.01046
G1 X32.872 Y60.683 E0.00041
G1 X33.695 Y59.863 E0.0537
G1 X34.697 Y58.865 E0.06541
G1 X35.595 Y58.876 E0.0415
G1 X35.821 Y58.865 E0.01046
G1 X35.815 Y58.872 E0.00041
G1 X32.866 Y61.821 E0.19281
G1 X32.779 Y61.937 E0.00671
G1 X33.226 Y62.035 E0.02112
G1 X33.692 Y62.123 E0.02195
G1 X36.96 Y58.865 E0.21332
G1 X37.858 Y58.876 E0.0415
G1 X38.084 Y58.865 E0.01046
G1 X38.077 Y58.872 E0.00041
G1 X34.833 Y62.116 E0.21212
G1 X34.885 Y62.114 E0.00239
G1 X35.39 Y62.106 E0.02337
G1 X35.954 Y62.12 E0.02605
G1 X39.223 Y58.865 E0.21327
G1 X40.12 Y58.876 E0.0415
G1 X40.346 Y58.865 E0.01046
G1 X40.34 Y58.872 E0.00041
G1 X37.096 Y62.116 E0.21212
G1 X37.147 Y62.114 E0.00239
G1 X37.653 Y62.106 E0.02336
G1 X38.216 Y62.12 E0.02606
G1 X41.485 Y58.865 E0.21327
G1 X42.383 Y58.876 E0.0415
G1 X42.609 Y58.865 E0.01046
G1 X42.603 Y58.872 E0.00041
G1 X39.359 Y62.116 E0.21212
G1 X39.41 Y62.114 E0.00238
G1 X39.916 Y62.106 E0.02337
G1 X40.479 Y62.12 E0.02606
; Prepare for Destring
G1 X43.748 Y58.865 E0.21327
G1 X44.646 Y58.876 E0.0415
G1 X44.872 Y58.865 E0.01046
G1 X44.866 Y58.872 E0.00041
G1 X41.621 Y62.116 E0.21211
G1 X41.673 Y62.114 E0.00239
G1 X42.178 Y62.106 E0.02337
G1 X42.742 Y62.12 E0.02605
G1 X46.003 Y58.865 E0.21301
G1 X46.119 Y58.806 E0.00601
G1 X46.164 Y59.319 E0.02382
G1 X46.189 Y59.806 E0.02252
G1 X44.926 Y61.071 E0.08264
G1 X43.884 Y62.116 E0.06822
G1 X43.936 Y62.114 E0.00239
G1 X44.441 Y62.106 E0.02336
G1 X45.005 Y62.12 E0.02606
G1 X45.661 Y61.467 E0.04279
G1 X46.055 Y61.075 E0.02569
G1 X46.187 Y60.944 E0.00861
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.187 Y60.944 Z4.217 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y60.909 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y63.644 E0
G1 X45.94 Y72.505 E0
G1 X46.223 Y73.354 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z4.167 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
G1 X32.112 Y40.46 E0.009 F1350
G1 X32.112 Y39.876 E0.02699
G1 X32.113 Y38.903 E0.045
G1 X32.114 Y37.54 E0.06298
G1 X32.114 Y35.788 E0.08099
G1 X32.116 Y33.647 E0.09898
; Prepare for Perimeter
G1 X32.118 Y28.198 E0.25196
G1 X32.223 Y28.111 E0.00625
G1 X35.799 Y28.112 E0.16534
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y36.474 E0.38123
G1 X35.884 Y38.574 E0.09711
G1 X35.883 Y40.351 E0.08212
G1 X35.882 Y41.803 E0.06713
G1 X35.777 Y41.889 E0.00628
G1 X34.714 Y41.889 E0.04917
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451725
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.723 E0.06479
G1 X31.708 Y38.928 E0.08299
G1 X31.709 Y36.739 E0.1012
G1 X31.71 Y27.81 E0.4128
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00188
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00109
G1 X36.291 Y42.19 E0.66347
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00188
G1 X36.132 Y42.292 E0.00557
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00005
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.00019
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X32.112 Y40.659 Z4.217 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X35.405 Y31.099 E0
G1 X35.697 Y29.343 E0
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 47%
; fan %*255
M106 S120
;
; 'Sparse Infill Path', 1.3 [feed mm/s], 28.1 [head mm/s]
G1 X35.688 Y29.334 E0
G1 X35.688 Y29.334 Z4.167 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 28.125002, filament speed 1.300263, preload 0.000000
G1 X35.568 Y29.221 E0.00763 F1687.5
G1 X35.209 Y28.88 E0.02289
G1 X34.61 Y28.312 E0.03815
G1 X33.589 Y28.311 E0.0472
G1 X33.535 Y28.312 E0.00252
G1 X34.505 Y29.309 E0.06432
G1 X35.685 Y30.521 E0.07822
G1 X35.677 Y31.375 E0.0395
G1 X35.688 Y31.597 E0.01025
G1 X35.661 Y31.57 E0.00176
G1 X32.403 Y28.312 E0.21301
G1 X32.369 Y28.33 E0.00177
G1 X32.341 Y28.83 E0.02315
G1 X32.315 Y29.355 E0.02429
G1 X35.685 Y32.784 E0.22229
G1 X35.677 Y33.638 E0.0395
G1 X35.688 Y33.86 E0.01025
G1 X35.661 Y33.833 E0.00176
G1 X32.312 Y30.484 E0.21897
G1 X32.315 Y30.539 E0.00257
G1 X32.331 Y31.05 E0.02364
G1 X32.315 Y31.618 E0.02625
G1 X35.685 Y35.047 E0.22228
G1 X35.677 Y35.901 E0.0395
G1 X35.688 Y36.122 E0.01025
G1 X35.661 Y36.095 E0.00176
G1 X32.312 Y32.746 E0.21897
G1 X32.315 Y32.802 E0.00257
G1 X32.331 Y33.313 E0.02364
G1 X32.315 Y33.88 E0.02624
G1 X35.685 Y37.309 E0.22229
G1 X35.677 Y38.164 E0.03949
G1 X35.688 Y38.385 E0.01026
G1 X35.661 Y38.358 E0.00175
G1 X32.312 Y35.009 E0.21897
G1 X32.315 Y35.065 E0.00258
G1 X32.331 Y35.576 E0.02364
G1 X32.315 Y36.143 E0.02624
; Prepare for Destring
G1 X35.685 Y39.572 E0.22228
G1 X35.677 Y40.426 E0.0395
G1 X35.688 Y40.648 E0.01025
G1 X35.661 Y40.621 E0.00176
G1 X32.312 Y37.272 E0.21897
G1 X32.315 Y37.327 E0.00257
G1 X32.331 Y37.838 E0.02364
G1 X32.315 Y38.406 E0.02625
G1 X35.597 Y41.688 E0.21459
G1 X35.542 Y41.689 E0.00252
G1 X34.521 Y41.688 E0.04721
G1 X33.309 Y40.507 E0.07824
G1 X32.312 Y39.535 E0.06438
G1 X32.315 Y39.59 E0.00257
G1 X32.331 Y40.101 E0.02364
G1 X32.315 Y40.669 E0.02625
G1 X32.88 Y41.234 E0.03698
G1 X33.22 Y41.574 E0.02221
G1 X33.334 Y41.688 E0.00746
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X33.334 Y41.688 Z4.217 E0 F300
; Blending Fan to Cool (69.7% blend)
; Blended Fan at 50%
; fan %*255
M106 S128
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.303 Y40.657 E0
; time estimate: pre = 19.099039, post = 17.311935
; Dwell time remaining = -7.311935
;
; Post-layer lift
G1 X32.303 Y40.657 Z4.261 E0 F300
; END_LAYER_OBJECT z=4.167
; *** Estimate all extruders at 3.0 [s], Slowing 0.227x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=4.211 z_thickness=0.264
; Fan set to Cool value 50%
;
; 'Loop Path', 0.2 [feed mm/s], 5.1 [head mm/s]
G1 X66.182 Y73.879 Z4.261 E0 F9000
G1 X66.182 Y73.879 Z4.211 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 5.108643, filament speed 0.224287, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00703 F306.5
G1 X65.542 Y73.84 E0.0211
G1 X64.945 Y73.579 E0.02863
G1 X64.456 Y73.099 E0.0301
G1 X64.208 Y72.602 E0.02436
G1 X64.11 Y72.052 E0.02453
G1 X64.182 Y71.471 E0.02573
G1 X64.424 Y70.942 E0.02555
G1 X64.906 Y70.45 E0.03022
G1 X65.471 Y70.181 E0.02744
G1 X66.053 Y70.11 E0.02578
G1 X66.602 Y70.208 E0.02445
G1 X67.096 Y70.452 E0.0242
G1 X67.582 Y70.947 E0.03048
G1 X67.855 Y71.605 E0.03124
G1 X67.872 Y72.037 E0.01901
G1 X67.878 Y72.181 E0.00633
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.4 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 3.405762, filament speed 0.149524, preload 0.000000
G1 X67.866 Y72.273 E0.00332 F204.3
G1 X67.795 Y72.5 E0.01044
G1 X67.676 Y72.881 E0.01756
G1 X67.444 Y73.22 E0.01801
G1 X67.433 Y73.254 E0.00159
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01434
G1 X67.605 Y73.606 E0.00138
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00138
G1 X67.112 Y74.012 E0.0256
G1 X66.504 Y74.238 E0.02849
G1 X65.869 Y74.292 E0.02796
G1 X65.134 Y74.133 E0.03301
G1 X64.557 Y73.781 E0.02969
G1 X64.101 Y73.287 E0.02952
G1 X63.818 Y72.722 E0.02775
G1 X63.702 Y72 E0.0321
G1 X63.818 Y71.278 E0.0321
G1 X64.102 Y70.71 E0.0279
G1 X64.605 Y70.178 E0.03213
G1 X65.202 Y69.842 E0.03007
G1 X65.875 Y69.708 E0.03013
G1 X66.579 Y69.779 E0.03107
G1 X67.17 Y70.022 E0.02807
G1 X67.69 Y70.453 E0.02964
G1 X68.08 Y71.013 E0.02996
G1 X68.269 Y71.674 E0.03017
G1 X68.279 Y72.252 E0.02535
G1 X68.106 Y72.931 E0.03078
G1 X67.742 Y73.482 E0.02897
G1 X67.624 Y73.606 E0.00754
G1 X67.585 Y73.626 E0.00192
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01488
G1 X67.213 Y73.439 E0.00161
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02288
G1 X66.453 Y73.817 E0.01324
G1 X66.272 Y73.866 E0.00826
G1 X66.197 Y73.877 E0.00333
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.8 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 6.811523, filament speed 0.299049, preload 0.000000
G1 X66.948 Y73.125 E0.00555 F408.7
G1 X66.642 Y73.349 E0.01667
G1 X66.135 Y73.487 E0.02308
G1 X65.637 Y73.452 E0.02192
G1 X65.109 Y73.199 E0.02571
G1 X64.754 Y72.818 E0.02284
G1 X64.547 Y72.351 E0.02243
G1 X64.518 Y71.804 E0.02402
G1 X64.682 Y71.299 E0.02335
G1 X65.017 Y70.875 E0.02371
G1 X65.485 Y70.598 E0.02391
G1 X66.055 Y70.504 E0.02536
G1 X66.578 Y70.623 E0.02356
G1 X67.032 Y70.919 E0.02376
G1 X67.35 Y71.36 E0.0239
G1 X67.49 Y71.876 E0.02347
G1 X67.432 Y72.428 E0.02437
G1 X67.172 Y72.919 E0.02437
G1 X67.051 Y73.051 E0.00787
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.414 E0
; Fan set to Cool value 50%
;
; 'Sparse Infill Path', 0.3 [feed mm/s], 6.4 [head mm/s]
G1 X66.142 Y73.273 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 6.385803, filament speed 0.280358, preload 0.000000
; Prepare for Destring
G1 X66.051 Y73.182 E0.00564 F383.1
G1 X65.778 Y72.91 E0.01692
G1 X65.324 Y72.456 E0.0282
G1 X64.689 Y71.82 E0.03947
G1 X64.86 Y71.454 E0.01775
G1 X65.055 Y71.055 E0.01948
G1 X65.924 Y71.924 E0.05394
G1 X66.076 Y72.076 E0.00949
G1 X66.945 Y72.945 E0.05394
G1 X67.14 Y72.546 E0.01948
G1 X67.311 Y72.18 E0.01774
G1 X66.676 Y71.544 E0.03948
G1 X66.222 Y71.09 E0.0282
G1 X65.949 Y70.818 E0.01693
G1 X65.858 Y70.727 E0.00564
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 10.2 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 10.217285, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X65.858 Y70.727 Z4.261 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X65.717 Y70.586 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66 Y72.566 E0
G1 X66.283 Y73.414 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 10.012629, post = 9.889169
; Dwell time remaining = 0.110832
;
; Post-layer lift
G1 X66.283 Y73.98 Z4.494 E0 F300
; END_LAYER_OBJECT z=4.211
; BEGIN_LAYER_OBJECT z=4.444 z_thickness=0.277
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z4.494 E0 F9000
G1 X46.187 Y73.389 Z4.444 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.036471, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00711 F1350
G1 X45.57 Y73.387 E0.02132
G1 X44.798 Y73.385 E0.03554
G1 X43.718 Y73.381 E0.04976
G1 X43.612 Y73.319 E0.00566
G1 X43.612 Y72.264 E0.04864
G1 X43.612 Y71.028 E0.05693
G1 X43.612 Y69.612 E0.06523
G1 X45.033 Y69.612 E0.06548
G1 X46.273 Y69.612 E0.05713
G1 X47.332 Y69.612 E0.04877
G1 X47.39 Y69.817 E0.0098
G1 X47.39 Y70.853 E0.04775
G1 X47.39 Y71.594 E0.03411
G1 X47.39 Y72.038 E0.02048
G1 X47.39 Y72.187 E0.00683
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 14.999999, filament speed 0.690980, preload 0.000000
G1 X47.39 Y72.317 E0.00269 F900
G1 X47.395 Y72.652 E0.01545
G1 X47.404 Y73.285 E0.02916
G1 X47.79 Y73.79 E0.02928
G1 X47.79 Y73.79 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05424
G1 X45.12 Y73.786 E0.06864
G1 X43.317 Y73.783 E0.08305
G1 X43.243 Y73.736 E0.00402
G1 X43.22 Y73.712 E0.00153
G1 X43.212 Y73.68 E0.00153
G1 X43.212 Y69.278 E0.20276
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.00159
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20285
G1 X47.722 Y69.225 E0.00191
G1 X47.746 Y69.259 E0.00191
G1 X47.791 Y69.404 E0.00702
G1 X47.791 Y71.169 E0.08132
G1 X47.791 Y72.631 E0.06733
G1 X47.791 Y73.788 E0.05332
G1 X47.791 Y73.789 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00003
G1 X47.789 Y73.79 E0.00004
G1 X47.786 Y73.788 E0.00017
G1 X47.279 Y73.403 E0.02931
G1 X46.65 Y73.394 E0.02896
G1 X46.317 Y73.389 E0.01537
G1 X46.258 Y73.389 E0.00271
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X46.989 Y72.989 E0
; head speed 29.999998, filament speed 1.381961, preload 0.000000
G1 X46.81 Y72.989 E0.00827 F1800
G1 X46.271 Y72.987 E0.0248
G1 X45.374 Y72.985 E0.04133
G1 X44.118 Y72.981 E0.05787
G1 X44.012 Y72.918 E0.00569
G1 X44.012 Y71.587 E0.06131
G1 X44.012 Y70.012 E0.07256
G1 X45.592 Y70.012 E0.07281
G1 X46.927 Y70.012 E0.06148
G1 X46.989 Y70.18 E0.00825
G1 X46.989 Y71.409 E0.05661
G1 X46.989 Y72.286 E0.04044
G1 X46.989 Y72.813 E0.02427
G1 X46.989 Y72.989 E0.0081
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.091 Y72.788 E0
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X44.963 Y72.66 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.727451, preload 0.000000
; Prepare for Destring
G1 X44.901 Y72.596 E0.00412 F2250
G1 X44.714 Y72.403 E0.01235
G1 X44.403 Y72.082 E0.02059
G1 X44.392 Y71.524 E0.02574
G1 X44.406 Y71.538 E0.00091
G1 X44.9 Y72.023 E0.03188
G1 X45.492 Y72.607 E0.03833
G1 X46.041 Y72.607 E0.02529
G1 X46.03 Y72.595 E0.00078
G1 X45.263 Y71.821 E0.05018
G1 X44.392 Y70.941 E0.05702
G1 X44.392 Y70.392 E0.02529
G1 X44.406 Y70.406 E0.00088
G1 X46.607 Y72.607 E0.14341
G1 X46.607 Y72.591 E0.00076
G1 X46.606 Y72.04 E0.02537
G1 X45.729 Y71.164 E0.05709
G1 X44.958 Y70.392 E0.05024
G1 X44.975 Y70.392 E0.00076
G1 X45.537 Y70.406 E0.02592
G1 X46.121 Y70.99 E0.03804
G1 X46.607 Y71.476 E0.03167
G1 X46.606 Y71.456 E0.00092
G1 X46.563 Y70.866 E0.02724
G1 X46.152 Y70.455 E0.02678
G1 X46.015 Y70.318 E0.00893
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.015 Y70.318 Z4.494 E0 F300
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y70.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.474 Y69.282 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.355 Y62.87 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z4.444 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.036471, preload 0.000000
G1 X44.926 Y62.388 E0.00896 F1350
G1 X44.342 Y62.388 E0.02689
G1 X43.37 Y62.388 E0.04482
G1 X42.008 Y62.388 E0.06274
G1 X40.257 Y62.388 E0.08066
G1 X38.116 Y62.388 E0.0986
G1 X32.668 Y62.388 E0.25096
; Prepare for Perimeter
G1 X32.61 Y62.183 E0.00978
G1 X32.61 Y58.61 E0.16461
G1 X40.916 Y58.615 E0.38262
G1 X43.031 Y58.616 E0.0974
G1 X44.818 Y58.618 E0.08233
G1 X46.278 Y58.618 E0.06726
G1 X46.388 Y58.674 E0.00567
G1 X46.388 Y59.745 E0.04931
G1 X46.388 Y60.509 E0.03522
G1 X46.388 Y60.968 E0.02113
G1 X46.388 Y61.121 E0.00704
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426338
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 14.999999, filament speed 0.690980, preload 0.000000
G1 X46.388 Y61.309 E0.00215 F900
G1 X46.392 Y61.635 E0.015
G1 X46.4 Y62.271 E0.02929
G1 X46.737 Y62.707 E0.02536
G1 X46.761 Y62.751 E0.00233
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.00069
G1 X46.742 Y62.784 E0.0007
G1 X46.651 Y62.788 E0.0042
G1 X45.489 Y62.788 E0.05355
G1 X44.031 Y62.788 E0.06714
G1 X42.279 Y62.788 E0.08073
G1 X40.231 Y62.788 E0.09432
G1 X32.318 Y62.788 E0.36451
G1 X32.279 Y62.775 E0.00191
G1 X32.255 Y62.741 E0.00191
G1 X32.209 Y62.596 E0.007
G1 X32.209 Y58.275 E0.19905
G1 X32.218 Y58.242 E0.00159
G1 X32.242 Y58.217 E0.00159
G1 X32.275 Y58.209 E0.00159
G1 X46.679 Y58.217 E0.66353
G1 X46.753 Y58.257 E0.00387
G1 X46.779 Y58.282 E0.00163
G1 X46.788 Y58.316 E0.00163
G1 X46.786 Y60.119 E0.08307
G1 X46.783 Y61.609 E0.06863
G1 X46.782 Y62.785 E0.0542
G1 X46.781 Y62.786 E0.00004
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.777 Y62.785 E0.00015
G1 X46.219 Y62.388 E0.03155
G1 X45.627 Y62.388 E0.02727
G1 X45.309 Y62.388 E0.01462
G1 X45.25 Y62.388 E0.00273
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 29.999998, filament speed 1.381961, preload 0.000000
G1 X45.822 Y61.988 E0.00734 F1800
G1 X45.344 Y61.988 E0.02202
G1 X44.547 Y61.988 E0.03671
G1 X43.432 Y61.988 E0.05138
G1 X41.998 Y61.988 E0.06607
G1 X40.245 Y61.988 E0.08075
G1 X38.173 Y61.988 E0.09543
; Prepare for Destring
G1 X33.074 Y61.988 E0.23491
G1 X33.011 Y61.821 E0.00823
G1 X33.011 Y59.01 E0.12945
G1 X40.705 Y59.015 E0.35445
G1 X42.71 Y59.017 E0.09234
G1 X44.434 Y59.018 E0.07943
G1 X45.878 Y59.019 E0.06653
G1 X45.988 Y59.076 E0.0057
G1 X45.985 Y60.35 E0.05869
G1 X45.983 Y61.26 E0.04192
G1 X45.982 Y61.806 E0.02515
G1 X45.982 Y61.988 E0.00839
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.982 Y61.988 Z4.494 E0 F300
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.323 Y61.757 E0
G1 X35.475 Y61.475 E0
G1 X33.495 Y61.192 E0
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X33.373 Y61.151 E0
G1 X33.373 Y61.151 Z4.444 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.727451, preload 0.000000
G1 X33.477 Y61.25 E0.00665 F2250
G1 X33.791 Y61.548 E0.01993
G1 X34.395 Y61.608 E0.02798
G1 X34.381 Y61.593 E0.00092
G1 X33.934 Y61.139 E0.02937
G1 X33.393 Y60.588 E0.03557
G1 X33.393 Y60.039 E0.02529
G1 X33.403 Y60.049 E0.00065
G1 X34.138 Y60.777 E0.04768
G1 X34.978 Y61.608 E0.05438
G1 X35.527 Y61.608 E0.0253
G1 X35.515 Y61.596 E0.00074
G1 X33.393 Y59.474 E0.13828
G1 X33.404 Y59.472 E0.00053
G1 X33.877 Y59.392 E0.02208
G1 X36.109 Y61.608 E0.14489
G1 X36.658 Y61.608 E0.02529
G1 X36.647 Y61.596 E0.00075
G1 X34.442 Y59.392 E0.1436
G1 X34.459 Y59.392 E0.00077
G1 X35.008 Y59.392 E0.0253
G1 X37.24 Y61.608 E0.14488
G1 X37.789 Y61.608 E0.02529
G1 X37.778 Y61.596 E0.00075
G1 X35.574 Y59.392 E0.1436
G1 X35.59 Y59.392 E0.00076
G1 X36.14 Y59.392 E0.02531
G1 X38.372 Y61.608 E0.14487
G1 X38.921 Y61.608 E0.0253
G1 X38.909 Y61.596 E0.00074
G1 X36.705 Y59.392 E0.14361
G1 X36.722 Y59.392 E0.00076
G1 X37.271 Y59.392 E0.02531
G1 X39.503 Y61.608 E0.14487
G1 X40.052 Y61.608 E0.0253
G1 X40.041 Y61.596 E0.00074
G1 X37.836 Y59.392 E0.14361
G1 X37.853 Y59.392 E0.00076
G1 X38.402 Y59.392 E0.02531
G1 X40.634 Y61.608 E0.14487
G1 X41.184 Y61.608 E0.02529
G1 X41.172 Y61.596 E0.00075
G1 X38.968 Y59.392 E0.1436
G1 X38.984 Y59.392 E0.00077
G1 X39.534 Y59.392 E0.0253
G1 X41.766 Y61.608 E0.14488
G1 X42.315 Y61.608 E0.02529
G1 X42.304 Y61.596 E0.00075
G1 X40.099 Y59.392 E0.1436
G1 X40.116 Y59.392 E0.00076
G1 X40.665 Y59.392 E0.02531
G1 X42.897 Y61.608 E0.14487
G1 X43.446 Y61.608 E0.0253
G1 X43.435 Y61.596 E0.00074
G1 X41.231 Y59.392 E0.14361
G1 X41.247 Y59.392 E0.00076
; Prepare for Destring
G1 X41.797 Y59.392 E0.02531
G1 X44.029 Y61.608 E0.14487
G1 X44.578 Y61.608 E0.0253
G1 X44.566 Y61.596 E0.00074
G1 X42.362 Y59.392 E0.1436
G1 X42.379 Y59.392 E0.00077
G1 X42.928 Y59.392 E0.02531
G1 X45.144 Y61.607 E0.14433
G1 X45.552 Y61.451 E0.02017
G1 X43.493 Y59.392 E0.13414
G1 X43.51 Y59.392 E0.00077
G1 X44.059 Y59.392 E0.0253
G1 X44.884 Y60.217 E0.05373
G1 X45.607 Y60.94 E0.04712
G1 X45.607 Y60.924 E0.00077
G1 X45.598 Y60.365 E0.02574
G1 X45.066 Y59.833 E0.03467
G1 X44.625 Y59.392 E0.02872
G1 X44.641 Y59.392 E0.00076
G1 X45.191 Y59.392 E0.02531
G1 X45.532 Y59.734 E0.02227
G1 X45.646 Y59.848 E0.00742
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.646 Y59.848 Z4.494 E0 F300
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y59.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y62.543 E0
G1 X45.94 Y71.94 E0
G1 X46.223 Y72.788 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z4.444 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500000, filament speed 1.036471, preload 0.000000
G1 X32.112 Y40.46 E0.00897 F1350
G1 X32.112 Y39.876 E0.02689
G1 X32.113 Y38.903 E0.04483
G1 X32.114 Y37.54 E0.06277
G1 X32.114 Y35.788 E0.08069
G1 X32.116 Y33.647 E0.09863
; Prepare for Perimeter
G1 X32.118 Y28.198 E0.25105
G1 X32.223 Y28.111 E0.00623
G1 X35.799 Y28.112 E0.16474
G1 X35.889 Y28.228 E0.00673
G1 X35.885 Y36.474 E0.37987
G1 X35.884 Y38.574 E0.09676
G1 X35.883 Y40.351 E0.08182
G1 X35.882 Y41.803 E0.06689
G1 X35.777 Y41.889 E0.00625
G1 X34.714 Y41.889 E0.049
G1 X33.954 Y41.889 E0.035
G1 X33.498 Y41.889 E0.02099
G1 X33.346 Y41.889 E0.007
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451725
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 14.999999, filament speed 0.690980, preload 0.000000
G1 X33.246 Y41.889 E0.00406 F900
G1 X32.909 Y41.892 E0.01552
G1 X32.32 Y41.899 E0.02711
G1 X31.902 Y42.187 E0.0234
G1 X31.829 Y42.259 E0.00473
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00144
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00575
G1 X31.708 Y40.723 E0.06456
G1 X31.708 Y38.928 E0.0827
G1 X31.709 Y36.739 E0.10083
G1 X31.71 Y27.81 E0.41131
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00187
G1 X31.868 Y27.708 E0.00553
G1 X36.171 Y27.708 E0.19823
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00386
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00108
G1 X36.291 Y42.19 E0.66109
G1 X36.278 Y42.229 E0.00187
G1 X36.246 Y42.253 E0.00187
G1 X36.132 Y42.292 E0.00555
G1 X34.395 Y42.292 E0.07999
G1 X32.952 Y42.292 E0.06649
G1 X31.802 Y42.292 E0.05298
G1 X31.801 Y42.292 E0.00005
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00004
G1 X31.803 Y42.286 E0.0002
G1 X32.112 Y41.761 E0.02807
G1 X32.112 Y41.117 E0.02968
G1 X32.112 Y40.751 E0.01685
G1 X32.112 Y40.659 E0.00423
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.4 [feed mm/s], 30.0 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 29.999998, filament speed 1.381961, preload 0.000000
G1 X32.513 Y41.378 E0.00655 F1800
G1 X32.513 Y40.913 E0.02143
G1 X32.513 Y40.125 E0.03633
G1 X32.514 Y39.012 E0.05123
G1 X32.514 Y37.577 E0.06614
G1 X32.515 Y35.817 E0.08104
G1 X32.516 Y33.735 E0.09594
; Prepare for Destring
G1 X32.519 Y28.599 E0.2366
G1 X32.619 Y28.512 E0.00611
G1 X35.398 Y28.513 E0.12798
G1 X35.488 Y28.621 E0.00649
G1 X35.484 Y36.283 E0.35295
G1 X35.483 Y38.272 E0.09161
G1 X35.482 Y39.978 E0.0786
G1 X35.482 Y41.402 E0.06558
G1 X35.38 Y41.488 E0.00613
G1 X34.165 Y41.488 E0.05596
G1 X33.298 Y41.488 E0.03998
G1 X32.777 Y41.488 E0.02399
G1 X32.603 Y41.488 E0.008
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X32.603 Y41.488 Z4.494 E0 F300
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y30.757 E0
G1 X32.869 Y29.909 E0
G1 X32.869 Y29.343 E0
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X32.84 Y29.372 E0
G1 X32.84 Y29.372 Z4.444 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.727451, preload 0.000000
G1 X32.964 Y29.252 E0.00794 F2250
G1 X33.336 Y28.893 E0.02381
G1 X33.885 Y28.893 E0.0253
G1 X33.881 Y28.897 E0.00025
G1 X33.433 Y29.352 E0.02941
G1 X32.893 Y29.901 E0.03548
G1 X32.893 Y30.45 E0.02529
G1 X32.902 Y30.441 E0.00056
G1 X33.634 Y29.717 E0.04742
G1 X34.467 Y28.893 E0.05401
G1 X35.016 Y28.893 E0.0253
G1 X35.012 Y28.897 E0.00025
G1 X32.893 Y31.032 E0.13859
G1 X32.893 Y31.581 E0.02529
G1 X32.902 Y31.573 E0.00056
G1 X35.107 Y29.367 E0.14368
G1 X35.107 Y29.384 E0.00077
G1 X35.099 Y29.942 E0.02569
G1 X32.893 Y32.164 E0.14422
G1 X32.893 Y32.713 E0.02529
G1 X32.902 Y32.704 E0.00056
G1 X35.107 Y30.499 E0.14368
G1 X35.107 Y30.515 E0.00076
G1 X35.099 Y31.073 E0.0257
G1 X32.893 Y33.295 E0.14422
G1 X32.893 Y33.844 E0.02529
G1 X32.902 Y33.836 E0.00056
G1 X35.107 Y31.63 E0.14368
G1 X35.107 Y31.647 E0.00076
G1 X35.099 Y32.204 E0.0257
G1 X32.893 Y34.426 E0.14421
G1 X32.893 Y34.976 E0.0253
G1 X32.902 Y34.967 E0.00056
G1 X35.107 Y32.761 E0.14368
G1 X35.107 Y32.778 E0.00076
G1 X35.099 Y33.336 E0.02569
G1 X32.893 Y35.558 E0.14422
G1 X32.893 Y36.107 E0.0253
G1 X32.902 Y36.098 E0.00055
G1 X35.107 Y33.893 E0.14368
G1 X35.107 Y33.909 E0.00077
G1 X35.099 Y34.467 E0.02569
G1 X32.893 Y36.689 E0.14422
G1 X32.893 Y37.238 E0.02529
G1 X32.902 Y37.23 E0.00056
G1 X35.107 Y35.024 E0.14368
G1 X35.107 Y35.041 E0.00077
G1 X35.099 Y35.598 E0.02569
G1 X32.893 Y37.82 E0.14422
G1 X32.893 Y38.37 E0.02529
G1 X32.902 Y38.361 E0.00056
G1 X35.107 Y36.156 E0.14368
G1 X35.107 Y36.172 E0.00076
G1 X35.099 Y36.73 E0.0257
G1 X32.893 Y38.952 E0.14422
G1 X32.893 Y39.501 E0.02529
G1 X32.902 Y39.492 E0.00056
; Prepare for Destring
G1 X35.107 Y37.287 E0.14368
G1 X35.107 Y37.304 E0.00076
G1 X35.099 Y37.861 E0.0257
G1 X32.893 Y40.083 E0.14421
G1 X32.893 Y40.632 E0.0253
G1 X32.902 Y40.624 E0.00056
G1 X35.107 Y38.418 E0.14368
G1 X35.107 Y38.435 E0.00076
G1 X35.099 Y38.993 E0.02569
G1 X32.984 Y41.107 E0.13777
G1 X33 Y41.107 E0.00076
G1 X33.553 Y41.103 E0.02547
G1 X34.381 Y40.276 E0.0539
G1 X35.107 Y39.55 E0.04732
G1 X35.107 Y39.566 E0.00077
G1 X35.099 Y40.124 E0.02569
G1 X34.561 Y40.661 E0.035
G1 X34.115 Y41.107 E0.02906
G1 X34.132 Y41.107 E0.00076
G1 X34.685 Y41.103 E0.02547
G1 X35.041 Y40.747 E0.02322
G1 X35.16 Y40.628 E0.00774
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X35.16 Y40.628 Z4.494 E0 F300
; Blending Fan to Cool (57.8% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.131 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.303 Y40.657 E0
; time estimate: pre = 22.669264, post = 19.048550
; Dwell time remaining = -9.048550
;
; Post-layer lift
G1 X32.303 Y40.657 Z4.524 E0 F300
; END_LAYER_OBJECT z=4.444
; *** Estimate all extruders at 2.9 [s], Slowing 0.223x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=4.474 z_thickness=0.263
; Fan set to Cool value 50%
; fan %*255
M106 S128
;
; 'Loop Path', 0.2 [feed mm/s], 5.0 [head mm/s]
G1 X66.182 Y73.879 Z4.524 E0 F9000
G1 X66.182 Y73.879 Z4.474 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 5.020752, filament speed 0.219593, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F301.2
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01894
G1 X67.878 Y72.181 E0.00631
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.1 [feed mm/s], 3.3 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 3.347168, filament speed 0.146396, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F200.8
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.0278
G1 X64.605 Y70.178 E0.03201
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03006
G1 X68.279 Y72.252 E0.02525
G1 X68.106 Y72.931 E0.03067
G1 X67.742 Y73.482 E0.02885
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.00191
G1 X67.542 Y73.617 E0.0019
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00822
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X65.151 Y70.586 E0
; Fan set to Cool value 50%
;
; 'Solid Path', 0.4 [feed mm/s], 8.4 [head mm/s]
G1 X65.412 Y70.595 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.367921, filament speed 0.365989, preload 0.000000
G1 X65.33 Y70.679 E0.00516 F502.1
G1 X65.084 Y70.933 E0.01546
G1 X64.673 Y71.356 E0.02579
; Prepare for Destring
G1 X64.511 Y72.061 E0.03164
G1 X64.527 Y72.045 E0.00098
G1 X65.22 Y71.353 E0.04283
G1 X66.062 Y70.511 E0.05207
G1 X66.532 Y70.606 E0.02097
G1 X66.525 Y70.613 E0.00044
G1 X65.622 Y71.516 E0.05584
G1 X64.606 Y72.532 E0.06285
G1 X64.807 Y72.897 E0.01822
G1 X66.897 Y70.807 E0.12929
G1 X67.182 Y71.088 E0.0175
G1 X65.088 Y73.182 E0.12953
G1 X65.448 Y73.387 E0.01814
G1 X66.474 Y72.361 E0.06345
G1 X67.387 Y71.448 E0.05645
G1 X67.389 Y71.458 E0.00042
G1 X67.487 Y71.914 E0.02042
G1 X66.624 Y72.777 E0.05334
G1 X65.914 Y73.487 E0.04395
G1 X65.939 Y73.482 E0.00113
G1 X66.63 Y73.337 E0.03087
G1 X67.079 Y72.888 E0.02777
G1 X67.348 Y72.618 E0.01667
G1 X67.438 Y72.528 E0.00556
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 10.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 10.041504, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X67.438 Y72.528 Z4.524 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.414 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.566 Y73.131 E0
G1 X66.283 Y73.98 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.988111, post = 9.870961
; Dwell time remaining = 0.129039
;
; Post-layer lift
G1 X66.283 Y73.98 Z4.772 E0 F300
; END_LAYER_OBJECT z=4.474
; BEGIN_LAYER_OBJECT z=4.722 z_thickness=0.278
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X46.187 Y73.389 Z4.772 E0 F9000
G1 X46.187 Y73.389 Z4.722 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
; Prepare for Perimeter
G1 X46.033 Y73.389 E0.00713 F1350
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00003
G1 X47.786 Y73.788 E0.00018
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X44.243 Y71.374 E0
G1 X43.96 Y70.525 E0
G1 X43.96 Y70.525 E0
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X43.907 Y70.578 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.733684, preload 0.000000
G1 X43.974 Y70.513 E0.00432 F2250
G1 X44.175 Y70.318 E0.01297
G1 X44.51 Y69.992 E0.02162
G1 X45.059 Y69.992 E0.02539
G1 X45.051 Y70 E0.00052
G1 X44.569 Y70.489 E0.03176
G1 X43.992 Y71.076 E0.03807
G1 X43.992 Y71.625 E0.02538
G1 X44 Y71.617 E0.00053
G1 X44.769 Y70.856 E0.05002
G1 X45.642 Y69.992 E0.05679
G1 X46.191 Y69.992 E0.02538
G1 X46.183 Y70 E0.00053
; Prepare for Destring
G1 X43.992 Y72.207 E0.14379
G1 X43.992 Y72.756 E0.02539
G1 X44 Y72.748 E0.00052
G1 X46.756 Y69.992 E0.18024
G1 X47.008 Y70.306 E0.0186
G1 X44.306 Y73.008 E0.17667
G1 X44.322 Y73.008 E0.00077
G1 X44.883 Y72.996 E0.02592
G1 X47.008 Y70.871 E0.13894
G1 X47.008 Y70.888 E0.00077
G1 X46.997 Y71.449 E0.02592
G1 X46.167 Y72.278 E0.05423
G1 X45.437 Y73.008 E0.04772
G1 X45.454 Y73.008 E0.00077
G1 X46.014 Y72.996 E0.02592
G1 X46.556 Y72.455 E0.03542
G1 X47.008 Y72.003 E0.02954
G1 X47.008 Y72.019 E0.00077
G1 X46.997 Y72.58 E0.02592
G1 X46.612 Y72.964 E0.02514
G1 X46.484 Y73.093 E0.00839
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X46.484 Y73.093 Z4.772 E0 F300
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.374 Y69.484 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.354 Y62.869 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z4.722 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
G1 X44.926 Y62.388 E0.009 F1350
G1 X44.342 Y62.388 E0.02698
G1 X43.37 Y62.388 E0.04498
G1 X42.008 Y62.388 E0.06296
G1 X40.257 Y62.388 E0.08096
G1 X38.116 Y62.388 E0.09895
G1 X32.668 Y62.388 E0.25187
; Prepare for Perimeter
G1 X32.61 Y62.183 E0.00981
G1 X32.61 Y58.61 E0.16521
G1 X40.916 Y58.615 E0.384
G1 X43.031 Y58.616 E0.09775
G1 X44.818 Y58.618 E0.08263
G1 X46.278 Y58.618 E0.0675
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04948
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.02121
G1 X46.388 Y61.121 E0.00707
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426338
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.489 Y62.788 E0.05374
G1 X44.031 Y62.788 E0.06739
G1 X42.279 Y62.788 E0.08102
G1 X40.231 Y62.788 E0.09466
G1 X32.318 Y62.788 E0.36582
G1 X32.279 Y62.775 E0.00192
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00703
G1 X32.209 Y58.275 E0.19976
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.217 E0.00159
G1 X32.275 Y58.209 E0.0016
G1 X46.679 Y58.217 E0.66592
G1 X46.753 Y58.257 E0.00388
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08337
G1 X46.783 Y61.609 E0.06888
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00004
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.777 Y62.785 E0.00015
G1 X46.219 Y62.388 E0.03167
G1 X45.627 Y62.388 E0.02736
G1 X45.309 Y62.388 E0.01468
G1 X45.25 Y62.388 E0.00273
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.25 Y62.388 Z4.772 E0 F300
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X40.896 Y60.919 E0
G1 X38.084 Y60.347 E0
G1 X35.757 Y60.06 E0
G1 X34.909 Y59.777 E0
G1 X32.929 Y59.495 E0
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X32.907 Y59.382 E0
G1 X32.907 Y59.382 Z4.722 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.733684, preload 0.000000
G1 X33.009 Y59.284 E0.00651 F2250
G1 X33.314 Y58.992 E0.01953
G1 X33.863 Y58.991 E0.0254
G1 X33.861 Y58.993 E0.00011
G1 X33.467 Y59.395 E0.02605
G1 X32.992 Y59.879 E0.03134
G1 X32.992 Y60.428 E0.02539
G1 X32.994 Y60.427 E0.0001
G1 X33.672 Y59.756 E0.04408
G1 X34.445 Y58.991 E0.0503
G1 X34.995 Y58.991 E0.02539
G1 X34.993 Y58.993 E0.00011
G1 X32.992 Y61.01 E0.13136
G1 X32.992 Y61.56 E0.02538
G1 X32.994 Y61.558 E0.00011
G1 X35.577 Y58.991 E0.16835
G1 X36.126 Y58.991 E0.02539
G1 X36.124 Y58.993 E0.00011
G1 X33.184 Y61.933 E0.19223
G1 X33.196 Y61.935 E0.00056
G1 X33.676 Y62.007 E0.02243
G1 X36.708 Y58.991 E0.19772
G1 X37.257 Y58.991 E0.02539
G1 X37.256 Y58.993 E0.00011
G1 X34.241 Y62.008 E0.19712
G1 X34.257 Y62.008 E0.00077
G1 X34.819 Y61.995 E0.02599
G1 X37.84 Y58.991 E0.19693
G1 X38.389 Y58.991 E0.02539
G1 X38.387 Y58.993 E0.00011
G1 X35.372 Y62.008 E0.19712
G1 X35.389 Y62.008 E0.00077
G1 X35.951 Y61.995 E0.02599
G1 X38.971 Y58.991 E0.19693
G1 X39.52 Y58.991 E0.02538
G1 X39.518 Y58.993 E0.00011
G1 X36.503 Y62.008 E0.19713
G1 X36.52 Y62.008 E0.00076
G1 X37.082 Y61.995 E0.02599
G1 X40.102 Y58.991 E0.19693
G1 X40.651 Y58.991 E0.02539
G1 X40.65 Y58.993 E0.00011
G1 X37.635 Y62.008 E0.19712
G1 X37.651 Y62.008 E0.00077
G1 X38.213 Y61.995 E0.02599
G1 X41.234 Y58.991 E0.19693
G1 X41.783 Y58.991 E0.02539
G1 X41.781 Y58.993 E0.00011
G1 X38.766 Y62.008 E0.19712
G1 X38.783 Y62.008 E0.00077
G1 X39.345 Y61.995 E0.02599
G1 X42.365 Y58.991 E0.19693
G1 X42.914 Y58.991 E0.02538
G1 X42.912 Y58.993 E0.00011
G1 X39.897 Y62.008 E0.19713
G1 X39.914 Y62.008 E0.00076
G1 X40.476 Y61.995 E0.02599
G1 X43.496 Y58.991 E0.19693
G1 X44.045 Y58.991 E0.02539
G1 X44.044 Y58.993 E0.00011
G1 X41.029 Y62.008 E0.19712
G1 X41.045 Y62.008 E0.00077
G1 X41.607 Y61.995 E0.02599
G1 X44.628 Y58.991 E0.19693
G1 X45.177 Y58.991 E0.02539
G1 X45.175 Y58.993 E0.00011
; Prepare for Destring
G1 X42.16 Y62.008 E0.19712
G1 X42.177 Y62.008 E0.00077
G1 X42.739 Y61.995 E0.02599
G1 X45.743 Y58.991 E0.19639
G1 X45.977 Y59.323 E0.01876
G1 X43.292 Y62.008 E0.17556
G1 X43.308 Y62.008 E0.00076
G1 X43.87 Y61.995 E0.026
G1 X46.008 Y59.858 E0.13975
G1 X46.008 Y59.874 E0.00077
G1 X45.994 Y60.437 E0.02602
G1 X45.158 Y61.273 E0.05469
G1 X44.423 Y62.008 E0.04804
G1 X44.44 Y62.008 E0.00077
G1 X45.002 Y61.995 E0.02599
G1 X45.552 Y61.445 E0.03599
G1 X46.008 Y60.989 E0.0298
G1 X46.007 Y61.007 E0.00082
G1 X45.982 Y61.58 E0.02655
G1 X45.636 Y61.927 E0.02264
G1 X45.52 Y62.042 E0.00755
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X45.52 Y62.042 Z4.772 E0 F300
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y62.04 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y63.16 E0
G1 X45.94 Y72.505 E0
G1 X46.223 Y73.354 E0
G1 X46.223 Y73.354 E0
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Loop Path', 1.0 [feed mm/s], 22.5 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z4.722 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 22.500002, filament speed 1.040210, preload 0.000000
G1 X32.112 Y40.46 E0.009 F1350
G1 X32.112 Y39.876 E0.02699
G1 X32.113 Y38.903 E0.045
G1 X32.114 Y37.54 E0.06298
G1 X32.114 Y35.788 E0.08099
G1 X32.116 Y33.647 E0.09898
; Prepare for Perimeter
G1 X32.118 Y28.198 E0.25196
G1 X32.223 Y28.111 E0.00625
G1 X35.799 Y28.112 E0.16534
G1 X35.889 Y28.228 E0.00676
G1 X35.885 Y36.474 E0.38123
G1 X35.884 Y38.574 E0.09711
G1 X35.883 Y40.351 E0.08212
G1 X35.882 Y41.803 E0.06713
G1 X35.777 Y41.889 E0.00628
G1 X34.714 Y41.889 E0.04917
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451725
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.723 E0.06479
G1 X31.708 Y38.928 E0.08299
G1 X31.709 Y36.739 E0.1012
G1 X31.71 Y27.81 E0.4128
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00188
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00109
G1 X36.291 Y42.19 E0.66347
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00188
G1 X36.132 Y42.292 E0.00557
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00005
G1 X31.803 Y42.286 E0.00019
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
G1 X32.112 Y40.659 Z4.772 E0 F300
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X33.151 Y37.546 E0
G1 X33.434 Y36.697 E0
G1 X34.292 Y33.379 E0
G1 X34.563 Y30.151 E0
G1 X34.849 Y28.495 E0
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 46%
; fan %*255
M106 S117
;
; 'Solid Path', 1.7 [feed mm/s], 37.5 [head mm/s]
G1 X35.031 Y28.407 E0
G1 X35.031 Y28.407 Z4.722 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 37.500000, filament speed 1.733684, preload 0.000000
G1 X35.141 Y28.523 E0.0074 F2250
G1 X35.474 Y28.87 E0.02221
G1 X35.508 Y29.45 E0.02689
G1 X35.499 Y29.442 E0.00055
G1 X35.06 Y29.01 E0.02844
G1 X34.533 Y28.492 E0.03419
G1 X33.984 Y28.492 E0.02538
G1 X33.985 Y28.493 E0.00009
G1 X34.697 Y29.213 E0.04678
G1 X35.508 Y30.032 E0.05329
G1 X35.508 Y30.581 E0.02539
G1 X35.5 Y30.574 E0.00048
G1 X33.402 Y28.492 E0.13667
G1 X32.853 Y28.492 E0.02538
G1 X32.854 Y28.493 E0.00009
G1 X35.508 Y31.164 E0.17405
G1 X35.508 Y31.713 E0.02538
G1 X35.5 Y31.705 E0.00048
G1 X32.536 Y28.741 E0.19384
G1 X32.534 Y28.756 E0.00072
G1 X32.494 Y29.264 E0.02357
G1 X35.508 Y32.295 E0.19761
G1 X35.508 Y32.844 E0.02538
G1 X35.5 Y32.837 E0.00048
G1 X32.492 Y29.829 E0.19667
G1 X32.492 Y29.845 E0.00077
G1 X32.505 Y30.407 E0.02598
G1 X35.508 Y33.426 E0.19685
G1 X35.508 Y33.976 E0.02539
G1 X35.5 Y33.968 E0.00048
G1 X32.492 Y30.96 E0.19667
G1 X32.492 Y30.977 E0.00076
G1 X32.505 Y31.539 E0.02598
G1 X35.508 Y34.558 E0.19686
G1 X35.508 Y35.107 E0.02539
G1 X35.5 Y35.1 E0.00048
G1 X32.492 Y32.092 E0.19666
G1 X32.492 Y32.108 E0.00077
G1 X32.505 Y32.67 E0.02598
G1 X35.508 Y35.689 E0.19686
G1 X35.508 Y36.238 E0.02538
G1 X35.5 Y36.231 E0.00048
G1 X32.492 Y33.223 E0.19667
G1 X32.492 Y33.24 E0.00077
G1 X32.505 Y33.801 E0.02598
G1 X35.508 Y36.821 E0.19686
G1 X35.508 Y37.37 E0.02538
G1 X35.5 Y37.362 E0.00048
G1 X32.492 Y34.354 E0.19667
G1 X32.492 Y34.371 E0.00076
G1 X32.505 Y34.933 E0.02598
G1 X35.508 Y37.952 E0.19686
G1 X35.508 Y38.501 E0.02539
G1 X35.5 Y38.494 E0.00048
G1 X32.492 Y35.486 E0.19667
G1 X32.492 Y35.502 E0.00076
G1 X32.505 Y36.064 E0.02598
G1 X35.508 Y39.083 E0.19686
G1 X35.508 Y39.632 E0.02539
G1 X35.5 Y39.625 E0.00048
G1 X32.492 Y36.617 E0.19666
G1 X32.492 Y36.634 E0.00077
G1 X32.505 Y37.195 E0.02598
G1 X35.508 Y40.215 E0.19686
G1 X35.508 Y40.764 E0.02538
G1 X35.5 Y40.756 E0.00048
; Prepare for Destring
G1 X32.492 Y37.748 E0.19667
G1 X32.492 Y37.765 E0.00077
G1 X32.505 Y38.327 E0.02598
G1 X35.46 Y41.282 E0.1932
G1 X35.12 Y41.508 E0.01886
G1 X32.492 Y38.88 E0.17183
G1 X32.492 Y38.896 E0.00077
G1 X32.505 Y39.458 E0.02598
G1 X34.555 Y41.508 E0.13401
G1 X34.538 Y41.508 E0.00076
G1 X33.975 Y41.494 E0.02602
G1 X33.185 Y40.704 E0.05167
G1 X32.492 Y40.011 E0.0453
G1 X32.492 Y40.028 E0.00077
G1 X32.505 Y40.59 E0.02598
G1 X33.007 Y41.092 E0.03284
G1 X33.423 Y41.508 E0.0272
G1 X33.405 Y41.507 E0.00087
G1 X32.822 Y41.472 E0.02698
G1 X32.54 Y41.19 E0.01845
G1 X32.445 Y41.095 E0.00619
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 48%
; fan %*255
M106 S122
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X32.445 Y41.095 Z4.772 E0 F300
; Blending Fan to Cool (59.5% blend)
; Blended Fan at 49%
; fan %*255
M106 S125
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y41.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.303 Y40.657 E0
; time estimate: pre = 22.158190, post = 18.461166
; Dwell time remaining = -8.461165
;
; Post-layer lift
G1 X32.303 Y40.657 Z4.787 E0 F300
; END_LAYER_OBJECT z=4.722
; *** Estimate all extruders at 3.2 [s], Slowing 0.231x to 10.0 [s] ***
; BEGIN_LAYER_OBJECT z=4.737 z_thickness=0.263
; Fan set to Cool value 50%
; fan %*255
M106 S128
;
; 'Loop Path', 0.2 [feed mm/s], 5.2 [head mm/s]
G1 X66.182 Y73.879 Z4.787 E0 F9000
G1 X66.182 Y73.879 Z4.737 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 5.196534, filament speed 0.227281, preload 0.000000
; Prepare for Perimeter
G1 X66.022 Y73.869 E0.00701 F311.8
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.208 Y72.602 E0.02427
G1 X64.11 Y72.052 E0.02443
G1 X64.182 Y71.471 E0.02564
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03011
G1 X65.471 Y70.181 E0.02734
G1 X66.053 Y70.11 E0.02567
G1 X66.602 Y70.208 E0.02436
G1 X67.096 Y70.452 E0.02412
G1 X67.582 Y70.947 E0.03036
G1 X67.855 Y71.605 E0.03112
G1 X67.872 Y72.037 E0.01893
G1 X67.878 Y72.181 E0.00632
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.506563
; Fan set to Cool value 50%
;
; 'Perimeter Path', 0.2 [feed mm/s], 3.5 [head mm/s]
G1 X67.877 Y72.198 E0
; head speed 3.464355, filament speed 0.151521, preload 0.000000
G1 X67.866 Y72.273 E0.00331 F207.9
G1 X67.795 Y72.5 E0.0104
G1 X67.676 Y72.881 E0.01749
G1 X67.444 Y73.22 E0.01794
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.012 E0.02551
G1 X66.504 Y74.238 E0.02838
G1 X65.869 Y74.292 E0.02785
G1 X65.134 Y74.133 E0.03289
G1 X64.557 Y73.781 E0.02957
G1 X64.101 Y73.287 E0.02941
G1 X63.818 Y72.722 E0.02765
G1 X63.702 Y72 E0.03197
G1 X63.818 Y71.278 E0.03198
G1 X64.102 Y70.71 E0.02779
G1 X64.605 Y70.178 E0.03202
G1 X65.202 Y69.842 E0.02995
G1 X65.875 Y69.708 E0.03002
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02796
G1 X67.69 Y70.453 E0.02953
G1 X68.08 Y71.013 E0.02985
G1 X68.269 Y71.674 E0.03005
G1 X68.279 Y72.252 E0.02526
G1 X68.106 Y72.931 E0.03066
G1 X67.742 Y73.482 E0.02886
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.0019
G1 X67.542 Y73.617 E0.00191
G1 X67.249 Y73.448 E0.01482
G1 X67.213 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02279
G1 X66.453 Y73.817 E0.01319
G1 X66.272 Y73.866 E0.00823
G1 X66.197 Y73.877 E0.00331
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X67.131 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Loop Path', 0.3 [feed mm/s], 6.9 [head mm/s]
G1 X67.051 Y73.051 E0
; head speed 6.928711, filament speed 0.303041, preload 0.000000
G1 X66.948 Y73.125 E0.00553 F415.7
G1 X66.642 Y73.349 E0.0166
G1 X66.135 Y73.487 E0.023
G1 X65.637 Y73.452 E0.02183
G1 X65.109 Y73.199 E0.02562
G1 X64.754 Y72.818 E0.02275
G1 X64.547 Y72.351 E0.02235
G1 X64.518 Y71.804 E0.02393
G1 X64.682 Y71.299 E0.02326
G1 X65.017 Y70.875 E0.02361
G1 X65.485 Y70.598 E0.02383
G1 X66.055 Y70.504 E0.02526
G1 X66.578 Y70.623 E0.02347
G1 X67.032 Y70.919 E0.02367
G1 X67.35 Y71.36 E0.02381
G1 X67.49 Y71.876 E0.02338
G1 X67.432 Y72.428 E0.02427
G1 X67.172 Y72.919 E0.02428
G1 X67.051 Y73.051 E0.00785
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.131 Y73.131 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X65.434 Y73.131 E0
; Fan set to Cool value 50%
;
; 'Solid Path', 0.4 [feed mm/s], 8.7 [head mm/s]
G1 X65.626 Y73.053 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 8.660889, filament speed 0.378801, preload 0.000000
; Prepare for Destring
G1 X65.559 Y72.985 E0.00417 F519.7
G1 X65.36 Y72.779 E0.01253
G1 X65.028 Y72.437 E0.02087
G1 X64.936 Y71.798 E0.02821
G1 X64.95 Y71.812 E0.00086
G1 X65.516 Y72.378 E0.03501
G1 X66.202 Y73.063 E0.04238
G1 X66.606 Y72.902 E0.01903
G1 X65.894 Y72.19 E0.04401
G1 X65.098 Y71.394 E0.04925
G1 X65.378 Y71.109 E0.0175
G1 X66.177 Y71.907 E0.04938
G1 X66.891 Y72.622 E0.04421
G1 X67.06 Y72.225 E0.01886
G1 X66.357 Y71.521 E0.04351
G1 X65.775 Y70.94 E0.03597
G1 X65.799 Y70.943 E0.00105
G1 X66.424 Y71.024 E0.02759
G1 X66.786 Y71.385 E0.02234
G1 X67.002 Y71.602 E0.0134
G1 X67.075 Y71.674 E0.00448
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 10.4 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 10.393066, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X67.075 Y71.674 Z4.787 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.849 Y71.717 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.283 Y73.98 E0
; time estimate: pre = 9.999209, post = 9.831768
; Dwell time remaining = 0.168232
;
; Post-layer lift
G1 X66.283 Y73.98 Z5.05 E0 F300
; END_LAYER_OBJECT z=4.737
; BEGIN_LAYER_OBJECT z=5.000 z_thickness=0.278
; fan %*255
M106 S102
;
; 'Loop Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X46.187 Y73.389 Z5.05 E0 F9000
G1 X46.187 Y73.389 Z5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 11.250001, filament speed 0.520105, preload 0.000000
; Prepare for TopPerimeter (1)
G1 X46.033 Y73.389 E0.00713 F675
G1 X45.57 Y73.387 E0.0214
G1 X44.798 Y73.385 E0.03567
G1 X43.718 Y73.381 E0.04994
G1 X43.612 Y73.319 E0.00568
G1 X43.612 Y72.264 E0.04882
G1 X43.612 Y71.028 E0.05713
G1 X43.612 Y69.612 E0.06546
G1 X45.033 Y69.612 E0.06572
G1 X46.273 Y69.612 E0.05734
G1 X47.332 Y69.612 E0.04894
G1 X47.39 Y69.817 E0.00984
G1 X47.39 Y70.853 E0.04792
G1 X47.39 Y71.594 E0.03424
G1 X47.39 Y72.038 E0.02055
G1 X47.39 Y72.187 E0.00686
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.354 Y72.223 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 21.483337
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X47.39 Y72.258 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X47.39 Y72.317 E0.0027 F900
G1 X47.395 Y72.652 E0.01551
G1 X47.404 Y73.285 E0.02927
; Prepare for TopLoop (1)
G1 X47.79 Y73.79 E0.02937
G1 X47.79 Y73.79 E0.00003
G1 X47.79 Y73.791 E0.00002
G1 X47.79 Y73.791 E0.00002
G1 X47.789 Y73.791 E0.00002
G1 X47.787 Y73.791 E0.00011
G1 X46.61 Y73.789 E0.05443
G1 X45.12 Y73.786 E0.06889
G1 X43.317 Y73.783 E0.08335
G1 X43.243 Y73.736 E0.00403
G1 X43.22 Y73.712 E0.00154
G1 X43.212 Y73.68 E0.00154
G1 X43.212 Y69.278 E0.20349
G1 X43.221 Y69.245 E0.00159
G1 X43.245 Y69.221 E0.0016
G1 X43.279 Y69.212 E0.00159
G1 X47.682 Y69.212 E0.20358
G1 X47.722 Y69.225 E0.00192
G1 X47.746 Y69.259 E0.00192
G1 X47.791 Y69.404 E0.00704
G1 X47.791 Y71.169 E0.08162
G1 X47.791 Y72.631 E0.06757
G1 X47.791 Y73.788 E0.05352
G1 X47.791 Y73.789 E0.00003
G1 X47.79 Y73.79 E0.00004
G1 X47.79 Y73.79 E0.00004
G1 X47.789 Y73.79 E0.00003
G1 X47.786 Y73.788 E0.00018
G1 X47.279 Y73.403 E0.02941
G1 X46.65 Y73.394 E0.02907
G1 X46.317 Y73.389 E0.01542
G1 X46.258 Y73.389 E0.00272
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.223 Y73.354 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X47.071 Y73.071 E0
;
; 'Loop Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X46.989 Y72.989 E0
; head speed 11.250001, filament speed 0.520105, preload 0.000000
; Prepare for TopSolid (1)
G1 X46.81 Y72.989 E0.0083 F675
G1 X46.271 Y72.987 E0.02489
G1 X45.374 Y72.985 E0.04148
G1 X44.118 Y72.981 E0.05807
G1 X44.012 Y72.918 E0.00571
G1 X44.012 Y71.587 E0.06154
G1 X44.012 Y70.012 E0.07282
G1 X45.592 Y70.012 E0.07307
G1 X46.927 Y70.012 E0.06171
G1 X46.989 Y70.18 E0.00828
G1 X46.989 Y71.409 E0.05681
G1 X46.989 Y72.286 E0.04059
G1 X46.989 Y72.813 E0.02436
G1 X46.989 Y72.989 E0.00813
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X47.071 Y73.071 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.091 Y72.788 E0
;
; 'Solid Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X44.963 Y72.66 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 11.250001, filament speed 0.520105, preload 0.000000
; Prepare for Destring
G1 X44.901 Y72.596 E0.00413 F675
G1 X44.714 Y72.403 E0.0124
G1 X44.403 Y72.082 E0.02066
G1 X44.392 Y71.524 E0.02583
G1 X44.406 Y71.538 E0.00092
G1 X44.9 Y72.023 E0.032
G1 X45.492 Y72.607 E0.03846
G1 X46.041 Y72.607 E0.02539
G1 X46.03 Y72.595 E0.00078
G1 X45.263 Y71.821 E0.05036
G1 X44.392 Y70.941 E0.05722
G1 X44.392 Y70.392 E0.02539
G1 X44.406 Y70.406 E0.00088
G1 X46.607 Y72.607 E0.14392
G1 X46.607 Y72.591 E0.00077
G1 X46.606 Y72.04 E0.02546
G1 X45.729 Y71.164 E0.05729
G1 X44.958 Y70.392 E0.05043
G1 X44.975 Y70.392 E0.00076
G1 X45.537 Y70.406 E0.02602
G1 X46.121 Y70.99 E0.03817
G1 X46.607 Y71.476 E0.03179
G1 X46.606 Y71.456 E0.00092
G1 X46.563 Y70.866 E0.02734
G1 X46.152 Y70.455 E0.02688
G1 X46.015 Y70.318 E0.00896
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for TopLoop (1)
G1 X46.015 Y70.318 Z5.05 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y70.243 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.474 Y69.282 E0
G1 X45.374 Y62.916 E0
G1 X45.369 Y62.891 E0
G1 X45.355 Y62.87 E0
G1 X45.091 Y62.606 E0
G1 X45.091 Y62.606 E0
;
; 'Loop Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X45.121 Y62.388 E0
G1 X45.121 Y62.388 Z5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 11.250001, filament speed 0.520105, preload 0.000000
G1 X44.926 Y62.388 E0.009 F675
G1 X44.342 Y62.388 E0.02698
G1 X43.37 Y62.388 E0.04498
G1 X42.008 Y62.388 E0.06296
G1 X40.257 Y62.388 E0.08096
G1 X38.116 Y62.388 E0.09895
G1 X32.668 Y62.388 E0.25187
; Prepare for TopPerimeter (1)
G1 X32.61 Y62.183 E0.00981
G1 X32.61 Y58.61 E0.16521
G1 X40.916 Y58.615 E0.384
G1 X43.031 Y58.616 E0.09775
G1 X44.818 Y58.618 E0.08263
G1 X46.278 Y58.618 E0.0675
G1 X46.388 Y58.674 E0.00569
G1 X46.388 Y59.745 E0.04948
G1 X46.388 Y60.509 E0.03535
G1 X46.388 Y60.968 E0.02121
G1 X46.388 Y61.121 E0.00707
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X46.505 Y61.192 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.426338
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X46.388 Y61.263 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X46.388 Y61.309 E0.00216 F900
G1 X46.392 Y61.635 E0.01505
G1 X46.4 Y62.271 E0.0294
G1 X46.737 Y62.707 E0.02545
G1 X46.761 Y62.751 E0.00234
G1 X46.764 Y62.766 E0.00069
G1 X46.756 Y62.779 E0.0007
G1 X46.742 Y62.784 E0.00069
G1 X46.651 Y62.788 E0.00422
G1 X45.489 Y62.788 E0.05374
G1 X44.031 Y62.788 E0.06739
G1 X42.279 Y62.788 E0.08102
G1 X40.231 Y62.788 E0.09466
G1 X32.318 Y62.788 E0.36582
G1 X32.279 Y62.775 E0.00192
G1 X32.255 Y62.741 E0.00192
G1 X32.209 Y62.596 E0.00702
G1 X32.209 Y58.275 E0.19977
G1 X32.218 Y58.242 E0.0016
G1 X32.242 Y58.217 E0.00159
G1 X32.275 Y58.209 E0.0016
; Prepare for TopLoop (1)
G1 X46.679 Y58.217 E0.66592
G1 X46.753 Y58.257 E0.00388
G1 X46.779 Y58.282 E0.00164
G1 X46.788 Y58.316 E0.00164
G1 X46.786 Y60.119 E0.08337
G1 X46.783 Y61.609 E0.06888
G1 X46.782 Y62.785 E0.05439
G1 X46.781 Y62.786 E0.00004
G1 X46.781 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00003
G1 X46.78 Y62.787 E0.00004
G1 X46.777 Y62.785 E0.00015
G1 X46.219 Y62.388 E0.03166
G1 X45.627 Y62.388 E0.02737
G1 X45.309 Y62.388 E0.01468
G1 X45.25 Y62.388 E0.00273
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.374 Y62.323 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y61.757 E0
;
; 'Loop Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X45.982 Y61.988 E0
; head speed 11.250001, filament speed 0.520105, preload 0.000000
G1 X45.822 Y61.988 E0.00737 F675
G1 X45.344 Y61.988 E0.0221
G1 X44.547 Y61.988 E0.03684
G1 X43.432 Y61.988 E0.05157
G1 X41.998 Y61.988 E0.0663
G1 X40.245 Y61.988 E0.08105
G1 X38.173 Y61.988 E0.09577
; Prepare for Destring
G1 X33.074 Y61.988 E0.23576
G1 X33.011 Y61.821 E0.00825
G1 X33.011 Y59.01 E0.12992
G1 X40.705 Y59.015 E0.35573
G1 X42.71 Y59.017 E0.09267
G1 X44.434 Y59.018 E0.07972
G1 X45.878 Y59.019 E0.06677
G1 X45.988 Y59.076 E0.00572
G1 X45.985 Y60.35 E0.0589
G1 X45.983 Y61.26 E0.04207
G1 X45.982 Y61.806 E0.02525
G1 X45.982 Y61.988 E0.00841
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for TopSolid (1)
G1 X45.982 Y61.988 Z5.05 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.94 Y61.757 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X36.323 Y61.757 E0
G1 X35.475 Y61.475 E0
G1 X33.495 Y61.192 E0
;
; 'Solid Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X33.373 Y61.151 E0
G1 X33.373 Y61.151 Z5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 11.250001, filament speed 0.520105, preload 0.000000
G1 X33.477 Y61.25 E0.00667 F675
G1 X33.791 Y61.548 E0.02001
G1 X34.395 Y61.608 E0.02807
G1 X34.381 Y61.593 E0.00093
G1 X33.934 Y61.139 E0.02947
G1 X33.393 Y60.588 E0.0357
G1 X33.393 Y60.039 E0.02539
G1 X33.403 Y60.049 E0.00065
G1 X34.138 Y60.777 E0.04784
G1 X34.978 Y61.608 E0.05459
G1 X35.527 Y61.608 E0.02539
G1 X35.515 Y61.596 E0.00074
G1 X33.393 Y59.474 E0.13878
G1 X33.404 Y59.472 E0.00053
G1 X33.877 Y59.392 E0.02217
G1 X36.109 Y61.608 E0.1454
G1 X36.658 Y61.608 E0.02539
G1 X36.647 Y61.596 E0.00075
G1 X34.442 Y59.392 E0.14412
G1 X34.459 Y59.392 E0.00076
G1 X35.008 Y59.392 E0.0254
G1 X37.24 Y61.608 E0.1454
G1 X37.789 Y61.608 E0.02538
G1 X37.778 Y61.596 E0.00075
G1 X35.574 Y59.392 E0.14412
G1 X35.59 Y59.392 E0.00077
G1 X36.14 Y59.392 E0.0254
G1 X38.372 Y61.608 E0.14539
G1 X38.921 Y61.608 E0.02539
G1 X38.909 Y61.596 E0.00075
G1 X36.705 Y59.392 E0.14412
G1 X36.722 Y59.392 E0.00077
G1 X37.271 Y59.392 E0.0254
G1 X39.503 Y61.608 E0.14539
G1 X40.052 Y61.608 E0.02539
G1 X40.041 Y61.596 E0.00075
G1 X37.836 Y59.392 E0.14412
G1 X37.853 Y59.392 E0.00076
G1 X38.402 Y59.392 E0.0254
G1 X40.634 Y61.608 E0.1454
G1 X41.184 Y61.608 E0.02538
G1 X41.172 Y61.596 E0.00075
G1 X38.968 Y59.392 E0.14412
G1 X38.984 Y59.392 E0.00077
G1 X39.534 Y59.392 E0.0254
G1 X41.766 Y61.608 E0.14539
G1 X42.315 Y61.608 E0.02539
G1 X42.304 Y61.596 E0.00075
G1 X40.099 Y59.392 E0.14412
G1 X40.116 Y59.392 E0.00077
G1 X40.665 Y59.392 E0.0254
G1 X42.897 Y61.608 E0.14539
G1 X43.446 Y61.608 E0.02539
G1 X43.435 Y61.596 E0.00074
G1 X41.231 Y59.392 E0.14413
G1 X41.247 Y59.392 E0.00076
; Prepare for Destring
G1 X41.797 Y59.392 E0.0254
G1 X44.029 Y61.608 E0.1454
G1 X44.578 Y61.608 E0.02538
G1 X44.566 Y61.596 E0.00075
G1 X42.362 Y59.392 E0.14412
G1 X42.379 Y59.392 E0.00077
G1 X42.928 Y59.392 E0.0254
G1 X45.144 Y61.607 E0.14485
G1 X45.552 Y61.451 E0.02024
G1 X43.493 Y59.392 E0.13463
G1 X43.51 Y59.392 E0.00077
G1 X44.059 Y59.392 E0.0254
G1 X44.884 Y60.217 E0.05391
G1 X45.607 Y60.94 E0.0473
G1 X45.607 Y60.924 E0.00077
G1 X45.598 Y60.365 E0.02584
G1 X45.066 Y59.833 E0.03479
G1 X44.625 Y59.392 E0.02882
G1 X44.641 Y59.392 E0.00077
G1 X45.191 Y59.392 E0.0254
G1 X45.532 Y59.734 E0.02234
G1 X45.646 Y59.848 E0.00745
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for TopLoop (1)
G1 X45.646 Y59.848 Z5.05 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X45.657 Y59.777 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X45.94 Y62.543 E0
G1 X45.94 Y71.94 E0
G1 X46.223 Y72.788 E0
G1 X46.223 Y73.354 E0
;
; 'Loop Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X32.112 Y40.654 E0
G1 X32.112 Y40.654 Z5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 11.250001, filament speed 0.520105, preload 0.000000
G1 X32.112 Y40.46 E0.009 F675
G1 X32.112 Y39.876 E0.02699
G1 X32.113 Y38.903 E0.045
G1 X32.114 Y37.54 E0.06298
G1 X32.114 Y35.788 E0.08099
G1 X32.116 Y33.647 E0.09898
; Prepare for TopPerimeter (1)
G1 X32.118 Y28.198 E0.25196
G1 X32.223 Y28.111 E0.00625
G1 X35.799 Y28.112 E0.16533
G1 X35.889 Y28.228 E0.00677
G1 X35.885 Y36.474 E0.38123
G1 X35.884 Y38.574 E0.09711
G1 X35.883 Y40.351 E0.08212
G1 X35.882 Y41.803 E0.06713
G1 X35.777 Y41.889 E0.00628
G1 X34.714 Y41.889 E0.04917
G1 X33.954 Y41.889 E0.03512
G1 X33.498 Y41.889 E0.02107
G1 X33.346 Y41.889 E0.00703
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X33.434 Y41.788 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 41.451725
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X33.334 Y41.889 E0
; head speed 15.000000, filament speed 0.693473, preload 0.000000
G1 X33.246 Y41.889 E0.00408 F900
G1 X32.909 Y41.892 E0.01557
G1 X32.32 Y41.899 E0.02721
G1 X31.902 Y42.187 E0.02349
G1 X31.829 Y42.259 E0.00474
G1 X31.801 Y42.273 E0.00144
G1 X31.771 Y42.266 E0.00145
G1 X31.751 Y42.242 E0.00144
G1 X31.708 Y42.124 E0.00578
G1 X31.708 Y40.723 E0.06479
G1 X31.708 Y38.928 E0.08299
G1 X31.709 Y36.739 E0.1012
G1 X31.71 Y27.81 E0.4128
G1 X31.722 Y27.771 E0.00187
G1 X31.755 Y27.747 E0.00188
G1 X31.868 Y27.708 E0.00555
G1 X36.171 Y27.708 E0.19895
G1 X36.199 Y27.715 E0.00132
G1 X36.222 Y27.732 E0.00132
G1 X36.277 Y27.796 E0.00388
G1 X36.288 Y27.816 E0.00108
G1 X36.293 Y27.839 E0.00109
; Prepare for TopLoop (1)
G1 X36.291 Y42.19 E0.66347
G1 X36.278 Y42.229 E0.00188
G1 X36.246 Y42.253 E0.00188
G1 X36.132 Y42.292 E0.00557
G1 X34.395 Y42.292 E0.08027
G1 X32.952 Y42.292 E0.06673
G1 X31.802 Y42.292 E0.05318
G1 X31.801 Y42.292 E0.00004
G1 X31.8 Y42.292 E0.00004
G1 X31.8 Y42.291 E0.00004
G1 X31.8 Y42.29 E0.00005
G1 X31.803 Y42.286 E0.00019
G1 X32.112 Y41.761 E0.02818
G1 X32.112 Y41.117 E0.02979
G1 X32.112 Y40.751 E0.0169
G1 X32.112 Y40.659 E0.00425
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.303 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y41.505 E0
;
; 'Loop Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X32.603 Y41.488 E0
; head speed 11.250001, filament speed 0.520105, preload 0.000000
G1 X32.513 Y41.378 E0.00658 F675
G1 X32.513 Y40.913 E0.0215
G1 X32.513 Y40.125 E0.03646
G1 X32.514 Y39.012 E0.05142
G1 X32.514 Y37.577 E0.06638
G1 X32.515 Y35.817 E0.08133
G1 X32.516 Y33.735 E0.09629
; Prepare for Destring
G1 X32.519 Y28.599 E0.23745
G1 X32.619 Y28.512 E0.00613
G1 X35.398 Y28.513 E0.12844
G1 X35.488 Y28.621 E0.00652
G1 X35.484 Y36.283 E0.35421
G1 X35.483 Y38.272 E0.09195
G1 X35.482 Y39.978 E0.07888
G1 X35.482 Y41.402 E0.06582
G1 X35.38 Y41.488 E0.00615
G1 X34.165 Y41.488 E0.05617
G1 X33.298 Y41.488 E0.04012
G1 X32.777 Y41.488 E0.02407
G1 X32.603 Y41.488 E0.00803
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for TopSolid (1)
G1 X32.603 Y41.488 Z5.05 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X32.586 Y41.505 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.586 Y30.757 E0
G1 X32.869 Y29.909 E0
G1 X32.869 Y29.343 E0
;
; 'Solid Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X32.84 Y29.372 E0
G1 X32.84 Y29.372 Z5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; Path end 25.00 [mm] slowed to Perim speed
; head speed 11.250001, filament speed 0.520105, preload 0.000000
G1 X32.964 Y29.252 E0.00797 F675
G1 X33.336 Y28.893 E0.02389
G1 X33.885 Y28.893 E0.02539
G1 X33.881 Y28.897 E0.00025
G1 X33.433 Y29.352 E0.02952
G1 X32.893 Y29.901 E0.03561
G1 X32.893 Y30.45 E0.02538
G1 X32.902 Y30.441 E0.00056
G1 X33.634 Y29.717 E0.0476
G1 X34.467 Y28.893 E0.0542
G1 X35.016 Y28.893 E0.02539
G1 X35.012 Y28.897 E0.00025
G1 X32.893 Y31.032 E0.13909
G1 X32.893 Y31.581 E0.02539
G1 X32.902 Y31.573 E0.00056
G1 X35.107 Y29.367 E0.1442
G1 X35.107 Y29.384 E0.00076
G1 X35.099 Y29.942 E0.02579
G1 X32.893 Y32.164 E0.14474
G1 X32.893 Y32.713 E0.02538
G1 X32.902 Y32.704 E0.00056
G1 X35.107 Y30.499 E0.1442
G1 X35.107 Y30.515 E0.00077
G1 X35.099 Y31.073 E0.02578
G1 X32.893 Y33.295 E0.14474
G1 X32.893 Y33.844 E0.02539
G1 X32.902 Y33.836 E0.00056
G1 X35.107 Y31.63 E0.1442
G1 X35.107 Y31.647 E0.00076
G1 X35.099 Y32.204 E0.02579
G1 X32.893 Y34.426 E0.14474
G1 X32.893 Y34.976 E0.02538
G1 X32.902 Y34.967 E0.00057
G1 X35.107 Y32.761 E0.14419
G1 X35.107 Y32.778 E0.00077
G1 X35.099 Y33.336 E0.02578
G1 X32.893 Y35.558 E0.14474
G1 X32.893 Y36.107 E0.02539
G1 X32.902 Y36.098 E0.00056
G1 X35.107 Y33.893 E0.1442
G1 X35.107 Y33.909 E0.00076
G1 X35.099 Y34.467 E0.02579
G1 X32.893 Y36.689 E0.14474
G1 X32.893 Y37.238 E0.02539
G1 X32.902 Y37.23 E0.00056
G1 X35.107 Y35.024 E0.14419
G1 X35.107 Y35.041 E0.00077
G1 X35.099 Y35.598 E0.02579
G1 X32.893 Y37.82 E0.14473
G1 X32.893 Y38.37 E0.02539
G1 X32.902 Y38.361 E0.00056
G1 X35.107 Y36.156 E0.1442
G1 X35.107 Y36.172 E0.00076
G1 X35.099 Y36.73 E0.02579
G1 X32.893 Y38.952 E0.14474
G1 X32.893 Y39.501 E0.02539
G1 X32.902 Y39.492 E0.00056
; Prepare for Destring
G1 X35.107 Y37.287 E0.14419
G1 X35.107 Y37.304 E0.00077
G1 X35.099 Y37.861 E0.02579
G1 X32.893 Y40.083 E0.14474
G1 X32.893 Y40.632 E0.02538
G1 X32.902 Y40.624 E0.00056
G1 X35.107 Y38.418 E0.1442
G1 X35.107 Y38.435 E0.00077
G1 X35.099 Y38.993 E0.02578
G1 X32.984 Y41.107 E0.13826
G1 X33 Y41.107 E0.00077
G1 X33.553 Y41.103 E0.02556
G1 X34.381 Y40.276 E0.05409
G1 X35.107 Y39.55 E0.0475
G1 X35.107 Y39.566 E0.00076
G1 X35.099 Y40.124 E0.02579
G1 X34.561 Y40.661 E0.03513
G1 X34.115 Y41.107 E0.02916
G1 X34.132 Y41.107 E0.00077
G1 X34.685 Y41.103 E0.02556
G1 X35.041 Y40.747 E0.0233
G1 X35.16 Y40.628 E0.00777
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for TopLoop (1)
G1 X35.16 Y40.628 Z5.05 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X35.131 Y40.657 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X32.303 Y40.657 E0
;
; 'Loop Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X66.182 Y73.879 E0
G1 X66.182 Y73.879 Z5 E0 F300
; 'Destring Prime'
G1 E1 F1875
; head speed 11.250001, filament speed 0.492043, preload 0.000000
; Prepare for TopPerimeter (1)
G1 X66.022 Y73.869 E0.00701 F675
G1 X65.542 Y73.84 E0.02102
G1 X64.945 Y73.579 E0.02851
G1 X64.456 Y73.099 E0.02999
G1 X64.207 Y72.602 E0.02431
G1 X64.11 Y72.052 E0.0244
G1 X64.181 Y71.471 E0.02563
G1 X64.424 Y70.942 E0.02545
G1 X64.906 Y70.45 E0.03012
G1 X65.47 Y70.181 E0.02732
G1 X66.053 Y70.11 E0.0257
G1 X66.602 Y70.208 E0.02439
G1 X67.096 Y70.452 E0.02408
G1 X67.582 Y70.947 E0.03034
G1 X67.855 Y71.604 E0.03113
G1 X67.873 Y72.037 E0.01895
G1 X67.879 Y72.182 E0.00633
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.98 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
; Perimeter Length = 17.508198
;
; 'Perimeter Path', 0.7 [feed mm/s], 15.0 [head mm/s]
G1 X67.877 Y72.197 E0
; head speed 15.000001, filament speed 0.656057, preload 0.000000
; Prepare for TopSolid (1)
G1 X67.866 Y72.272 E0.00332 F900
G1 X67.795 Y72.499 E0.01042
G1 X67.675 Y72.882 E0.01752
G1 X67.444 Y73.22 E0.01791
G1 X67.433 Y73.254 E0.00158
G1 X67.441 Y73.289 E0.00158
G1 X67.597 Y73.576 E0.01429
G1 X67.605 Y73.606 E0.00137
G1 X67.598 Y73.637 E0.00137
G1 X67.578 Y73.661 E0.00137
G1 X67.112 Y74.013 E0.02554
G1 X66.504 Y74.238 E0.02836
G1 X65.869 Y74.292 E0.02785
G1 X65.135 Y74.134 E0.03287
G1 X64.557 Y73.781 E0.0296
G1 X64.101 Y73.287 E0.0294
G1 X63.817 Y72.721 E0.02767
G1 X63.702 Y72 E0.03195
G1 X63.817 Y71.278 E0.03197
G1 X64.102 Y70.71 E0.02782
G1 X64.605 Y70.178 E0.03201
G1 X65.201 Y69.842 E0.02993
G1 X65.875 Y69.708 E0.03005
G1 X66.579 Y69.779 E0.03095
G1 X67.17 Y70.022 E0.02794
G1 X67.69 Y70.453 E0.02955
G1 X68.08 Y71.014 E0.02987
G1 X68.269 Y71.674 E0.03004
G1 X68.279 Y72.252 E0.02526
G1 X68.106 Y72.93 E0.03063
G1 X67.742 Y73.482 E0.02889
G1 X67.624 Y73.606 E0.00752
G1 X67.585 Y73.626 E0.00191
G1 X67.542 Y73.617 E0.0019
G1 X67.249 Y73.448 E0.01482
G1 X67.214 Y73.439 E0.0016
G1 X67.179 Y73.45 E0.0016
G1 X66.745 Y73.738 E0.02278
G1 X66.454 Y73.817 E0.0132
G1 X66.272 Y73.866 E0.00823
G1 X66.197 Y73.877 E0.00332
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X66.283 Y73.98 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X65.151 Y70.586 E0
;
; 'Solid Path', 0.5 [feed mm/s], 11.3 [head mm/s]
G1 X65.412 Y70.595 E0
; Path end 25.00 [mm] slowed to Perim speed
; head speed 11.250001, filament speed 0.492043, preload 0.000000
G1 X65.33 Y70.679 E0.00516 F675
G1 X65.084 Y70.933 E0.01546
G1 X64.673 Y71.356 E0.02578
; Prepare for Destring
G1 X64.511 Y72.061 E0.03165
G1 X64.527 Y72.045 E0.00098
G1 X65.22 Y71.353 E0.04283
G1 X66.062 Y70.511 E0.05207
G1 X66.532 Y70.606 E0.02097
G1 X66.525 Y70.613 E0.00044
G1 X65.622 Y71.516 E0.05584
G1 X64.606 Y72.532 E0.06285
G1 X64.807 Y72.897 E0.01822
G1 X66.897 Y70.807 E0.12929
G1 X67.182 Y71.088 E0.0175
G1 X65.088 Y73.182 E0.12953
G1 X65.448 Y73.387 E0.01814
G1 X66.474 Y72.361 E0.06345
G1 X67.387 Y71.448 E0.05645
G1 X67.389 Y71.458 E0.00042
G1 X67.487 Y71.914 E0.02042
G1 X66.624 Y72.777 E0.05334
G1 X65.914 Y73.487 E0.04395
G1 X65.939 Y73.482 E0.00113
G1 X66.63 Y73.337 E0.03087
G1 X67.079 Y72.888 E0.02777
G1 X67.348 Y72.618 E0.01667
G1 X67.438 Y72.528 E0.00556
;
; 'Destring/Wipe/Jump Path', 0.0 [feed mm/s], 45.0 [head mm/s]
; 'Destring Suck'
G1 E-1 F1875
; head speed 45.000000, filament speed 0.000000, preload 0.000000
; Prepare for End-Of-Layer
G1 X67.438 Y72.528 Z5.05 E0 F300
;
; 'Travel/Ironing Path', 0.0 [feed mm/s], 150.0 [head mm/s]
G1 X67.414 Y72.283 E0 F9000
; head speed 150.000000, filament speed 0.000000, preload 0.000000
G1 X66.566 Y73.131 E0
G1 X66.283 Y73.98 E0
G1 X66.283 Y73.98 E0
; time estimate: pre = 43.943439, post = 42.301517
; Dwell time remaining = -32.301517
;
; Post-layer lift
G1 X66.283 Y73.98 Z5.314 E0 F300
; END_LAYER_OBJECT z=5.000
;
; *** Cooling Extruder 1 to 0 C and Retiring ***
; Same extruder, about to deselect, maybe retract before cooling down
; RETRACT HERE IF YOU WANT
G4 P0
M104 S0
;
; fan off
M107
; *** G-code Postfix ***
;
; All extruders are retired
; Move the head up / bed down
G91
G1 Z+10
G90
; turn off the bed & chamber (machine specific)
M140 S0
;M141 S0
; FILL THIS IN AS NEEDED
;
;
;
; Calculated-during-export Build Time: 10.16 minutes
; Estimated-in-GUI Build Time:         10.18 minutes
; Estimated-in-GUI Build Cost:         $0.03
;
; Filament used per extruder:
;    Ext #1  =   305.09 mm  (0.734 cm^3)
;
; *** Extrusion Time Breakdown ***
; * estimated time in [s]
; * before possibly slowing down for 'cool'
; * not including Z-travel
;
;	| Ext #1  | Path Type
;	========================================
;	| 18.2548 | Jump Path                  |
;	| 0       | Pillar Path                |
;	> 0       > Raft Path                  >
;	| 0       | Support Interface Path     |
;	| 0       | Support (may Stack) Path   |
;	| 160.073 | Perimeter Path             |
;	> 115.728 > Loop Path                  >
;	| 78.3098 | Solid Path                 |
;	| 20.747  | Sparse Infill Path         |
;	| 7.02163 | Stacked Sparse Infill Path |
;	> 7.42718 > Destring/Wipe/Jump Path    >
;	| 0       | Crown Path                 |
;	| 5.83886 | Prime Pillar Path          |
;	| 0       | Purge Path                 |
;	> 8.92957 > Travel/Ironing Path        >
;	| 0       | Pause Point                |
;	| 57.0375 | Extruder Warm-Up           |
;	========================================
; Total estimated (pre-cool) minutes: 7.99
