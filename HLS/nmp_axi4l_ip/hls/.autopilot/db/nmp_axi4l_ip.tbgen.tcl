set moduleName nmp_axi4l_ip
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {nmp_axi4l_ip}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ awaddr int 8 unused {axi_slave 0}  }
	{ awvalid uint 1 regular {axi_slave 0}  }
	{ awready int 1 regular {axi_slave 2}  }
	{ wdata int 32 unused {axi_slave 0}  }
	{ wvalid uint 1 regular {axi_slave 0}  }
	{ wready int 1 regular {axi_slave 2}  }
	{ bvalid int 1 regular {axi_slave 2}  }
	{ bready uint 1 regular {axi_slave 0}  }
	{ araddr int 8 unused {axi_slave 0}  }
	{ arvalid uint 1 regular {axi_slave 0}  }
	{ arready int 1 regular {axi_slave 2}  }
	{ rdata int 32 regular {axi_slave 1}  }
	{ rvalid int 1 regular {axi_slave 2}  }
	{ rready uint 1 regular {axi_slave 0}  }
	{ clk uint 1 unused {axi_slave 0}  }
	{ rst_n uint 1 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "awaddr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "awvalid", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "awready", "interface" : "axi_slave", "bundle":"control","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":32, "out":40}, "offset_end" : {"in":39, "out":47}} , 
 	{ "Name" : "wdata", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "wvalid", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "wready", "interface" : "axi_slave", "bundle":"control","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":64, "out":72}, "offset_end" : {"in":71, "out":79}} , 
 	{ "Name" : "bvalid", "interface" : "axi_slave", "bundle":"control","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":80, "out":88}, "offset_end" : {"in":87, "out":95}} , 
 	{ "Name" : "bready", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "araddr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "arvalid", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "arready", "interface" : "axi_slave", "bundle":"control","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":120, "out":128}, "offset_end" : {"in":127, "out":135}} , 
 	{ "Name" : "rdata", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":136}, "offset_end" : {"out":143}} , 
 	{ "Name" : "rvalid", "interface" : "axi_slave", "bundle":"control","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":152, "out":160}, "offset_end" : {"in":159, "out":167}} , 
 	{ "Name" : "rready", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "clk", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "rst_n", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"awaddr","role":"data","value":"16"},{"name":"awvalid","role":"data","value":"24"},{"name":"awready","role":"data","value":"32"},{"name":"wdata","role":"data","value":"48"},{"name":"wvalid","role":"data","value":"56"},{"name":"wready","role":"data","value":"64"},{"name":"bvalid","role":"data","value":"80"},{"name":"bready","role":"data","value":"96"},{"name":"araddr","role":"data","value":"104"},{"name":"arvalid","role":"data","value":"112"},{"name":"arready","role":"data","value":"120"},{"name":"rvalid","role":"data","value":"152"},{"name":"rready","role":"data","value":"168"},{"name":"clk","role":"data","value":"176"},{"name":"rst_n","role":"data","value":"184"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"awready","role":"data","value":"40"}, {"name":"awready","role":"valid","value":"44","valid_bit":"0"},{"name":"wready","role":"data","value":"72"}, {"name":"wready","role":"valid","value":"76","valid_bit":"0"},{"name":"bvalid","role":"data","value":"88"}, {"name":"bvalid","role":"valid","value":"92","valid_bit":"0"},{"name":"arready","role":"data","value":"128"}, {"name":"arready","role":"valid","value":"132","valid_bit":"0"},{"name":"rdata","role":"data","value":"136"}, {"name":"rdata","role":"valid","value":"140","valid_bit":"0"},{"name":"rvalid","role":"data","value":"160"}, {"name":"rvalid","role":"valid","value":"164","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "nmp_axi4l_ip",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "awaddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "awvalid", "Type" : "None", "Direction" : "I"},
			{"Name" : "awready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wdata", "Type" : "None", "Direction" : "I"},
			{"Name" : "wvalid", "Type" : "None", "Direction" : "I"},
			{"Name" : "wready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bvalid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "bready", "Type" : "None", "Direction" : "I"},
			{"Name" : "araddr", "Type" : "None", "Direction" : "I"},
			{"Name" : "arvalid", "Type" : "None", "Direction" : "I"},
			{"Name" : "arready", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rdata", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "rvalid", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rready", "Type" : "None", "Direction" : "I"},
			{"Name" : "clk", "Type" : "None", "Direction" : "I"},
			{"Name" : "rst_n", "Type" : "None", "Direction" : "I"},
			{"Name" : "compute_idx", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nmp_axi4l_ip {
		awaddr {Type I LastRead -1 FirstWrite -1}
		awvalid {Type I LastRead 0 FirstWrite -1}
		awready {Type IO LastRead 0 FirstWrite 0}
		wdata {Type I LastRead -1 FirstWrite -1}
		wvalid {Type I LastRead 0 FirstWrite -1}
		wready {Type IO LastRead 0 FirstWrite 0}
		bvalid {Type IO LastRead 0 FirstWrite 0}
		bready {Type I LastRead 0 FirstWrite -1}
		araddr {Type I LastRead -1 FirstWrite -1}
		arvalid {Type I LastRead 0 FirstWrite -1}
		arready {Type IO LastRead 0 FirstWrite 0}
		rdata {Type O LastRead -1 FirstWrite 0}
		rvalid {Type IO LastRead 0 FirstWrite 0}
		rready {Type I LastRead 0 FirstWrite -1}
		clk {Type I LastRead -1 FirstWrite -1}
		rst_n {Type I LastRead 0 FirstWrite -1}
		compute_idx {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
