# TCL File Generated by Component Editor 15.1
# Fri Apr 01 14:19:08 PDT 2016
# DO NOT MODIFY


# 
# acp_test "acp test module" v1.0
#  2016.04.01.14:19:08
# 
# 

# 
# request TCL package from ACDS 15.1
# 
package require -exact qsys 15.1


# 
# module acp_test
# 
set_module_property DESCRIPTION ""
set_module_property NAME acp_test
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME "acp test module"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL acp_top
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file acp_top.v VERILOG PATH rtl/acp_top.v TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL acp_top
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file acp_top.v VERILOG PATH rtl/acp_top.v


# 
# parameters
# 
add_parameter ADDRESS_WIDTH INTEGER 32
set_parameter_property ADDRESS_WIDTH DEFAULT_VALUE 32
set_parameter_property ADDRESS_WIDTH DISPLAY_NAME ADDRESS_WIDTH
set_parameter_property ADDRESS_WIDTH TYPE INTEGER
set_parameter_property ADDRESS_WIDTH ENABLED false
set_parameter_property ADDRESS_WIDTH UNITS None
set_parameter_property ADDRESS_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ADDRESS_WIDTH HDL_PARAMETER true
add_parameter ID_WIDTH INTEGER 1
set_parameter_property ID_WIDTH DEFAULT_VALUE 1
set_parameter_property ID_WIDTH DISPLAY_NAME ID_WIDTH
set_parameter_property ID_WIDTH TYPE INTEGER
set_parameter_property ID_WIDTH ENABLED false
set_parameter_property ID_WIDTH UNITS None
set_parameter_property ID_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property ID_WIDTH HDL_PARAMETER true
add_parameter AXUSER_WIDTH INTEGER 5
set_parameter_property AXUSER_WIDTH DEFAULT_VALUE 5
set_parameter_property AXUSER_WIDTH DISPLAY_NAME AXUSER_WIDTH
set_parameter_property AXUSER_WIDTH TYPE INTEGER
set_parameter_property AXUSER_WIDTH ENABLED false
set_parameter_property AXUSER_WIDTH UNITS None
set_parameter_property AXUSER_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property AXUSER_WIDTH HDL_PARAMETER true
add_parameter DATA_WIDTH INTEGER 256
set_parameter_property DATA_WIDTH DEFAULT_VALUE 256
set_parameter_property DATA_WIDTH DISPLAY_NAME DATA_WIDTH
set_parameter_property DATA_WIDTH TYPE INTEGER
set_parameter_property DATA_WIDTH ENABLED false
set_parameter_property DATA_WIDTH UNITS None
set_parameter_property DATA_WIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property DATA_WIDTH HDL_PARAMETER true


# 
# display items
# 


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset sys_rst reset Input 1


# 
# connection point clk
# 
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk sys_clk clk Input 1


# 
# connection point axi_m
# 
add_interface axi_m axi start
set_interface_property axi_m associatedClock clk
set_interface_property axi_m associatedReset reset
set_interface_property axi_m readIssuingCapability 16
set_interface_property axi_m writeIssuingCapability 16
set_interface_property axi_m combinedIssuingCapability 16
set_interface_property axi_m ENABLED true
set_interface_property axi_m EXPORT_OF ""
set_interface_property axi_m PORT_NAME_MAP ""
set_interface_property axi_m CMSIS_SVD_VARIABLES ""
set_interface_property axi_m SVD_ADDRESS_GROUP ""

add_interface_port axi_m m_awvalid awvalid Output 1
add_interface_port axi_m m_awlen awlen Output 4
add_interface_port axi_m m_awsize awsize Output 3
add_interface_port axi_m m_awburst awburst Output 2
add_interface_port axi_m m_awlock awlock Output 2
add_interface_port axi_m m_awcache awcache Output 4
add_interface_port axi_m m_awprot awprot Output 3
add_interface_port axi_m m_awready awready Input 1
add_interface_port axi_m m_awuser awuser Output AXUSER_WIDTH
add_interface_port axi_m m_arvalid arvalid Output 1
add_interface_port axi_m m_arlen arlen Output 4
add_interface_port axi_m m_arsize arsize Output 3
add_interface_port axi_m m_arburst arburst Output 2
add_interface_port axi_m m_arlock arlock Output 2
add_interface_port axi_m m_arcache arcache Output 4
add_interface_port axi_m m_arprot arprot Output 3
add_interface_port axi_m m_arready arready Input 1
add_interface_port axi_m m_aruser aruser Output AXUSER_WIDTH
add_interface_port axi_m m_rvalid rvalid Input 1
add_interface_port axi_m m_rlast rlast Input 1
add_interface_port axi_m m_rresp rresp Input 2
add_interface_port axi_m m_rready rready Output 1
add_interface_port axi_m m_wvalid wvalid Output 1
add_interface_port axi_m m_wlast wlast Output 1
add_interface_port axi_m m_wready wready Input 1
add_interface_port axi_m m_bvalid bvalid Input 1
add_interface_port axi_m m_bresp bresp Input 2
add_interface_port axi_m m_bready bready Output 1
add_interface_port axi_m m_awaddr awaddr Output ADDRESS_WIDTH
add_interface_port axi_m m_awid awid Output ID_WIDTH
add_interface_port axi_m m_araddr araddr Output ADDRESS_WIDTH
add_interface_port axi_m m_arid arid Output ID_WIDTH
add_interface_port axi_m m_rdata rdata Input DATA_WIDTH
add_interface_port axi_m m_rid rid Input ID_WIDTH
add_interface_port axi_m m_wdata wdata Output DATA_WIDTH
add_interface_port axi_m m_wstrb wstrb Output DATA_WIDTH/8
add_interface_port axi_m m_wid wid Output ID_WIDTH
add_interface_port axi_m m_bid bid Input ID_WIDTH


# 
# connection point avs
# 
add_interface avs avalon end
set_interface_property avs addressUnits SYMBOLS
set_interface_property avs associatedClock clk
set_interface_property avs associatedReset reset
set_interface_property avs bitsPerSymbol 8
set_interface_property avs burstOnBurstBoundariesOnly false
set_interface_property avs burstcountUnits SYMBOLS
set_interface_property avs explicitAddressSpan 0
set_interface_property avs holdTime 0
set_interface_property avs linewrapBursts false
set_interface_property avs maximumPendingReadTransactions 0
set_interface_property avs maximumPendingWriteTransactions 0
set_interface_property avs readLatency 0
set_interface_property avs readWaitTime 1
set_interface_property avs setupTime 0
set_interface_property avs timingUnits Cycles
set_interface_property avs writeWaitTime 0
set_interface_property avs ENABLED true
set_interface_property avs EXPORT_OF ""
set_interface_property avs PORT_NAME_MAP ""
set_interface_property avs CMSIS_SVD_VARIABLES ""
set_interface_property avs SVD_ADDRESS_GROUP ""

add_interface_port avs avs_waitrequest waitrequest Output 1
#add_interface_port avs avs_readdatavalid readdatavalid Output 1
add_interface_port avs avs_readdata readdata Output 32
add_interface_port avs avs_writedata writedata Input 32
add_interface_port avs avs_write write Input 1
add_interface_port avs avs_read read Input 1
add_interface_port avs avs_address address Input 12
set_interface_assignment avs embeddedsw.configuration.isFlash 0
set_interface_assignment avs embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avs embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avs embeddedsw.configuration.isPrintableDevice 0

