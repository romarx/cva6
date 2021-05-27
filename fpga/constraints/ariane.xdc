## Common Ariane XDCs

create_clock -period 100.000 -name tck -waveform {0.000 50.000} [get_ports tck]
set_input_jitter tck 1.000

# minimize routing delay
set_input_delay  -clock tck -clock_fall 5 [get_ports tdi    ]
set_input_delay  -clock tck -clock_fall 5 [get_ports tms    ]
set_output_delay -clock tck             5 [get_ports tdo    ]
set_false_path   -from                    [get_ports trst_n ] 


set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_src/data_src_q_reg*/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_dst/data_dst_q_reg*/D] 20.000
set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_src/req_src_q_reg/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_dst/req_dst_q_reg/D] 20.000
set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_req/i_dst/ack_dst_q_reg/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_req/i_src/ack_src_q_reg/D] 20.000

# set multicycle path on reset, on the FPGA we do not care about the reset anyway
set_multicycle_path -from [get_pins i_rstgen_main/i_rstgen_bypass/synch_regs_q_reg[3]/C] 4
set_multicycle_path -from [get_pins i_rstgen_main/i_rstgen_bypass/synch_regs_q_reg[3]/C] 3  -hold

set_multicycle_path -from [get_pins i_rstgen_paper_clk/i_rstgen_bypass/synch_regs_q_reg[3]/C] 4
set_multicycle_path -from [get_pins i_rstgen_paper_clk/i_rstgen_bypass/synch_regs_q_reg[3]/C] 3  -hold

set_multicycle_path -from [get_pins i_rstgen_pxclk/i_rstgen_bypass/synch_regs_q_reg[3]/C] 4
set_multicycle_path -from [get_pins i_rstgen_pxclk/i_rstgen_bypass/synch_regs_q_reg[3]/C] 3  -hold



# name pixel clock, paper_bus_clk and system clock for easier identification
create_generated_clock -name px_clk -source [get_pins i_ariane_peripherals/gen_clkgen.i_xlnx_px_clk_gen/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKIN1] -master_clock i_ariane_peripherals/gen_clkgen.i_xlnx_px_clk_gen/inst/clk_in1 [get_pins i_ariane_peripherals/gen_clkgen.i_xlnx_px_clk_gen/inst/CLK_CORE_DRP_I/clk_inst/mmcm_adv_inst/CLKOUT0]
create_generated_clock -name p_bus_clk -source [get_pins i_xlnx_clk_gen/inst/mmcm_adv_inst/CLKIN1] -master_clock i_xlnx_clk_gen/inst/clk_in1 [get_pins i_xlnx_clk_gen/inst/mmcm_adv_inst/CLKOUT4]
create_generated_clock -name sys_clk -source [get_pins i_xlnx_clk_gen/inst/mmcm_adv_inst/CLKIN1] -master_clock i_xlnx_clk_gen/inst/clk_in1 [get_pins i_xlnx_clk_gen/inst/mmcm_adv_inst/CLKOUT0]

# cdc_fifo_gray for pixel output
set_property DONT_TOUCH true [get_cells -hierarchical *Streamer_i*]

set_bus_skew -from [get_clocks  px_clk] -through [get_nets -filter { NAME =~  "*DCFIFOInp_i*" } -of_objects [get_cells -hierarchical -filter { NAME =~  "*Streamer_i*" } ]] -to [get_clocks p_bus_clk] [get_property PERIOD [get_clocks p_bus_clk]]
set_bus_skew -from [get_clocks  p_bus_clk] -through [get_nets -filter { NAME =~  "*DCFIFOInp_i*" } -of_objects [get_cells -hierarchical -filter { NAME =~  "*Streamer_i*" } ]] -to [get_clocks px_clk] [get_property PERIOD [get_clocks p_bus_clk]]

set_max_delay -from [get_clocks px_clk] -through [get_nets -filter { NAME =~  "*DCFIFOInp_i*" } -of_objects [get_cells -hierarchical -filter { NAME =~  "*Streamer_i*" } ]] -to [get_clocks p_bus_clk] [get_property PERIOD [get_clocks p_bus_clk]]
set_max_delay -from [get_clocks p_bus_clk] -through [get_nets -filter { NAME =~  "*DCFIFOInp_i*" } -of_objects [get_cells -hierarchical -filter { NAME =~  "*Streamer_i*" } ]] -to [get_clocks px_clk] [get_property PERIOD [get_clocks p_bus_clk]]

set_false_path -from [get_clocks px_clk] -through [get_nets -filter { NAME =~  "*DCFIFOInp_i*" } -of_objects [get_cells -hierarchical -filter { NAME =~  "*Streamer_i*" } ]] -to [get_clocks p_bus_clk] -hold
set_false_path -from [get_clocks p_bus_clk] -through [get_nets -filter { NAME =~  "*DCFIFOInp_i*" } -of_objects [get_cells -hierarchical -filter { NAME =~  "*Streamer_i*" } ]] -to [get_clocks px_clk] -hold

set_false_path -from [get_clocks px_clk] -through [get_nets -filter { NAME =~  "*DCFIFOInp_i*" } -of_objects [get_cells -hierarchical -filter { NAME =~  "*Streamer_i*" } ]] -to [get_clocks p_bus_clk] -setup
set_false_path -from [get_clocks p_bus_clk] -through [get_nets -filter { NAME =~  "*DCFIFOInp_i*" } -of_objects [get_cells -hierarchical -filter { NAME =~  "*Streamer_i*" } ]] -to [get_clocks px_clk] -setup

# axi_cdc fifos
set_property DONT_TOUCH true [get_cells -hierarchical *i_axi_cdc_paper*]

set_bus_skew -from [get_clocks  p_bus_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_paper*" } ]] -to [get_clocks sys_clk] [get_property PERIOD [get_clocks p_bus_clk]]
set_bus_skew -from [get_clocks  sys_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_paper*" } ]] -to [get_clocks p_bus_clk] [get_property PERIOD [get_clocks p_bus_clk]]

set_max_delay -from [get_clocks p_bus_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_paper*" } ]] -to [get_clocks sys_clk] [get_property PERIOD [get_clocks p_bus_clk]]
set_max_delay -from [get_clocks sys_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_paper*" } ]] -to [get_clocks p_bus_clk] [get_property PERIOD [get_clocks p_bus_clk]]

set_false_path -from [get_clocks p_bus_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_paper*" } ]] -to [get_clocks sys_clk] -hold
set_false_path -from [get_clocks sys_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_paper*" } ]] -to [get_clocks p_bus_clk] -hold

set_false_path -from [get_clocks p_bus_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_paper*" } ]] -to [get_clocks sys_clk] -setup
set_false_path -from [get_clocks sys_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_paper*" } ]] -to [get_clocks p_bus_clk] -setup

set_property DONT_TOUCH true [get_cells -hierarchical *i_axi_cdc_dram*]

set_bus_skew -from [get_clocks  p_bus_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_dram*" } ]] -to [get_clocks sys_clk] [get_property PERIOD [get_clocks p_bus_clk]]
set_bus_skew -from [get_clocks  sys_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_dram*" } ]] -to [get_clocks p_bus_clk] [get_property PERIOD [get_clocks p_bus_clk]]

set_max_delay -from [get_clocks p_bus_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_dram*" } ]] -to [get_clocks sys_clk] [get_property PERIOD [get_clocks p_bus_clk]]
set_max_delay -from [get_clocks sys_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_dram*" } ]] -to [get_clocks p_bus_clk] [get_property PERIOD [get_clocks p_bus_clk]]

set_false_path -from [get_clocks p_bus_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_dram*" } ]] -to [get_clocks sys_clk] -hold
set_false_path -from [get_clocks sys_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_dram*" } ]] -to [get_clocks p_bus_clk] -hold

set_false_path -from [get_clocks p_bus_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_dram*" } ]] -to [get_clocks sys_clk] -setup
set_false_path -from [get_clocks sys_clk] -through [get_nets  -filter { NAME =~  "*i_cdc_fifo_gray*" }  -of_objects [get_cells -hierarchical -filter { NAME =~  "*i_axi_cdc_dram*" } ]] -to [get_clocks p_bus_clk] -setup