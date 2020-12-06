set moduleName conv_line_buffer_shi
set isTopModule 0
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
set C_modelName {conv_line_buffer_shi}
set C_modelType { void 0 }
set C_modelArgList {
	{ data int 32 regular  }
	{ conv_line_buffer int 32 regular {array 16 { 2 3 } 1 1 } {global 2}  }
	{ cal_conv int 32 regular {array 9 { 2 2 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv_line_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "conv_line_buffer","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1},{"low" : 0,"up" : 7,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "cal_conv", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_conv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data sc_in sc_lv 32 signal 0 } 
	{ conv_line_buffer_address0 sc_out sc_lv 4 signal 1 } 
	{ conv_line_buffer_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv_line_buffer_we0 sc_out sc_logic 1 signal 1 } 
	{ conv_line_buffer_d0 sc_out sc_lv 32 signal 1 } 
	{ conv_line_buffer_q0 sc_in sc_lv 32 signal 1 } 
	{ cal_conv_address0 sc_out sc_lv 4 signal 2 } 
	{ cal_conv_ce0 sc_out sc_logic 1 signal 2 } 
	{ cal_conv_we0 sc_out sc_logic 1 signal 2 } 
	{ cal_conv_d0 sc_out sc_lv 32 signal 2 } 
	{ cal_conv_q0 sc_in sc_lv 32 signal 2 } 
	{ cal_conv_address1 sc_out sc_lv 4 signal 2 } 
	{ cal_conv_ce1 sc_out sc_logic 1 signal 2 } 
	{ cal_conv_we1 sc_out sc_logic 1 signal 2 } 
	{ cal_conv_d1 sc_out sc_lv 32 signal 2 } 
	{ cal_conv_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "default" }} , 
 	{ "name": "conv_line_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "conv_line_buffer", "role": "address0" }} , 
 	{ "name": "conv_line_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_line_buffer", "role": "ce0" }} , 
 	{ "name": "conv_line_buffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_line_buffer", "role": "we0" }} , 
 	{ "name": "conv_line_buffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_line_buffer", "role": "d0" }} , 
 	{ "name": "conv_line_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_line_buffer", "role": "q0" }} , 
 	{ "name": "cal_conv_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cal_conv", "role": "address0" }} , 
 	{ "name": "cal_conv_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_conv", "role": "ce0" }} , 
 	{ "name": "cal_conv_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_conv", "role": "we0" }} , 
 	{ "name": "cal_conv_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv", "role": "d0" }} , 
 	{ "name": "cal_conv_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv", "role": "q0" }} , 
 	{ "name": "cal_conv_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cal_conv", "role": "address1" }} , 
 	{ "name": "cal_conv_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_conv", "role": "ce1" }} , 
 	{ "name": "cal_conv_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_conv", "role": "we1" }} , 
 	{ "name": "cal_conv_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv", "role": "d1" }} , 
 	{ "name": "cal_conv_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cal_conv", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "cal_conv", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	conv_line_buffer_shi {
		data {Type I LastRead 1 FirstWrite -1}
		conv_line_buffer {Type IO LastRead 4 FirstWrite 4}
		cal_conv {Type IO LastRead 4 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data { ap_none {  { data in_data 0 32 } } }
	conv_line_buffer { ap_memory {  { conv_line_buffer_address0 mem_address 1 4 }  { conv_line_buffer_ce0 mem_ce 1 1 }  { conv_line_buffer_we0 mem_we 1 1 }  { conv_line_buffer_d0 mem_din 1 32 }  { conv_line_buffer_q0 mem_dout 0 32 } } }
	cal_conv { ap_memory {  { cal_conv_address0 mem_address 1 4 }  { cal_conv_ce0 mem_ce 1 1 }  { cal_conv_we0 mem_we 1 1 }  { cal_conv_d0 mem_din 1 32 }  { cal_conv_q0 mem_dout 0 32 }  { cal_conv_address1 MemPortADDR2 1 4 }  { cal_conv_ce1 MemPortCE2 1 1 }  { cal_conv_we1 MemPortWE2 1 1 }  { cal_conv_d1 MemPortDIN2 1 32 }  { cal_conv_q1 MemPortDOUT2 0 32 } } }
}
