set partNumber $::env(XILINX_PART)
set boardName  $::env(XILINX_BOARD)

set ipName xlnx_px_clk_gen

create_project $ipName . -force -part $partNumber
set_property board_part $boardName [current_project]

create_ip -name clk_wiz -vendor xilinx.com -library ip -module_name $ipName

set_property -dict [list CONFIG.PRIM_IN_FREQ {200.000} \
			CONFIG.USE_DYN_RECONFIG {true} \
                        CONFIG.NUM_OUT_CLKS {2} \
                        CONFIG.CLKOUT2_USED {true} \
                        CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {119} \
                        CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {595} \
                       ] [get_ips $ipName]

generate_target {instantiation_template} [get_files ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]
generate_target all [get_files  ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]
create_ip_run [get_files -of_objects [get_fileset sources_1] ./$ipName.srcs/sources_1/ip/$ipName/$ipName.xci]
launch_run -jobs 8 ${ipName}_synth_1
wait_on_run ${ipName}_synth_1
