# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
awaddr { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
awvalid { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
awready_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
awready_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
wdata { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
wvalid { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
wready_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
wready_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 72
	offset_end 79
}
bvalid_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
bvalid_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 88
	offset_end 95
}
bready { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
araddr { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
arvalid { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
arready_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
arready_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 128
	offset_end 135
}
rdata { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 136
	offset_end 143
}
rvalid_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
rvalid_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 160
	offset_end 167
}
rready { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
clk { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
rst_n { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 1 \
			corename nmp_axi4l_ip_control_axilite \
			name nmp_axi4l_ip_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler nmp_axi4l_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


