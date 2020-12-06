set moduleName pool_line_buffer_shi
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pool_line_buffer_shi}
set C_modelType { void 0 }
set C_modelArgList {
	{ data int 32 regular  }
	{ cal_pool int 0 regular {array 2 { 2 2 } 1 1 } {global 2}  }
	{ pool_line_buffer int 32 regular {array 6 { 2 2 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cal_pool", "interface" : "memory", "bitwidth" : 0, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cal_pool","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1},{"low" : 0,"up" : 1,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "pool_line_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "pool_line_buffer","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data sc_in sc_lv 32 signal 0 } 
	{ cal_pool_address0 sc_out sc_lv 1 signal 1 } 
	{ cal_pool_ce0 sc_out sc_logic 1 signal 1 } 
	{ cal_pool_we0 sc_out sc_logic 1 signal 1 } 
	{ cal_pool_d0 sc_out sc_lv 0 signal 1 } 
	{ cal_pool_q0 sc_in sc_lv 0 signal 1 } 
	{ cal_pool_address1 sc_out sc_lv 1 signal 1 } 
	{ cal_pool_ce1 sc_out sc_logic 1 signal 1 } 
	{ cal_pool_we1 sc_out sc_logic 1 signal 1 } 
	{ cal_pool_d1 sc_out sc_lv 0 signal 1 } 
	{ cal_pool_q1 sc_in sc_lv 0 signal 1 } 
	{ pool_line_buffer_address0 sc_out sc_lv 3 signal 2 } 
	{ pool_line_buffer_ce0 sc_out sc_logic 1 signal 2 } 
	{ pool_line_buffer_we0 sc_out sc_logic 1 signal 2 } 
	{ pool_line_buffer_d0 sc_out sc_lv 32 signal 2 } 
	{ pool_line_buffer_q0 sc_in sc_lv 32 signal 2 } 
	{ pool_line_buffer_address1 sc_out sc_lv 3 signal 2 } 
	{ pool_line_buffer_ce1 sc_out sc_logic 1 signal 2 } 
	{ pool_line_buffer_we1 sc_out sc_logic 1 signal 2 } 
	{ pool_line_buffer_d1 sc_out sc_lv 32 signal 2 } 
	{ pool_line_buffer_q1 sc_in sc_lv 32 signal 2 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "default" }} , 
 	{ "name": "cal_pool_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_pool", "role": "address0" }} , 
 	{ "name": "cal_pool_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_pool", "role": "ce0" }} , 
 	{ "name": "cal_pool_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_pool", "role": "we0" }} , 
 	{ "name": "cal_pool_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":0, "type": "signal", "bundle":{"name": "cal_pool", "role": "d0" }} , 
 	{ "name": "cal_pool_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":0, "type": "signal", "bundle":{"name": "cal_pool", "role": "q0" }} , 
 	{ "name": "cal_pool_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_pool", "role": "address1" }} , 
 	{ "name": "cal_pool_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_pool", "role": "ce1" }} , 
 	{ "name": "cal_pool_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cal_pool", "role": "we1" }} , 
 	{ "name": "cal_pool_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":0, "type": "signal", "bundle":{"name": "cal_pool", "role": "d1" }} , 
 	{ "name": "cal_pool_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":0, "type": "signal", "bundle":{"name": "cal_pool", "role": "q1" }} , 
 	{ "name": "pool_line_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "address0" }} , 
 	{ "name": "pool_line_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "ce0" }} , 
 	{ "name": "pool_line_buffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "we0" }} , 
 	{ "name": "pool_line_buffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "d0" }} , 
 	{ "name": "pool_line_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "q0" }} , 
 	{ "name": "pool_line_buffer_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "address1" }} , 
 	{ "name": "pool_line_buffer_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "ce1" }} , 
 	{ "name": "pool_line_buffer_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "we1" }} , 
 	{ "name": "pool_line_buffer_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "d1" }} , 
 	{ "name": "pool_line_buffer_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool_line_buffer", "role": "q1" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
	pool_line_buffer_shi {
		data {Type I LastRead 3 FirstWrite -1}
		cal_pool {Type IO LastRead 2 FirstWrite 1}
		pool_line_buffer {Type IO LastRead 3 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data { ap_none {  { data in_data 0 32 } } }
	cal_pool { ap_memory {  { cal_pool_address0 mem_address 1 1 }  { cal_pool_ce0 mem_ce 1 1 }  { cal_pool_we0 mem_we 1 1 }  { cal_pool_d0 mem_din 1 0 }  { cal_pool_q0 mem_dout 0 0 }  { cal_pool_address1 MemPortADDR2 1 1 }  { cal_pool_ce1 MemPortCE2 1 1 }  { cal_pool_we1 MemPortWE2 1 1 }  { cal_pool_d1 MemPortDIN2 1 0 }  { cal_pool_q1 MemPortDOUT2 0 0 } } }
	pool_line_buffer { ap_memory {  { pool_line_buffer_address0 mem_address 1 3 }  { pool_line_buffer_ce0 mem_ce 1 1 }  { pool_line_buffer_we0 mem_we 1 1 }  { pool_line_buffer_d0 mem_din 1 32 }  { pool_line_buffer_q0 mem_dout 0 32 }  { pool_line_buffer_address1 MemPortADDR2 1 3 }  { pool_line_buffer_ce1 MemPortCE2 1 1 }  { pool_line_buffer_we1 MemPortWE2 1 1 }  { pool_line_buffer_d1 MemPortDIN2 1 32 }  { pool_line_buffer_q1 MemPortDOUT2 0 32 } } }
}
