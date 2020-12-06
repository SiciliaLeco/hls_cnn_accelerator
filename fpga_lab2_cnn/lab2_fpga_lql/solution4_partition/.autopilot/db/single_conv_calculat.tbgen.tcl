set moduleName single_conv_calculat
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 1
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {single_conv_calculat}
set C_modelType { int 32 }
set C_modelArgList {
	{ cal_conv_0_0 int 32 regular {pointer 0} {global 0}  }
	{ kernel_0_0 int 32 regular {pointer 0} {global 0}  }
	{ cal_conv_0_1 int 32 regular {pointer 0} {global 0}  }
	{ kernel_0_1 int 32 regular {pointer 0} {global 0}  }
	{ cal_conv_0_2 int 32 regular {pointer 0} {global 0}  }
	{ kernel_0_2 int 32 regular {pointer 0} {global 0}  }
	{ cal_conv_1_0 int 32 regular {pointer 0} {global 0}  }
	{ kernel_1_0 int 32 regular {pointer 0} {global 0}  }
	{ cal_conv_1_1 int 32 regular {pointer 0} {global 0}  }
	{ kernel_1_1 int 32 regular {pointer 0} {global 0}  }
	{ cal_conv_1_2 int 32 regular {pointer 0} {global 0}  }
	{ kernel_1_2 int 32 regular {pointer 0} {global 0}  }
	{ cal_conv_2_0 int 32 regular {pointer 0} {global 0}  }
	{ kernel_2_0 int 32 regular {pointer 0} {global 0}  }
	{ cal_conv_2_1 int 32 regular {pointer 0} {global 0}  }
	{ kernel_2_1 int 32 regular {pointer 0} {global 0}  }
	{ cal_conv_2_2 int 32 regular {pointer 0} {global 0}  }
	{ kernel_2_2 int 32 regular {pointer 0} {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cal_conv_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv_0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv_0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv_1_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_1_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv_1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv_1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv_2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv_2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv_2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "kernel_2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 2,"up" : 2,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ cal_conv_0_0 sc_in sc_lv 32 signal 0 } 
	{ kernel_0_0 sc_in sc_lv 32 signal 1 } 
	{ cal_conv_0_1 sc_in sc_lv 32 signal 2 } 
	{ kernel_0_1 sc_in sc_lv 32 signal 3 } 
	{ cal_conv_0_2 sc_in sc_lv 32 signal 4 } 
	{ kernel_0_2 sc_in sc_lv 32 signal 5 } 
	{ cal_conv_1_0 sc_in sc_lv 32 signal 6 } 
	{ kernel_1_0 sc_in sc_lv 32 signal 7 } 
	{ cal_conv_1_1 sc_in sc_lv 32 signal 8 } 
	{ kernel_1_1 sc_in sc_lv 32 signal 9 } 
	{ cal_conv_1_2 sc_in sc_lv 32 signal 10 } 
	{ kernel_1_2 sc_in sc_lv 32 signal 11 } 
	{ cal_conv_2_0 sc_in sc_lv 32 signal 12 } 
	{ kernel_2_0 sc_in sc_lv 32 signal 13 } 
	{ cal_conv_2_1 sc_in sc_lv 32 signal 14 } 
	{ kernel_2_1 sc_in sc_lv 32 signal 15 } 
	{ cal_conv_2_2 sc_in sc_lv 32 signal 16 } 
	{ kernel_2_2 sc_in sc_lv 32 signal 17 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "cal_conv_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_0_0", "role": "default" }} , 
 	{ "name": "kernel_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_0_0", "role": "default" }} , 
 	{ "name": "cal_conv_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_0_1", "role": "default" }} , 
 	{ "name": "kernel_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_0_1", "role": "default" }} , 
 	{ "name": "cal_conv_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_0_2", "role": "default" }} , 
 	{ "name": "kernel_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_0_2", "role": "default" }} , 
 	{ "name": "cal_conv_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_1_0", "role": "default" }} , 
 	{ "name": "kernel_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_1_0", "role": "default" }} , 
 	{ "name": "cal_conv_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_1_1", "role": "default" }} , 
 	{ "name": "kernel_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_1_1", "role": "default" }} , 
 	{ "name": "cal_conv_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_1_2", "role": "default" }} , 
 	{ "name": "kernel_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_1_2", "role": "default" }} , 
 	{ "name": "cal_conv_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_2_0", "role": "default" }} , 
 	{ "name": "kernel_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_2_0", "role": "default" }} , 
 	{ "name": "cal_conv_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_2_1", "role": "default" }} , 
 	{ "name": "kernel_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_2_1", "role": "default" }} , 
 	{ "name": "cal_conv_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv_2_2", "role": "default" }} , 
 	{ "name": "kernel_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_2_2", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "kernel_2_2", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		kernel_2_2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	cal_conv_0_0 { ap_none {  { cal_conv_0_0 in_data 0 32 } } }
	kernel_0_0 { ap_none {  { kernel_0_0 in_data 0 32 } } }
	cal_conv_0_1 { ap_none {  { cal_conv_0_1 in_data 0 32 } } }
	kernel_0_1 { ap_none {  { kernel_0_1 in_data 0 32 } } }
	cal_conv_0_2 { ap_none {  { cal_conv_0_2 in_data 0 32 } } }
	kernel_0_2 { ap_none {  { kernel_0_2 in_data 0 32 } } }
	cal_conv_1_0 { ap_none {  { cal_conv_1_0 in_data 0 32 } } }
	kernel_1_0 { ap_none {  { kernel_1_0 in_data 0 32 } } }
	cal_conv_1_1 { ap_none {  { cal_conv_1_1 in_data 0 32 } } }
	kernel_1_1 { ap_none {  { kernel_1_1 in_data 0 32 } } }
	cal_conv_1_2 { ap_none {  { cal_conv_1_2 in_data 0 32 } } }
	kernel_1_2 { ap_none {  { kernel_1_2 in_data 0 32 } } }
	cal_conv_2_0 { ap_none {  { cal_conv_2_0 in_data 0 32 } } }
	kernel_2_0 { ap_none {  { kernel_2_0 in_data 0 32 } } }
	cal_conv_2_1 { ap_none {  { cal_conv_2_1 in_data 0 32 } } }
	kernel_2_1 { ap_none {  { kernel_2_1 in_data 0 32 } } }
	cal_conv_2_2 { ap_none {  { cal_conv_2_2 in_data 0 32 } } }
	kernel_2_2 { ap_none {  { kernel_2_2 in_data 0 32 } } }
}
