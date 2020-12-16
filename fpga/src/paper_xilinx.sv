module paper_xilinx #(
    parameter int AxiAddrWidth = -1,
    parameter int AxiDataWidth = -1,
    parameter int AxiIdWidth   = -1,
    parameter int AxiUserWidth = 1,
    parameter int ScDepth      = 1,
    parameter int FillThresh   = 1,
    parameter int DcDepth      = 1,
    parameter int AxiArId      = 1337
) (
    input  logic        axi_clk_i,
    input  logic        ser_px_clk_i,
    input  logic        rst_ni,
    AXI_BUS.Master      paper_ms,
    AXI_BUS.Slave       paper_sl,
    output logic		hdmi_tx_clk_n,	
	output logic		hdmi_tx_clk_p,
	output logic [2:0]	hdmi_tx_n,
	output logic [2:0]	hdmi_tx_p
);

// ---------------
// Signals
// ---------------

	logic clk_px, clk_ser, clk5x, clk5x1, clk_ser0, clk_ser1, clk_ser2, clk_px0, clk_px1, clk_px2, clk5x_pre, clkfb, clk_buf;

	logic [24:0]	DataRGB;
	logic 	    	DE, VSync, HSync;
	logic		    SHIFT01, SHIFT02, SHIFT11, SHIFT12, SHIFT21, SHIFT22;
	logic [9:0]	    TMDS_0, TMDS_1, TMDS_2;
    logic		    SER_0, SER_1, SER_2;
    
    assign clk5x = ser_px_clk_i;

// ---------------
// AXI to AXI_LITE conversion
// ---------------

    AXI_LITE #(
        .AXI_ADDR_WIDTH     ( AxiAddrWidth      ),
        .AXI_DATA_WIDTH     ( AxiDataWidth      )
    ) paper_lite_sl ();

    axi_to_axi_lite #(
        .NUM_PENDING_RD   ( 10   ),
        .NUM_PENDING_WR   ( 10   )
    )
    i_axi_to_axi_lite_paper_sl
    (
        .clk_i                 ( clk_i              ),
        .rst_ni                ( rst_ni             ),
        .testmode_i            ( 1'b0               ),
        .in                    ( paper_sl           ),
        .out                   ( paper_lite_sl      )
    );

// ---------------
// Buffers
// ---------------
    BUFR #(
		.BUFR_DIVIDE(5), // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
		.SIM_DEVICE("7SERIES") // Must be set to "7SERIES" 
	) 
	BUFR_inst_hdmiclk
	(
		.O(clk_buf_1), // 1-bit output: Clock output port
		.CE(1'b1), // 1-bit input: Active high, clockclk_buf enable (Divided modes only)
		.CLR(~rst_ni),  // 1-bit input: Active high, asynchronous clear (Divided modes only)
		.I(clk5x1) // 1-bit input: Clock buffer input driven by an IBUFG, MMCM or localinterconnect
	);

	BUFG BUFG_inst2 (
        .O(clk_buf),
        .I(clk_buf_1)
    );

    BUFG BUFG_inst3 (
        .O(clk5x1),
        .I(clk5x)
    );

    BUFR #(
        .BUFR_DIVIDE(5), // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
        .SIM_DEVICE("7SERIES") // Must be set to "7SERIES"
    )
    BUFR_inst_pap
    (
        .O(clk_px), // 1-bit output: Clock output port
        .CE(1'b1), // 1-bit input: Active high, clock enable (Divided modes only)
        .CLR(~rst_ni),  // 1-bit input: Active high, asynchronous clear (Divided modes only)
        .I(clk5x) // 1-bit input: Clock buffer input driven by an IBUFG, MMCM or localinterconnect
    );


	BUFIO BUFIO_inst0 (
		.O(clk_ser0),
		.I(clk5x)
	);

	BUFR #(
		.BUFR_DIVIDE(5), // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
		.SIM_DEVICE("7SERIES") // Must be set to "7SERIES" 
	) 
	BUFR_inst0
	(
		.O(clk_px0), // 1-bit output: Clock output port
		.CE(1'b1), // 1-bit input: Active high, clock enable (Divided modes only)
		.CLR(~rst_ni),  // 1-bit input: Active high, asynchronous clear (Divided modes only)
		.I(clk5x) // 1-bit input: Clock buffer input driven by an IBUFG, MMCM or localinterconnect
	);

    BUFIO BUFIO_inst1 (
        .O(clk_ser1),
        .I(clk5x)
    );

    BUFR #(
        .BUFR_DIVIDE(5), // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
        .SIM_DEVICE("7SERIES") // Must be set to "7SERIES"
    )
    BUFR_inst1
    (
        .O(clk_px1), // 1-bit output: Clock output port
        .CE(1'b1), // 1-bit input: Active high, clock enable (Divided modes only)
        .CLR(~rst_ni),  // 1-bit input: Active high, asynchronous clear (Divided modes only)
        .I(clk5x) // 1-bit input: Clock buffer input driven by an IBUFG, MMCM or localinterconnect
    );

    BUFIO BUFIO_inst2 (
        .O(clk_ser2),
        .I(clk5x)
    );

    BUFR #(
        .BUFR_DIVIDE(5), // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8"
        .SIM_DEVICE("7SERIES") // Must be set to "7SERIES"
    )
    BUFR_inst2
    (
        .O(clk_px2), // 1-bit output: Clock output port
        .CE(1'b1), // 1-bit input: Active high, clock enable (Divided modes only)
        .CLR(~rst_ni),  // 1-bit input: Active high, asynchronous clear (Divided modes only)
        .I(clk5x) // 1-bit input: Clock buffer input driven by an IBUFG, MMCM or localinterconnect
    );

    // Serializer CHANNEL 0
    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"),
        .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10),
        .INIT_OQ(1'b0),
        .SERDES_MODE("MASTER"),
        .SRVAL_OQ(1'b0),
        .TRISTATE_WIDTH(1'b1)
    )
    CH0_SER_master (
        .OQ(SER_0),
        .SHIFTIN1(SHIFT01),
        .SHIFTIN2(SHIFT02),
        .CLK(clk_ser0),
        .CLKDIV(clk_px0),
        .D1(TMDS_0[0]),
        .D2(TMDS_0[1]),
        .D3(TMDS_0[2]),
        .D4(TMDS_0[3]),
        .D5(TMDS_0[4]),
        .D6(TMDS_0[5]),
        .D7(TMDS_0[6]),
        .D8(TMDS_0[7]),
        .OCE(1'b1),
        .RST(~rst_ni),
        .TCE(1'b0)
    );

    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"),
        .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10),
        .INIT_OQ(1'b0),
        .SERDES_MODE("SLAVE"),
        .SRVAL_OQ(1'b0),
        .TRISTATE_WIDTH(1'b1)
    )
    CH0_SER_slave (
        .SHIFTOUT1(SHIFT01),
        .SHIFTOUT2(SHIFT02),
        .CLK(clk_ser0),
        .CLKDIV(clk_px0),
        .D3(TMDS_0[8]),
        .D4(TMDS_0[9]),
        .OCE(1'b1),
        .RST(~rst_ni),
        .TCE(1'b0)
    );



    // SERIALIZER CHANNEL 1
    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"),
        .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10),
        .INIT_OQ(1'b0),
        .SERDES_MODE("MASTER"),
        .SRVAL_OQ(1'b0),
        .TRISTATE_WIDTH(1'b1)
    )
    CH1_SER_master (
        .OQ(SER_1),
        .SHIFTIN1(SHIFT11),
        .SHIFTIN2(SHIFT12),
        .CLK(clk_ser1),
        .CLKDIV(clk_px1),
        .D1(TMDS_1[0]),
        .D2(TMDS_1[1]),
        .D3(TMDS_1[2]),
        .D4(TMDS_1[3]),
        .D5(TMDS_1[4]),
        .D6(TMDS_1[5]),
        .D7(TMDS_1[6]),
        .D8(TMDS_1[7]),
        .OCE(1'b1),
        .RST(~rst_ni),
        .TCE(1'b0)
    );

    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"),
        .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10),
        .INIT_OQ(1'b0),
        .SERDES_MODE("SLAVE"),
        .SRVAL_OQ(1'b0),
        .TRISTATE_WIDTH(1'b1)
    )
    CH1_SER_slave (
        .SHIFTOUT1(SHIFT11),
        .SHIFTOUT2(SHIFT12),
        .CLK(clk_ser1),
        .CLKDIV(clk_px1),
        .D3(TMDS_1[8]),
        .D4(TMDS_1[9]),
        .OCE(1'b1),
        .RST(~rst_ni),
        .TCE(1'b0)
    );


    // SERIALIZER CHANNEL 2
    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"),
        .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10),
        .INIT_OQ(1'b0),
        .SERDES_MODE("MASTER"),
        .SRVAL_OQ(1'b0),
        .TRISTATE_WIDTH(1'b1)
    )
    CH2_SER_master (
        .OQ(SER_2),
        .SHIFTIN1(SHIFT21),
        .SHIFTIN2(SHIFT22),
        .CLK(clk_ser2),
        .CLKDIV(clk_px2),
        .D1(TMDS_2[0]),
        .D2(TMDS_2[1]),
        .D3(TMDS_2[2]),
        .D4(TMDS_2[3]),
        .D5(TMDS_2[4]),
        .D6(TMDS_2[5]),
        .D7(TMDS_2[6]),
        .D8(TMDS_2[7]),
        .OCE(1'b1),
        .RST(~rst_ni),
        .TCE(1'b0)
    );

    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"),
        .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10),
        .INIT_OQ(1'b0),
        .SERDES_MODE("SLAVE"),
        .SRVAL_OQ(1'b0),
        .TRISTATE_WIDTH(1'b1)
    )
    CH2_SER_slave (
        .SHIFTOUT1(SHIFT21),
        .SHIFTOUT2(SHIFT22),
        .CLK(clk_ser2),
        .CLKDIV(clk_px2),
        .D3(TMDS_2[8]),
        .D4(TMDS_2[9]),
        .OCE(1'b1),
        .RST(~rst_ni),
        .TCE(1'b0)
    );

// ---------------
// OUTPUT BUFFERS
// ---------------

    OBUFDS #(
        .IOSTANDARD("DEFAULT"), // Specify the output I/O standard 
        .SLEW("SLOW") // Specify the output slew rate 
    ) OBUFDS_inst_CH0 (
        .O(hdmi_tx_p[0]), // ff_p output (connect directy to top-level port)
        .OB(hdmi_tx_n[0]),  // Diff_n output (connect directly to top-level port)
        .I(SER_0) // Buffer input
    );

    OBUFDS #(
            .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
            .SLEW("SLOW") // Specify the output slew rate
    ) OBUFDS_inst_CH1 (
            .O(hdmi_tx_p[1]), // ff_p output (connect directly to top-level port)
            .OB(hdmi_tx_n[1]),  // Diff_n output (connect directly to top-level port)
            .I(SER_1) // Buffer input
    );

    OBUFDS #(
            .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
            .SLEW("SLOW") // Specify the output slew rate
    ) OBUFDS_inst_CH2 (
            .O(hdmi_tx_p[2]), // ff_p output (connect directly to top-level port)
            .OB(hdmi_tx_n[2]),  // Diff_n output (connect directly to top-level port)
            .I(SER_2) // Buffer input
    );


    OBUFDS #(
        .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
        .SLEW("SLOW") // Specify the output slew rate
    ) OBUFDS_inst_clk (
        .O(hdmi_tx_clk_p), // ff_p output (connect directly to top-level port)
        .OB(hdmi_tx_clk_n),  // Diff_n output (connect directly to top-level port)
        .I(clk_buf) // Buffer input
    );

// ---------------
// TMDS encoder
// ---------------

    RGB2DVI	#(
	)
   	i_tmds_encoder
     	(
		.clk_i(clk_px),
		.rst_ni(rst_ni),
   		.data_i(DataRGB[23:0]),
		.DE_i(DE),
		.VSync_i(VSync),
		.HSync_i(HSync),
		.TMDS_CH0_o(TMDS_0),
		.TMDS_CH1_o(TMDS_1),
		.TMDS_CH2_o(TMDS_2)
	);


// ---------------
// Paper
// ---------------

    AXI2HDMI #(
        .AXI4_ADDRESS_WIDTH(AxiAddrWidth),
        .AXI4_DATA_WIDTH(AxiDataWidth),
        .AXI4_LITE_DATA_WIDTH(AxiDataWidth),
        .AXI4_ID_WIDTH(AxiIdWidth),
        .SC_FIFO_DEPTH(ScDepth),
        .FILL_THRESH(FillThresh),
        .DC_FIFO_DEPTH(DcDepth),
        .AXI_ARID(AxiArId),
        .XILINX(1'b0),
        .RGB_ONLY(1'b1)
    )
    i_paper
    (
        .AXI_ACLK_CI(clk_i),
        .AXI_ARESETn_RBI(rst_ni),
        .AXIMaster(paper_ms),
        .LiteSlave(paper_lite_sl.Slave),
        .PixelClk_CI(px_clk_i), // TODO: add divided ser px clk
        .PxClkRst_RBI(px_rst_ni),
        .DOut_DO(DataRGB),
        .DE_SO(DE),
        .HSync_SO(HSync),
        .VSync_SO(VSync),
        .SCEmpty_SO(),
        .DCEmpty_SO()
    );
endmodule