module clkgen_xilinx #(
    parameter int AxiAddrWidth = -1,
    parameter int AxiDataWidth = -1,
    parameter int AxiIdWidth   = -1,
    parameter int AxiUserWidth = 1
) (
    input logic     axi_clk,
    input logic     axi_rst_n,
    AXI_BUS.Slave   axi_clkgen,
    input logic     test_en,
    input logic     clk_in1,
    output logic    clk_out1,
    output logic    clk_out2,
    output logic    clk_out3,
    output logic    clk_out4,
    output logic    clk_out5,
    output logic    clk_out6,
    output logic    clk_out7,
    output logic    locked
);

    AXI_BUS #(
        .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
        .AXI_DATA_WIDTH ( 32               ),
        .AXI_ID_WIDTH   ( AxiIdWidth       ),
        .AXI_USER_WIDTH ( AxiUserWidth     )
    ) clk_gen_sl();

    AXI_LITE #(
        .AXI_ADDR_WIDTH     ( AxiAddrWidth      ),
        .AXI_DATA_WIDTH     ( 32                )
    ) clk_gen_lite_sl ();

    xlnx_axi_dwidth_converter i_xlnx_axi_dwidth_converter_clkgen (
        .s_axi_aclk     ( axi_clk              ),
        .s_axi_aresetn  ( axi_rst_n             ),

        .s_axi_awid     ( axi_clkgen.aw_id          ),
        .s_axi_awaddr   ( axi_clkgen.aw_addr[31:0]  ),
        .s_axi_awlen    ( axi_clkgen.aw_len         ),
        .s_axi_awsize   ( axi_clkgen.aw_size        ),
        .s_axi_awburst  ( axi_clkgen.aw_burst       ),
        .s_axi_awlock   ( axi_clkgen.aw_lock        ),
        .s_axi_awcache  ( axi_clkgen.aw_cache       ),
        .s_axi_awprot   ( axi_clkgen.aw_prot        ),
        .s_axi_awregion ( axi_clkgen.aw_region      ),
        .s_axi_awqos    ( axi_clkgen.aw_qos         ),
        .s_axi_awvalid  ( axi_clkgen.aw_valid       ),
        .s_axi_awready  ( axi_clkgen.aw_ready       ),
        .s_axi_wdata    ( axi_clkgen.w_data         ),
        .s_axi_wstrb    ( axi_clkgen.w_strb         ),
        .s_axi_wlast    ( axi_clkgen.w_last         ),
        .s_axi_wvalid   ( axi_clkgen.w_valid        ),
        .s_axi_wready   ( axi_clkgen.w_ready        ),
        .s_axi_bid      ( axi_clkgen.b_id           ),
        .s_axi_bresp    ( axi_clkgen.b_resp         ),
        .s_axi_bvalid   ( axi_clkgen.b_valid        ),
        .s_axi_bready   ( axi_clkgen.b_ready        ),
        .s_axi_arid     ( axi_clkgen.ar_id          ),
        .s_axi_araddr   ( axi_clkgen.ar_addr[31:0]  ),
        .s_axi_arlen    ( axi_clkgen.ar_len         ),
        .s_axi_arsize   ( axi_clkgen.ar_size        ),
        .s_axi_arburst  ( axi_clkgen.ar_burst       ),
        .s_axi_arlock   ( axi_clkgen.ar_lock        ),
        .s_axi_arcache  ( axi_clkgen.ar_cache       ),
        .s_axi_arprot   ( axi_clkgen.ar_prot        ),
        .s_axi_arregion ( axi_clkgen.ar_region      ),
        .s_axi_arqos    ( axi_clkgen.ar_qos         ),
        .s_axi_arvalid  ( axi_clkgen.ar_valid       ),
        .s_axi_arready  ( axi_clkgen.ar_ready       ),
        .s_axi_rid      ( axi_clkgen.r_id           ),
        .s_axi_rdata    ( axi_clkgen.r_data         ),
        .s_axi_rresp    ( axi_clkgen.r_resp         ),
        .s_axi_rlast    ( axi_clkgen.r_last         ),
        .s_axi_rvalid   ( axi_clkgen.r_valid        ),
        .s_axi_rready   ( axi_clkgen.r_ready        ),
        
        .m_axi_awaddr   ( clk_gen_sl.aw_addr   ),
        .m_axi_awlen    ( clk_gen_sl.aw_len    ),
        .m_axi_awsize   ( clk_gen_sl.aw_size   ),
        .m_axi_awburst  ( clk_gen_sl.aw_burst  ),
        .m_axi_awlock   ( clk_gen_sl.aw_lock   ),
        .m_axi_awcache  ( clk_gen_sl.aw_cache  ),
        .m_axi_awprot   ( clk_gen_sl.aw_prot   ),
        .m_axi_awregion ( clk_gen_sl.aw_region ),
        .m_axi_awqos    ( clk_gen_sl.aw_qos    ),
        .m_axi_awvalid  ( clk_gen_sl.aw_valid  ),
        .m_axi_awready  ( clk_gen_sl.aw_ready  ),
        .m_axi_wdata    ( clk_gen_sl.w_data    ),
        .m_axi_wstrb    ( clk_gen_sl.w_strb    ),
        .m_axi_wlast    ( clk_gen_sl.w_last    ),
        .m_axi_wvalid   ( clk_gen_sl.w_valid   ),
        .m_axi_wready   ( clk_gen_sl.w_ready   ),
        .m_axi_bresp    ( clk_gen_sl.b_resp    ),
        .m_axi_bvalid   ( clk_gen_sl.b_valid   ),
        .m_axi_bready   ( clk_gen_sl.b_ready   ),
        .m_axi_araddr   ( clk_gen_sl.ar_addr   ),
        .m_axi_arlen    ( clk_gen_sl.ar_len    ),
        .m_axi_arsize   ( clk_gen_sl.ar_size   ),
        .m_axi_arburst  ( clk_gen_sl.ar_burst  ),
        .m_axi_arlock   ( clk_gen_sl.ar_lock   ),
        .m_axi_arcache  ( clk_gen_sl.ar_cache  ),
        .m_axi_arprot   ( clk_gen_sl.ar_prot   ),
        .m_axi_arregion ( clk_gen_sl.ar_region ),
        .m_axi_arqos    ( clk_gen_sl.ar_qos    ),
        .m_axi_arvalid  ( clk_gen_sl.ar_valid  ),
        .m_axi_arready  ( clk_gen_sl.ar_ready  ),
        .m_axi_rdata    ( clk_gen_sl.r_data    ),
        .m_axi_rresp    ( clk_gen_sl.r_resp    ),
        .m_axi_rlast    ( clk_gen_sl.r_last    ),
        .m_axi_rvalid   ( clk_gen_sl.r_valid   ),
        .m_axi_rready   ( clk_gen_sl.r_ready   )
    );
    
    
    
    axi_to_axi_lite #(
        .NUM_PENDING_RD   ( 1   ),
        .NUM_PENDING_WR   ( 1   )
    )
    i_axi_to_axi_lite_paper_sl  
    (
        .clk_i                 ( axi_clk         ),
        .rst_ni                ( axi_rst_n       ),
        .testmode_i            ( test_en         ),
        .in                    ( clk_gen_sl      ),
        .out                   ( clk_gen_lite_sl )
    );

    xlnx_clk_gen i_xlnx_clk_gen (
        .clk_out1       ( clk_out1          ), // 50  MHz
        .clk_out2       ( clk_out2          ), // 125 MHz (for RGMII PHY)
        .clk_out3       ( clk_out3          ), // 125 MHz quadrature (90 deg phase shift)
        .clk_out4       ( clk_out4          ), // 50  MHz clock
        .clk_out5       ( clk_out5          ), // (Configurable) 742.5 MhzPaper serialized pixel clock
        .clk_out6       ( clk_out6          ), // (Configurable) 148.5 Mhz Paper divided pixel clock
        .clk_out7       ( clk_out7          ), // 166 Mhz Bus clock for paper (and dram) 
        .s_axi_awaddr   (clk_gen_lite_sl.aw_addr[10:0]  ),
        .s_axi_awvalid  (clk_gen_lite_sl.aw_valid       ),
        .s_axi_awready  (clk_gen_lite_sl.aw_ready       ),
        .s_axi_wdata    (clk_gen_lite_sl.w_data[31:0]   ), 
        .s_axi_wstrb    (clk_gen_lite_sl.w_strb[3:0]    ), 
        .s_axi_wvalid   (clk_gen_lite_sl.w_valid        ),
        .s_axi_wready   (clk_gen_lite_sl.w_ready        ),
        .s_axi_bresp    (clk_gen_lite_sl.b_resp[1:0]    ), 
        .s_axi_bvalid   (clk_gen_lite_sl.b_valid        ),
        .s_axi_bready   (clk_gen_lite_sl.b_ready        ),
        .s_axi_araddr   (clk_gen_lite_sl.ar_addr[10:0]  ),
        .s_axi_arvalid  (clk_gen_lite_sl.ar_valid       ),
        .s_axi_arready  (clk_gen_lite_sl.ar_ready       ),
        .s_axi_rdata    (clk_gen_lite_sl.r_data[31:0]   ),
        .s_axi_rresp    (clk_gen_lite_sl.r_resp[1:0]    ),
        .s_axi_rvalid   (clk_gen_lite_sl.r_valid        ),
        .s_axi_rready   (clk_gen_lite_sl.r_ready        ),
        .s_axi_aclk     ( axi_clk           ),
        .s_axi_aresetn  ( axi_rst_n         ),
        .locked         ( locked            ),
        .clk_in1        ( clk_in1           )
    );
endmodule
