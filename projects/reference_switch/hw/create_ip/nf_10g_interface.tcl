
create_ip -name nf10_axis_converter -vendor NetFPGA -library NetFPGA -module_name nf10_axis_converter_master
set_property -dict [list CONFIG.C_M_AXIS_DATA_WIDTH {256}] [get_ips nf10_axis_converter_master]
set_property -dict [list CONFIG.C_S_AXIS_DATA_WIDTH {64}] [get_ips nf10_axis_converter_master]
set_property -dict [list CONFIG.C_DEFAULT_SRC_PORT {0}] [get_ips nf10_axis_converter_master]
set_property -dict [list CONFIG.C_DEFAULT_DST_PORT {0}] [get_ips nf10_axis_converter_master]
set_property -dict [list CONFIG.C_DEFAULT_VALUE_ENABLE {0}] [get_ips nf10_axis_converter_master]
set_property generate_synth_checkpoint false [get_files nf10_axis_converter_master.xci]
reset_target all [get_ips converter_master]
generate_target all [get_ips converter_master]


create_ip -name nf10_axis_converter -vendor NetFPGA -library NetFPGA -module_name nf10_axis_converter_slave
set_property -dict [list CONFIG.C_M_AXIS_DATA_WIDTH {64}] [get_ips nf10_axis_converter_slave]
set_property -dict [list CONFIG.C_S_AXIS_DATA_WIDTH {256}] [get_ips nf10_axis_converter_slave]
set_property -dict [list CONFIG.C_DEFAULT_SRC_PORT {0}] [get_ips nf10_axis_converter_slave]
set_property -dict [list CONFIG.C_DEFAULT_DST_PORT {0}] [get_ips nf10_axis_converter_slave]
set_property -dict [list CONFIG.C_DEFAULT_VALUE_ENABLE {0}] [get_ips nf10_axis_converter_slave]
set_property generate_synth_checkpoint false [get_files nf10_axis_converter_slave.xci]
reset_target all [get_ips converter_slave]
generate_target all [get_ips converter_slave]
