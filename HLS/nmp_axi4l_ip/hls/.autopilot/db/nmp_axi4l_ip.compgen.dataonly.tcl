# This script segment is generated automatically by AutoPilot

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


