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
    input  logic        px_clk_i,
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

	logic [23:0]	DataRGB;
    logic [15:0]    Data422;
	logic 	    	DE_422, VSync422, HSync422;
    logic           DE_RGB, VSyncRGB, HSyncRGB;
	logic		    SHIFT01, SHIFT02, SHIFT11, SHIFT12, SHIFT21, SHIFT22;
	logic [9:0]	    TMDS_0, TMDS_1, TMDS_2;
    logic		    SER_0, SER_1, SER_2;
    
// ---------------
// AXI to AXI_LITE conversion
// ---------------

    AXI_LITE #(
        .AXI_ADDR_WIDTH     ( AxiAddrWidth      ),
        .AXI_DATA_WIDTH     ( AxiDataWidth      )
    ) paper_lite_sl ();

    axi_to_axi_lite #(
        .NUM_PENDING_RD   ( 1   ),
        .NUM_PENDING_WR   ( 1   )
    )
    i_axi_to_axi_lite_paper_sl
    (
        .clk_i                 ( axi_clk_i          ),
        .rst_ni                ( rst_ni             ),
        .testmode_i            ( 1'b0               ),
        .in                    ( paper_sl           ),
        .out                   ( paper_lite_sl      )
    );

// ---------------
// Paper
// ---------------

    AXI2HDMI #(
        .AXI4_ADDRESS_WIDTH(AxiAddrWidth),
        .AXI4_DATA_WIDTH(AxiDataWidth),
        .AXI4_LITE_DATA_WIDTH(AxiDataWidth),
        .AXI4_ID_WIDTH(ariane_soc::IdWidth),
        .SC_FIFO_DEPTH(ScDepth),
        .FILL_THRESH(FillThresh),
        .DC_FIFO_DEPTH(DcDepth),
        .AXI_ARID(AxiArId),
        .XILINX(1'b0)
    )
    i_paper
    (
        .AXI_ACLK_CI(axi_clk_i),
        .AXI_ARESETn_RBI(rst_ni),
        .AXIMaster(paper_ms),
        .LiteSlave(paper_lite_sl),
        .PixelClk_CI(px_clk_i),
        .PxClkRst_RBI(rst_ni),
        .DOut422_DO(Data422), //422 output
        .DE_422_SO(DE_422),
        .HSync422_SO(HSync422),
        .VSync422_SO(VSync422),
        .DOutRGB_DO(DataRGB), //RGB output
        .DE_RGB_SO(DE_RGB),
        .HSyncRGB_SO(HSyncRGB),
        .VSyncRGB_SO(VSyncRGB),
        .SCEmpty_SO(),
        .DCEmpty_SO()
    );

// ---------------
// TMDS encoder
// ---------------

    RGB2DVI	#(
	)
   	i_tmds_encoder
     	(
		.clk_i(px_clk_i),
		.rst_ni(rst_ni),
   		.data_i(DataRGB),
		.DE_i(DE_RGB),
		.VSync_i(VSyncRGB),
		.HSync_i(HSyncRGB),
		.TMDS_CH0_o(TMDS_0),
		.TMDS_CH1_o(TMDS_1),
		.TMDS_CH2_o(TMDS_2)
	);

// ---------------
// Serialisers
// ---------------

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
        .CLK(ser_px_clk_i),
        .CLKDIV(px_clk_i),
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
        .CLK(ser_px_clk_i),
        .CLKDIV(px_clk_i),
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
        .CLK(ser_px_clk_i),
        .CLKDIV(px_clk_i),
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
        .CLK(ser_px_clk_i),
        .CLKDIV(px_clk_i),
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
        .CLK(ser_px_clk_i),
        .CLKDIV(px_clk_i),
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
        .CLK(ser_px_clk_i),
        .CLKDIV(px_clk_i),
        .D3(TMDS_2[8]),
        .D4(TMDS_2[9]),
        .OCE(1'b1),
        .RST(~rst_ni),
        .TCE(1'b0)
    );

// ---------------
// Output buffers
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
        .I(px_clk_i) // Buffer input
    );

endmodule