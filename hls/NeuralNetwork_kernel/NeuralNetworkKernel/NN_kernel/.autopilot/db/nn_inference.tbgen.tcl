set moduleName nn_inference
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nn_inference}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_img int 32 regular {array 1620 { 1 } 1 1 }  }
	{ output_r int 32 regular {array 2 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_img", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_img","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ input_img_address0 sc_out sc_lv 11 signal 0 } 
	{ input_img_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_img_q0 sc_in sc_lv 32 signal 0 } 
	{ output_r_address0 sc_out sc_lv 1 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 32 signal 1 } 
	{ s_axi_AXI_CPU_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_CPU_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXI_CPU_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_CPU_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_CPU_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXI_CPU_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXI_CPU_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXI_CPU_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWADDR" },"address":[{"name":"nn_inference","role":"start","value":"0","valid_bit":"0"},{"name":"nn_inference","role":"continue","value":"0","valid_bit":"4"},{"name":"nn_inference","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXI_CPU_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWVALID" } },
	{ "name": "s_axi_AXI_CPU_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWREADY" } },
	{ "name": "s_axi_AXI_CPU_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WVALID" } },
	{ "name": "s_axi_AXI_CPU_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WREADY" } },
	{ "name": "s_axi_AXI_CPU_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WDATA" } },
	{ "name": "s_axi_AXI_CPU_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WSTRB" } },
	{ "name": "s_axi_AXI_CPU_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "ARADDR" },"address":[{"name":"nn_inference","role":"start","value":"0","valid_bit":"0"},{"name":"nn_inference","role":"done","value":"0","valid_bit":"1"},{"name":"nn_inference","role":"idle","value":"0","valid_bit":"2"},{"name":"nn_inference","role":"ready","value":"0","valid_bit":"3"},{"name":"nn_inference","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXI_CPU_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "ARVALID" } },
	{ "name": "s_axi_AXI_CPU_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "ARREADY" } },
	{ "name": "s_axi_AXI_CPU_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "RVALID" } },
	{ "name": "s_axi_AXI_CPU_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "RREADY" } },
	{ "name": "s_axi_AXI_CPU_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "RDATA" } },
	{ "name": "s_axi_AXI_CPU_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "RRESP" } },
	{ "name": "s_axi_AXI_CPU_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "BVALID" } },
	{ "name": "s_axi_AXI_CPU_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "BREADY" } },
	{ "name": "s_axi_AXI_CPU_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_img_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "input_img", "role": "address0" }} , 
 	{ "name": "input_img_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_img", "role": "ce0" }} , 
 	{ "name": "input_img_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_img", "role": "q0" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "23", "47", "53", "59", "65", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "nn_inference",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer10_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_mat_mul_3_fu_4606", "Port" : "layer10_weights"}]},
			{"Name" : "layer9_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_mat_mul_2_fu_4598", "Port" : "layer9_weights"}]},
			{"Name" : "layer8_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_mat_mul_1_fu_4590", "Port" : "layer8_weights"}]},
			{"Name" : "layer7_weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_mat_mul_fu_4582", "Port" : "layer7_weights"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXI_CPU_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_conv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_pool_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fully_connected_in_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "applySingleKernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "arr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "w", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.fadd_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.fadd_32ns_32ns_32_5_full_dsp_1_U2", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.fmul_32ns_32ns_32_4_max_dsp_1_U3", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.fmul_32ns_32ns_32_4_max_dsp_1_U4", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U5", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U6", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U7", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U8", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U9", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U10", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U11", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U12", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U13", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U14", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U15", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_applySingleKernel_fu_4518.mul_mul_11s_6ns_11_4_1_U16", "Parent" : "6"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "maxPooling",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "arr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w", "Type" : "None", "Direction" : "I"},
			{"Name" : "h", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.fcmp_32ns_32ns_1_2_no_dsp_1_U33", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.fcmp_32ns_32ns_1_2_no_dsp_1_U34", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.urem_6ns_6ns_5_10_seq_1_U35", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U36", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U37", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U38", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U39", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U40", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U41", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U42", "Parent" : "23"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U43", "Parent" : "23"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U44", "Parent" : "23"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U45", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U46", "Parent" : "23"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U47", "Parent" : "23"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U48", "Parent" : "23"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U49", "Parent" : "23"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U50", "Parent" : "23"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U51", "Parent" : "23"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U52", "Parent" : "23"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U53", "Parent" : "23"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U54", "Parent" : "23"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_maxPooling_fu_4568.mul_mul_11s_6ns_11_4_1_U55", "Parent" : "23"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_fu_4582", "Parent" : "0", "Child" : ["48", "49", "50", "51", "52"],
		"CDFG" : "mat_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "585", "EstimateLatencyMax" : "585",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer7_weights", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_fu_4582.layer7_weights_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_fu_4582.facc_32ns_32ns_1ns_32_3_no_dsp_1_U63", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_fu_4582.facc_32ns_32ns_1ns_32_3_no_dsp_1_U64", "Parent" : "47"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_fu_4582.facc_32ns_32ns_1ns_32_3_no_dsp_1_U65", "Parent" : "47"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_fu_4582.facc_32ns_32ns_1ns_32_3_no_dsp_1_U66", "Parent" : "47"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_1_fu_4590", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58"],
		"CDFG" : "mat_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1289", "EstimateLatencyMax" : "1289",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer8_weights", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_1_fu_4590.layer8_weights_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_1_fu_4590.facc_32ns_32ns_1ns_32_3_no_dsp_1_U72", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_1_fu_4590.facc_32ns_32ns_1ns_32_3_no_dsp_1_U73", "Parent" : "53"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_1_fu_4590.facc_32ns_32ns_1ns_32_3_no_dsp_1_U74", "Parent" : "53"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_1_fu_4590.facc_32ns_32ns_1ns_32_3_no_dsp_1_U75", "Parent" : "53"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_2_fu_4598", "Parent" : "0", "Child" : ["60", "61", "62", "63", "64"],
		"CDFG" : "mat_mul_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "323", "EstimateLatencyMax" : "323",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer9_weights", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_2_fu_4598.layer9_weights_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_2_fu_4598.facc_32ns_32ns_1ns_32_3_no_dsp_1_U80", "Parent" : "59"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_2_fu_4598.facc_32ns_32ns_1ns_32_3_no_dsp_1_U81", "Parent" : "59"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_2_fu_4598.facc_32ns_32ns_1ns_32_3_no_dsp_1_U82", "Parent" : "59"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_2_fu_4598.facc_32ns_32ns_1ns_32_3_no_dsp_1_U83", "Parent" : "59"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_3_fu_4606", "Parent" : "0", "Child" : ["66", "67", "68"],
		"CDFG" : "mat_mul_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer10_weights", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_3_fu_4606.layer10_weights_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_3_fu_4606.facc_32ns_32ns_1ns_32_3_no_dsp_1_U88", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mat_mul_3_fu_4606.facc_32ns_32ns_1ns_32_3_no_dsp_1_U89", "Parent" : "65"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U93", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U94", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U95", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U96", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U97", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U98", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nn_inference {
		input_img {Type I LastRead 1 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 1074}
		layer10_weights {Type I LastRead -1 FirstWrite -1}
		layer9_weights {Type I LastRead -1 FirstWrite -1}
		layer8_weights {Type I LastRead -1 FirstWrite -1}
		layer7_weights {Type I LastRead -1 FirstWrite -1}}
	applySingleKernel {
		arr {Type I LastRead 55 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		w {Type I LastRead 0 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 59}}
	maxPooling {
		arr {Type I LastRead 64 FirstWrite -1}
		w {Type I LastRead 9 FirstWrite -1}
		h {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 20}}
	mat_mul {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}
		layer7_weights {Type I LastRead -1 FirstWrite -1}}
	mat_mul_1 {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}
		layer8_weights {Type I LastRead -1 FirstWrite -1}}
	mat_mul_2 {
		input_r {Type I LastRead 8 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}
		layer9_weights {Type I LastRead -1 FirstWrite -1}}
	mat_mul_3 {
		input_r {Type I LastRead 3 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 2}
		layer10_weights {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_img { ap_memory {  { input_img_address0 mem_address 1 11 }  { input_img_ce0 mem_ce 1 1 }  { input_img_q0 mem_dout 0 32 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 1 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 32 } } }
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
