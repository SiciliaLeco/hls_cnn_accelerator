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
	{ imgtotal int 32 regular {array 1024 { 1 3 } 1 1 }  }
	{ weitotal int 32 regular {array 144 { 1 3 } 1 1 }  }
	{ outtotal int 32 regular {array 9 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgtotal", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "imgtotal","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "weitotal", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "weitotal","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 143,"step" : 1}]}]}]} , 
 	{ "Name" : "outtotal", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outtotal","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 8,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
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
	{ weitotal_address0 sc_out sc_lv 8 signal 1 } 
	{ weitotal_ce0 sc_out sc_logic 1 signal 1 } 
	{ weitotal_q0 sc_in sc_lv 32 signal 1 } 
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
 	{ "name": "weitotal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weitotal", "role": "address0" }} , 
 	{ "name": "weitotal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weitotal", "role": "ce0" }} , 
 	{ "name": "weitotal_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weitotal", "role": "q0" }} , 
 	{ "name": "outtotal_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outtotal", "role": "address0" }} , 
 	{ "name": "outtotal_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outtotal", "role": "ce0" }} , 
 	{ "name": "outtotal_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outtotal", "role": "we0" }} , 
 	{ "name": "outtotal_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outtotal", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "single_conv_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69641", "EstimateLatencyMax" : "202481",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state78", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state98", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state118", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state121", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state138", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state141", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state158", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state161", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state178", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state181", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state198", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state201", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state218", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state221", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state238", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state241", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state258", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state261", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state278", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state281", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state298", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state301", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state318", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state321", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state76", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state96", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state119", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state116", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state139", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state136", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state159", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state156", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state179", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state176", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state199", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state196", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state219", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state216", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state239", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state236", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state259", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state256", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state279", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state276", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state299", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state296", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state319", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"},
			{"State" : "ap_ST_fsm_state316", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_single_conv_calculat_fu_4557"}],
		"Port" : [
			{"Name" : "imgtotal", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weitotal", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outtotal", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cal_conv", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_single_conv_calculat_fu_4557", "Port" : "cal_conv"},
					{"ID" : "7", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547", "Port" : "cal_conv"}]},
			{"Name" : "conv_line_buffer", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_conv_line_buffer_shi_fu_4547", "Port" : "conv_line_buffer"}]},
			{"Name" : "kernel", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_single_conv_calculat_fu_4557", "Port" : "kernel"}]},
			{"Name" : "cal_pool_0_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_pool_0_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_pool_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cal_pool_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pool_line_buffer", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cal_conv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_line_buffer_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_line_buffer_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_output_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_line_buffer_shi_fu_4547", "Parent" : "0",
		"CDFG" : "conv_line_buffer_shi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_line_buffer", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cal_conv", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_single_conv_calculat_fu_4557", "Parent" : "0",
		"CDFG" : "single_conv_calculat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "43", "EstimateLatencyMax" : "43",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cal_conv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	single_conv_test {
		imgtotal {Type I LastRead 77 FirstWrite -1}
		weitotal {Type I LastRead 78 FirstWrite -1}
		outtotal {Type O LastRead -1 FirstWrite 90}
		cal_conv {Type IO LastRead -1 FirstWrite -1}
		conv_line_buffer {Type IO LastRead -1 FirstWrite -1}
		kernel {Type IO LastRead -1 FirstWrite -1}
		cal_pool_0_0 {Type IO LastRead -1 FirstWrite -1}
		cal_pool_0_1 {Type IO LastRead -1 FirstWrite -1}
		cal_pool_1_0 {Type IO LastRead -1 FirstWrite -1}
		cal_pool_1_1 {Type IO LastRead -1 FirstWrite -1}
		pool_line_buffer {Type IO LastRead -1 FirstWrite -1}}
	conv_line_buffer_shi {
		data {Type I LastRead 1 FirstWrite -1}
		conv_line_buffer {Type IO LastRead 4 FirstWrite 4}
		cal_conv {Type IO LastRead 4 FirstWrite 4}}
	single_conv_calculat {
		cal_conv {Type I LastRead 2 FirstWrite -1}
		kernel {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "69641", "Max" : "202481"}
	, {"Name" : "Interval", "Min" : "69642", "Max" : "202482"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgtotal { ap_memory {  { imgtotal_address0 mem_address 1 10 }  { imgtotal_ce0 mem_ce 1 1 }  { imgtotal_q0 mem_dout 0 32 } } }
	weitotal { ap_memory {  { weitotal_address0 mem_address 1 8 }  { weitotal_ce0 mem_ce 1 1 }  { weitotal_q0 mem_dout 0 32 } } }
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
