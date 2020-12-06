set moduleName single_conv_test
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {single_conv_test}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgtotal int 32 regular {array 1024 { 1 1 } 1 1 }  }
	{ weitotal int 32 regular {array 144 { 1 1 } 1 1 }  }
	{ outtotal int 32 regular {array 9 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgtotal", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "imgtotal","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "weitotal", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weitotal","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1}]}]}]} , 
 	{ "Name" : "outtotal", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outtotal","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 8,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgtotal_address0 sc_out sc_lv 10 signal 0 } 
	{ imgtotal_ce0 sc_out sc_logic 1 signal 0 } 
	{ imgtotal_q0 sc_in sc_lv 32 signal 0 } 
	{ imgtotal_address1 sc_out sc_lv 10 signal 0 } 
	{ imgtotal_ce1 sc_out sc_logic 1 signal 0 } 
	{ imgtotal_q1 sc_in sc_lv 32 signal 0 } 
	{ weitotal_address0 sc_out sc_lv 8 signal 1 } 
	{ weitotal_ce0 sc_out sc_logic 1 signal 1 } 
	{ weitotal_q0 sc_in sc_lv 32 signal 1 } 
	{ weitotal_address1 sc_out sc_lv 8 signal 1 } 
	{ weitotal_ce1 sc_out sc_logic 1 signal 1 } 
	{ weitotal_q1 sc_in sc_lv 32 signal 1 } 
	{ outtotal_address0 sc_out sc_lv 4 signal 2 } 
	{ outtotal_ce0 sc_out sc_logic 1 signal 2 } 
	{ outtotal_we0 sc_out sc_logic 1 signal 2 } 
	{ outtotal_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgtotal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imgtotal", "role": "address0" }} , 
 	{ "name": "imgtotal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgtotal", "role": "ce0" }} , 
 	{ "name": "imgtotal_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgtotal", "role": "q0" }} , 
 	{ "name": "imgtotal_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "imgtotal", "role": "address1" }} , 
 	{ "name": "imgtotal_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgtotal", "role": "ce1" }} , 
 	{ "name": "imgtotal_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgtotal", "role": "q1" }} , 
 	{ "name": "weitotal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weitotal", "role": "address0" }} , 
 	{ "name": "weitotal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weitotal", "role": "ce0" }} , 
 	{ "name": "weitotal_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weitotal", "role": "q0" }} , 
 	{ "name": "weitotal_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weitotal", "role": "address1" }} , 
 	{ "name": "weitotal_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weitotal", "role": "ce1" }} , 
 	{ "name": "weitotal_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weitotal", "role": "q1" }} , 
 	{ "name": "outtotal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outtotal", "role": "address0" }} , 
 	{ "name": "outtotal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outtotal", "role": "ce0" }} , 
 	{ "name": "outtotal_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outtotal", "role": "we0" }} , 
 	{ "name": "outtotal_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outtotal", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
		"CDFG" : "single_conv_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14617", "EstimateLatencyMax" : "17113",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgtotal", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weitotal", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outtotal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "kernel_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_0_0"}]},
			{"Name" : "kernel_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_0_1"}]},
			{"Name" : "kernel_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_0_2"}]},
			{"Name" : "kernel_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_1_0"}]},
			{"Name" : "kernel_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_1_1"}]},
			{"Name" : "kernel_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_1_2"}]},
			{"Name" : "kernel_2_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_2_0"}]},
			{"Name" : "kernel_2_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_2_1"}]},
			{"Name" : "kernel_2_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "kernel_2_2"}]},
			{"Name" : "cal_conv_0_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_0_0"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_0_0"}]},
			{"Name" : "cal_conv_0_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_0_1"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_0_1"}]},
			{"Name" : "cal_conv_0_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_0_2"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_0_2"}]},
			{"Name" : "cal_conv_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_1_0"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_1_0"}]},
			{"Name" : "cal_conv_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_1_1"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_1_1"}]},
			{"Name" : "cal_conv_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_1_2"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_1_2"}]},
			{"Name" : "cal_conv_2_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_2_0"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_2_0"}]},
			{"Name" : "cal_conv_2_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_2_1"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_2_1"}]},
			{"Name" : "cal_conv_2_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "cal_conv_2_2"},
					{"ID" : "11", "SubInstance" : "grp_single_conv_calculat_fu_2112", "Port" : "cal_conv_2_2"}]},
			{"Name" : "conv_line_buffer", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_conv_line_buffer_shi_fu_2152", "Port" : "conv_line_buffer"}]},
			{"Name" : "cal_pool", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_single_pool_calculat_fu_2179", "Port" : "cal_pool"},
					{"ID" : "14", "SubInstance" : "grp_pool_line_buffer_shi_fu_2185", "Port" : "cal_pool"}]},
			{"Name" : "pool_line_buffer", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_pool_line_buffer_shi_fu_2185", "Port" : "pool_line_buffer"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_line_buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cal_pool_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_line_buffer_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_4_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_5_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_single_conv_calculat_fu_2112", "Parent" : "0",
		"CDFG" : "single_conv_calculat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cal_conv_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_2_2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_line_buffer_shi_fu_2152", "Parent" : "0",
		"CDFG" : "conv_line_buffer_shi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "15",
		"VariableLatency" : "0", "ExactLatency" : "14", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_conv_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_conv_2_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_conv_0_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_conv_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "cal_conv_0_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_conv_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_conv_1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_conv_2_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_conv_2_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_line_buffer", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_single_pool_calculat_fu_2179", "Parent" : "0",
		"CDFG" : "single_pool_calculat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cal_pool", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pool_line_buffer_shi_fu_2185", "Parent" : "0",
		"CDFG" : "pool_line_buffer_shi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "6",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "cal_pool", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pool_line_buffer", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	single_conv_test {
		imgtotal {Type I LastRead 35 FirstWrite -1}
		weitotal {Type I LastRead 8 FirstWrite -1}
		outtotal {Type O LastRead -1 FirstWrite 209}
		kernel_0_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_0_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_0_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_1_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_1_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_1_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_2_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_2_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_2_2 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_0_0 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_0_1 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_0_2 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_1_0 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_1_1 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_1_2 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_2_0 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_2_1 {Type IO LastRead -1 FirstWrite -1}
		cal_conv_2_2 {Type IO LastRead -1 FirstWrite -1}
		conv_line_buffer {Type IO LastRead -1 FirstWrite -1}
		cal_pool {Type IO LastRead -1 FirstWrite -1}
		pool_line_buffer {Type IO LastRead -1 FirstWrite -1}}
	single_conv_calculat {
		cal_conv_0_0 {Type I LastRead 2 FirstWrite -1}
		kernel_0_0 {Type I LastRead 2 FirstWrite -1}
		cal_conv_0_1 {Type I LastRead 2 FirstWrite -1}
		kernel_0_1 {Type I LastRead 2 FirstWrite -1}
		cal_conv_0_2 {Type I LastRead 2 FirstWrite -1}
		kernel_0_2 {Type I LastRead 2 FirstWrite -1}
		cal_conv_1_0 {Type I LastRead 2 FirstWrite -1}
		kernel_1_0 {Type I LastRead 2 FirstWrite -1}
		cal_conv_1_1 {Type I LastRead 1 FirstWrite -1}
		kernel_1_1 {Type I LastRead 1 FirstWrite -1}
		cal_conv_1_2 {Type I LastRead 1 FirstWrite -1}
		kernel_1_2 {Type I LastRead 1 FirstWrite -1}
		cal_conv_2_0 {Type I LastRead 0 FirstWrite -1}
		kernel_2_0 {Type I LastRead 0 FirstWrite -1}
		cal_conv_2_1 {Type I LastRead 0 FirstWrite -1}
		kernel_2_1 {Type I LastRead 0 FirstWrite -1}
		cal_conv_2_2 {Type I LastRead 0 FirstWrite -1}
		kernel_2_2 {Type I LastRead 0 FirstWrite -1}}
	conv_line_buffer_shi {
		data {Type I LastRead 14 FirstWrite -1}
		cal_conv_1_0 {Type IO LastRead 10 FirstWrite 12}
		cal_conv_2_0 {Type IO LastRead 14 FirstWrite 14}
		cal_conv_0_1 {Type IO LastRead 8 FirstWrite 8}
		cal_conv_0_0 {Type O LastRead -1 FirstWrite 8}
		cal_conv_0_2 {Type IO LastRead 8 FirstWrite 8}
		cal_conv_1_1 {Type IO LastRead 12 FirstWrite 12}
		cal_conv_1_2 {Type IO LastRead 12 FirstWrite 12}
		cal_conv_2_1 {Type IO LastRead 14 FirstWrite 14}
		cal_conv_2_2 {Type IO LastRead 14 FirstWrite 14}
		conv_line_buffer {Type IO LastRead 7 FirstWrite 7}}
	single_pool_calculat {
		cal_pool {Type I LastRead 4 FirstWrite -1}}
	pool_line_buffer_shi {
		data {Type I LastRead 3 FirstWrite -1}
		cal_pool {Type IO LastRead 2 FirstWrite 1}
		pool_line_buffer {Type IO LastRead 3 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14617", "Max" : "17113"}
	, {"Name" : "Interval", "Min" : "14618", "Max" : "17114"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgtotal { ap_memory {  { imgtotal_address0 mem_address 1 10 }  { imgtotal_ce0 mem_ce 1 1 }  { imgtotal_q0 mem_dout 0 32 }  { imgtotal_address1 MemPortADDR2 1 10 }  { imgtotal_ce1 MemPortCE2 1 1 }  { imgtotal_q1 MemPortDOUT2 0 32 } } }
	weitotal { ap_memory {  { weitotal_address0 mem_address 1 8 }  { weitotal_ce0 mem_ce 1 1 }  { weitotal_q0 mem_dout 0 32 }  { weitotal_address1 MemPortADDR2 1 8 }  { weitotal_ce1 MemPortCE2 1 1 }  { weitotal_q1 MemPortDOUT2 0 32 } } }
	outtotal { ap_memory {  { outtotal_address0 mem_address 1 4 }  { outtotal_ce0 mem_ce 1 1 }  { outtotal_we0 mem_we 1 1 }  { outtotal_d0 mem_din 1 32 } } }
}

set busDeadlockParameterList { 
}

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
