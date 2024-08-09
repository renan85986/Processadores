dict set slaves control {ports {awaddr {type i_ap_none width 8} awvalid {type i_ap_none width 1} awready_i {type i_ap_none width 1} awready_o {type o_ap_vld width 1} wdata {type i_ap_none width 32} wvalid {type i_ap_none width 1} wready_i {type i_ap_none width 1} wready_o {type o_ap_vld width 1} bvalid_i {type i_ap_none width 1} bvalid_o {type o_ap_vld width 1} bready {type i_ap_none width 1} araddr {type i_ap_none width 8} arvalid {type i_ap_none width 1} arready_i {type i_ap_none width 1} arready_o {type o_ap_vld width 1} rdata {type o_ap_vld width 32} rvalid_i {type i_ap_none width 1} rvalid_o {type o_ap_vld width 1} rready {type i_ap_none width 1} rst_n {type i_ap_none width 1}} mems {} has_ctrl 0}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
