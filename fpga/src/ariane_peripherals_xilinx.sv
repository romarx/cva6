// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

// Xilinx Peripehrals

module ariane_peripherals #(
    parameter int AxiAddrWidth = -1,
    parameter int AxiDataWidth = -1,
    parameter int AxiIdWidth   = -1,
    parameter int AxiUserWidth = 1,
    parameter bit InclUART     = 1,
    parameter bit InclSPI      = 0,
    parameter bit InclEthernet = 0,
    parameter bit InclGPIO     = 0,
    parameter bit InclTimer    = 1,
    parameter bit InclPAPER    = 1,
    parameter bit InclCLKGen   = 1
) (
    input  logic       clk_i           , // Clock
    input  logic       clk_200MHz_i    ,
    input  logic       rst_ni          , // Asynchronous reset active low
    AXI_BUS.Slave      plic            ,
    AXI_BUS.Slave      uart            ,
    AXI_BUS.Slave      spi             ,
    AXI_BUS.Slave      gpio            ,
    AXI_BUS.Slave      ethernet        ,
    AXI_BUS.Slave      timer           ,
    AXI_BUS.Master     paper_ms        ,
    AXI_BUS.Slave      paper_sl        ,
    AXI_BUS.Slave      clkgen          ,
    output logic [1:0] irq_o           ,
    // UART
    input  logic       rx_i            ,
    output logic       tx_o            ,
    // Ethernet
    input  logic       eth_clk_i       ,
    input  wire        eth_rxck        ,
    input  wire        eth_rxctl       ,
    input  wire [3:0]  eth_rxd         ,
    output wire        eth_txck        ,
    output wire        eth_txctl       ,
    output wire [3:0]  eth_txd         ,
    output wire        eth_rst_n       ,
    input  logic       phy_tx_clk_i    , // 125 MHz Clock
    // MDIO Interface
    inout  wire        eth_mdio        ,
    output logic       eth_mdc         ,
    // SPI
    output logic       spi_clk_o       ,
    output logic       spi_mosi        ,
    input  logic       spi_miso        ,
    output logic       spi_ss          ,
    // SD Card
    input  logic       sd_clk_i        ,
    output logic [7:0] leds_o          ,
    input  logic [7:0] dip_switches_i  ,
    // Paper
    input  logic       paper_bus_clk   ,
    input  logic       ser_px_clk_i    ,
    input  logic       px_clk_i        ,
    input  logic       px_clk_rst      ,
    input  logic       paper_rst_i     ,
    output logic       hdmi_tx_clk_n   ,	
	output logic       hdmi_tx_clk_p   ,
	output logic [2:0] hdmi_tx_n       ,
	output logic [2:0] hdmi_tx_p       ,
    //Clkgen
    output logic clk_out1_o            ,         
    output logic clk_out2_o            ,
    output logic locked_o              ,
    //HID
    inout logic ps2_clk_io             ,       
    inout logic ps2_data_io
    
);

    // ---------------
    // 1. PLIC
    // ---------------
    logic [ariane_soc::NumSources-1:0] irq_sources;

    REG_BUS #(
        .ADDR_WIDTH ( 32 ),
        .DATA_WIDTH ( 32 )
    ) reg_bus (clk_i);

    logic         plic_penable;
    logic         plic_pwrite;
    logic [31:0]  plic_paddr;
    logic         plic_psel;
    logic [31:0]  plic_pwdata;
    logic [31:0]  plic_prdata;
    logic         plic_pready;
    logic         plic_pslverr;

    axi2apb_64_32 #(
        .AXI4_ADDRESS_WIDTH ( AxiAddrWidth  ),
        .AXI4_RDATA_WIDTH   ( AxiDataWidth  ),
        .AXI4_WDATA_WIDTH   ( AxiDataWidth  ),
        .AXI4_ID_WIDTH      ( AxiIdWidth    ),
        .AXI4_USER_WIDTH    ( AxiUserWidth  ),
        .BUFF_DEPTH_SLAVE   ( 2             ),
        .APB_ADDR_WIDTH     ( 32            )
    ) i_axi2apb_64_32_plic (
        .ACLK      ( clk_i          ),
        .ARESETn   ( rst_ni         ),
        .test_en_i ( 1'b0           ),
        .AWID_i    ( plic.aw_id     ),
        .AWADDR_i  ( plic.aw_addr   ),
        .AWLEN_i   ( plic.aw_len    ),
        .AWSIZE_i  ( plic.aw_size   ),
        .AWBURST_i ( plic.aw_burst  ),
        .AWLOCK_i  ( plic.aw_lock   ),
        .AWCACHE_i ( plic.aw_cache  ),
        .AWPROT_i  ( plic.aw_prot   ),
        .AWREGION_i( plic.aw_region ),
        .AWUSER_i  ( plic.aw_user   ),
        .AWQOS_i   ( plic.aw_qos    ),
        .AWVALID_i ( plic.aw_valid  ),
        .AWREADY_o ( plic.aw_ready  ),
        .WDATA_i   ( plic.w_data    ),
        .WSTRB_i   ( plic.w_strb    ),
        .WLAST_i   ( plic.w_last    ),
        .WUSER_i   ( plic.w_user    ),
        .WVALID_i  ( plic.w_valid   ),
        .WREADY_o  ( plic.w_ready   ),
        .BID_o     ( plic.b_id      ),
        .BRESP_o   ( plic.b_resp    ),
        .BVALID_o  ( plic.b_valid   ),
        .BUSER_o   ( plic.b_user    ),
        .BREADY_i  ( plic.b_ready   ),
        .ARID_i    ( plic.ar_id     ),
        .ARADDR_i  ( plic.ar_addr   ),
        .ARLEN_i   ( plic.ar_len    ),
        .ARSIZE_i  ( plic.ar_size   ),
        .ARBURST_i ( plic.ar_burst  ),
        .ARLOCK_i  ( plic.ar_lock   ),
        .ARCACHE_i ( plic.ar_cache  ),
        .ARPROT_i  ( plic.ar_prot   ),
        .ARREGION_i( plic.ar_region ),
        .ARUSER_i  ( plic.ar_user   ),
        .ARQOS_i   ( plic.ar_qos    ),
        .ARVALID_i ( plic.ar_valid  ),
        .ARREADY_o ( plic.ar_ready  ),
        .RID_o     ( plic.r_id      ),
        .RDATA_o   ( plic.r_data    ),
        .RRESP_o   ( plic.r_resp    ),
        .RLAST_o   ( plic.r_last    ),
        .RUSER_o   ( plic.r_user    ),
        .RVALID_o  ( plic.r_valid   ),
        .RREADY_i  ( plic.r_ready   ),
        .PENABLE   ( plic_penable   ),
        .PWRITE    ( plic_pwrite    ),
        .PADDR     ( plic_paddr     ),
        .PSEL      ( plic_psel      ),
        .PWDATA    ( plic_pwdata    ),
        .PRDATA    ( plic_prdata    ),
        .PREADY    ( plic_pready    ),
        .PSLVERR   ( plic_pslverr   )
    );

    apb_to_reg i_apb_to_reg (
        .clk_i     ( clk_i        ),
        .rst_ni    ( rst_ni       ),
        .penable_i ( plic_penable ),
        .pwrite_i  ( plic_pwrite  ),
        .paddr_i   ( plic_paddr   ),
        .psel_i    ( plic_psel    ),
        .pwdata_i  ( plic_pwdata  ),
        .prdata_o  ( plic_prdata  ),
        .pready_o  ( plic_pready  ),
        .pslverr_o ( plic_pslverr ),
        .reg_o     ( reg_bus      )
    );

    reg_intf::reg_intf_resp_d32 plic_resp;
    reg_intf::reg_intf_req_a32_d32 plic_req;

    assign plic_req.addr  = reg_bus.addr;
    assign plic_req.write = reg_bus.write;
    assign plic_req.wdata = reg_bus.wdata;
    assign plic_req.wstrb = reg_bus.wstrb;
    assign plic_req.valid = reg_bus.valid;

    assign reg_bus.rdata = plic_resp.rdata;
    assign reg_bus.error = plic_resp.error;
    assign reg_bus.ready = plic_resp.ready;

    plic_top #(
      .N_SOURCE    ( ariane_soc::NumSources  ),
      .N_TARGET    ( ariane_soc::NumTargets  ),
      .MAX_PRIO    ( ariane_soc::MaxPriority )
    ) i_plic (
      .clk_i,
      .rst_ni,
      .req_i         ( plic_req    ),
      .resp_o        ( plic_resp   ),
      .le_i          ( 8'b10000000 ), // 0:level 1:edge
      .irq_sources_i ( irq_sources ),
      .eip_targets_o ( irq_o       )
    );

    // ---------------
    // 2. UART
    // ---------------
    logic         uart_penable;
    logic         uart_pwrite;
    logic [31:0]  uart_paddr;
    logic         uart_psel;
    logic [31:0]  uart_pwdata;
    logic [31:0]  uart_prdata;
    logic         uart_pready;
    logic         uart_pslverr;

    axi2apb_64_32 #(
        .AXI4_ADDRESS_WIDTH ( AxiAddrWidth ),
        .AXI4_RDATA_WIDTH   ( AxiDataWidth ),
        .AXI4_WDATA_WIDTH   ( AxiDataWidth ),
        .AXI4_ID_WIDTH      ( AxiIdWidth   ),
        .AXI4_USER_WIDTH    ( AxiUserWidth ),
        .BUFF_DEPTH_SLAVE   ( 2            ),
        .APB_ADDR_WIDTH     ( 32           )
    ) i_axi2apb_64_32_uart (
        .ACLK      ( clk_i          ),
        .ARESETn   ( rst_ni         ),
        .test_en_i ( 1'b0           ),
        .AWID_i    ( uart.aw_id     ),
        .AWADDR_i  ( uart.aw_addr   ),
        .AWLEN_i   ( uart.aw_len    ),
        .AWSIZE_i  ( uart.aw_size   ),
        .AWBURST_i ( uart.aw_burst  ),
        .AWLOCK_i  ( uart.aw_lock   ),
        .AWCACHE_i ( uart.aw_cache  ),
        .AWPROT_i  ( uart.aw_prot   ),
        .AWREGION_i( uart.aw_region ),
        .AWUSER_i  ( uart.aw_user   ),
        .AWQOS_i   ( uart.aw_qos    ),
        .AWVALID_i ( uart.aw_valid  ),
        .AWREADY_o ( uart.aw_ready  ),
        .WDATA_i   ( uart.w_data    ),
        .WSTRB_i   ( uart.w_strb    ),
        .WLAST_i   ( uart.w_last    ),
        .WUSER_i   ( uart.w_user    ),
        .WVALID_i  ( uart.w_valid   ),
        .WREADY_o  ( uart.w_ready   ),
        .BID_o     ( uart.b_id      ),
        .BRESP_o   ( uart.b_resp    ),
        .BVALID_o  ( uart.b_valid   ),
        .BUSER_o   ( uart.b_user    ),
        .BREADY_i  ( uart.b_ready   ),
        .ARID_i    ( uart.ar_id     ),
        .ARADDR_i  ( uart.ar_addr   ),
        .ARLEN_i   ( uart.ar_len    ),
        .ARSIZE_i  ( uart.ar_size   ),
        .ARBURST_i ( uart.ar_burst  ),
        .ARLOCK_i  ( uart.ar_lock   ),
        .ARCACHE_i ( uart.ar_cache  ),
        .ARPROT_i  ( uart.ar_prot   ),
        .ARREGION_i( uart.ar_region ),
        .ARUSER_i  ( uart.ar_user   ),
        .ARQOS_i   ( uart.ar_qos    ),
        .ARVALID_i ( uart.ar_valid  ),
        .ARREADY_o ( uart.ar_ready  ),
        .RID_o     ( uart.r_id      ),
        .RDATA_o   ( uart.r_data    ),
        .RRESP_o   ( uart.r_resp    ),
        .RLAST_o   ( uart.r_last    ),
        .RUSER_o   ( uart.r_user    ),
        .RVALID_o  ( uart.r_valid   ),
        .RREADY_i  ( uart.r_ready   ),
        .PENABLE   ( uart_penable   ),
        .PWRITE    ( uart_pwrite    ),
        .PADDR     ( uart_paddr     ),
        .PSEL      ( uart_psel      ),
        .PWDATA    ( uart_pwdata    ),
        .PRDATA    ( uart_prdata    ),
        .PREADY    ( uart_pready    ),
        .PSLVERR   ( uart_pslverr   )
    );

    if (InclUART) begin : gen_uart
        apb_uart i_apb_uart (
            .CLK     ( clk_i           ),
            .RSTN    ( rst_ni          ),
            .PSEL    ( uart_psel       ),
            .PENABLE ( uart_penable    ),
            .PWRITE  ( uart_pwrite     ),
            .PADDR   ( uart_paddr[4:2] ),
            .PWDATA  ( uart_pwdata     ),
            .PRDATA  ( uart_prdata     ),
            .PREADY  ( uart_pready     ),
            .PSLVERR ( uart_pslverr    ),
            .INT     ( irq_sources[0]  ),
            .OUT1N   (                 ), // keep open
            .OUT2N   (                 ), // keep open
            .RTSN    (                 ), // no flow control
            .DTRN    (                 ), // no flow control
            .CTSN    ( 1'b0            ),
            .DSRN    ( 1'b0            ),
            .DCDN    ( 1'b0            ),
            .RIN     ( 1'b0            ),
            .SIN     ( rx_i            ),
            .SOUT    ( tx_o            )
        );
    end else begin
        /* pragma translate_off */
        `ifndef VERILATOR
        mock_uart i_mock_uart (
            .clk_i     ( clk_i        ),
            .rst_ni    ( rst_ni       ),
            .penable_i ( uart_penable ),
            .pwrite_i  ( uart_pwrite  ),
            .paddr_i   ( uart_paddr   ),
            .psel_i    ( uart_psel    ),
            .pwdata_i  ( uart_pwdata  ),
            .prdata_o  ( uart_prdata  ),
            .pready_o  ( uart_pready  ),
            .pslverr_o ( uart_pslverr )
        );
        `endif
        /* pragma translate_on */
    end

    // ---------------
    // 3. SPI
    // ---------------
    assign spi.b_user = 1'b0;
    assign spi.r_user = 1'b0;

    if (InclSPI) begin : gen_spi
        logic [31:0] s_axi_spi_awaddr;
        logic [7:0]  s_axi_spi_awlen;
        logic [2:0]  s_axi_spi_awsize;
        logic [1:0]  s_axi_spi_awburst;
        logic [0:0]  s_axi_spi_awlock;
        logic [3:0]  s_axi_spi_awcache;
        logic [2:0]  s_axi_spi_awprot;
        logic [3:0]  s_axi_spi_awregion;
        logic [3:0]  s_axi_spi_awqos;
        logic        s_axi_spi_awvalid;
        logic        s_axi_spi_awready;
        logic [31:0] s_axi_spi_wdata;
        logic [3:0]  s_axi_spi_wstrb;
        logic        s_axi_spi_wlast;
        logic        s_axi_spi_wvalid;
        logic        s_axi_spi_wready;
        logic [1:0]  s_axi_spi_bresp;
        logic        s_axi_spi_bvalid;
        logic        s_axi_spi_bready;
        logic [31:0] s_axi_spi_araddr;
        logic [7:0]  s_axi_spi_arlen;
        logic [2:0]  s_axi_spi_arsize;
        logic [1:0]  s_axi_spi_arburst;
        logic [0:0]  s_axi_spi_arlock;
        logic [3:0]  s_axi_spi_arcache;
        logic [2:0]  s_axi_spi_arprot;
        logic [3:0]  s_axi_spi_arregion;
        logic [3:0]  s_axi_spi_arqos;
        logic        s_axi_spi_arvalid;
        logic        s_axi_spi_arready;
        logic [31:0] s_axi_spi_rdata;
        logic [1:0]  s_axi_spi_rresp;
        logic        s_axi_spi_rlast;
        logic        s_axi_spi_rvalid;
        logic        s_axi_spi_rready;

        xlnx_axi_dwidth_converter i_xlnx_axi_dwidth_converter_spi (
            .s_axi_aclk     ( clk_i              ),
            .s_axi_aresetn  ( rst_ni             ),

            .s_axi_awid     ( spi.aw_id          ),
            .s_axi_awaddr   ( spi.aw_addr[31:0]  ),
            .s_axi_awlen    ( spi.aw_len         ),
            .s_axi_awsize   ( spi.aw_size        ),
            .s_axi_awburst  ( spi.aw_burst       ),
            .s_axi_awlock   ( spi.aw_lock        ),
            .s_axi_awcache  ( spi.aw_cache       ),
            .s_axi_awprot   ( spi.aw_prot        ),
            .s_axi_awregion ( spi.aw_region      ),
            .s_axi_awqos    ( spi.aw_qos         ),
            .s_axi_awvalid  ( spi.aw_valid       ),
            .s_axi_awready  ( spi.aw_ready       ),
            .s_axi_wdata    ( spi.w_data         ),
            .s_axi_wstrb    ( spi.w_strb         ),
            .s_axi_wlast    ( spi.w_last         ),
            .s_axi_wvalid   ( spi.w_valid        ),
            .s_axi_wready   ( spi.w_ready        ),
            .s_axi_bid      ( spi.b_id           ),
            .s_axi_bresp    ( spi.b_resp         ),
            .s_axi_bvalid   ( spi.b_valid        ),
            .s_axi_bready   ( spi.b_ready        ),
            .s_axi_arid     ( spi.ar_id          ),
            .s_axi_araddr   ( spi.ar_addr[31:0]  ),
            .s_axi_arlen    ( spi.ar_len         ),
            .s_axi_arsize   ( spi.ar_size        ),
            .s_axi_arburst  ( spi.ar_burst       ),
            .s_axi_arlock   ( spi.ar_lock        ),
            .s_axi_arcache  ( spi.ar_cache       ),
            .s_axi_arprot   ( spi.ar_prot        ),
            .s_axi_arregion ( spi.ar_region      ),
            .s_axi_arqos    ( spi.ar_qos         ),
            .s_axi_arvalid  ( spi.ar_valid       ),
            .s_axi_arready  ( spi.ar_ready       ),
            .s_axi_rid      ( spi.r_id           ),
            .s_axi_rdata    ( spi.r_data         ),
            .s_axi_rresp    ( spi.r_resp         ),
            .s_axi_rlast    ( spi.r_last         ),
            .s_axi_rvalid   ( spi.r_valid        ),
            .s_axi_rready   ( spi.r_ready        ),

            .m_axi_awaddr   ( s_axi_spi_awaddr   ),
            .m_axi_awlen    ( s_axi_spi_awlen    ),
            .m_axi_awsize   ( s_axi_spi_awsize   ),
            .m_axi_awburst  ( s_axi_spi_awburst  ),
            .m_axi_awlock   ( s_axi_spi_awlock   ),
            .m_axi_awcache  ( s_axi_spi_awcache  ),
            .m_axi_awprot   ( s_axi_spi_awprot   ),
            .m_axi_awregion ( s_axi_spi_awregion ),
            .m_axi_awqos    ( s_axi_spi_awqos    ),
            .m_axi_awvalid  ( s_axi_spi_awvalid  ),
            .m_axi_awready  ( s_axi_spi_awready  ),
            .m_axi_wdata    ( s_axi_spi_wdata    ),
            .m_axi_wstrb    ( s_axi_spi_wstrb    ),
            .m_axi_wlast    ( s_axi_spi_wlast    ),
            .m_axi_wvalid   ( s_axi_spi_wvalid   ),
            .m_axi_wready   ( s_axi_spi_wready   ),
            .m_axi_bresp    ( s_axi_spi_bresp    ),
            .m_axi_bvalid   ( s_axi_spi_bvalid   ),
            .m_axi_bready   ( s_axi_spi_bready   ),
            .m_axi_araddr   ( s_axi_spi_araddr   ),
            .m_axi_arlen    ( s_axi_spi_arlen    ),
            .m_axi_arsize   ( s_axi_spi_arsize   ),
            .m_axi_arburst  ( s_axi_spi_arburst  ),
            .m_axi_arlock   ( s_axi_spi_arlock   ),
            .m_axi_arcache  ( s_axi_spi_arcache  ),
            .m_axi_arprot   ( s_axi_spi_arprot   ),
            .m_axi_arregion ( s_axi_spi_arregion ),
            .m_axi_arqos    ( s_axi_spi_arqos    ),
            .m_axi_arvalid  ( s_axi_spi_arvalid  ),
            .m_axi_arready  ( s_axi_spi_arready  ),
            .m_axi_rdata    ( s_axi_spi_rdata    ),
            .m_axi_rresp    ( s_axi_spi_rresp    ),
            .m_axi_rlast    ( s_axi_spi_rlast    ),
            .m_axi_rvalid   ( s_axi_spi_rvalid   ),
            .m_axi_rready   ( s_axi_spi_rready   )
        );

        xlnx_axi_quad_spi i_xlnx_axi_quad_spi (
            .ext_spi_clk    ( clk_i                  ),
            .s_axi4_aclk    ( clk_i                  ),
            .s_axi4_aresetn ( rst_ni                 ),
            .s_axi4_awaddr  ( s_axi_spi_awaddr[23:0] ),
            .s_axi4_awlen   ( s_axi_spi_awlen        ),
            .s_axi4_awsize  ( s_axi_spi_awsize       ),
            .s_axi4_awburst ( s_axi_spi_awburst      ),
            .s_axi4_awlock  ( s_axi_spi_awlock       ),
            .s_axi4_awcache ( s_axi_spi_awcache      ),
            .s_axi4_awprot  ( s_axi_spi_awprot       ),
            .s_axi4_awvalid ( s_axi_spi_awvalid      ),
            .s_axi4_awready ( s_axi_spi_awready      ),
            .s_axi4_wdata   ( s_axi_spi_wdata        ),
            .s_axi4_wstrb   ( s_axi_spi_wstrb        ),
            .s_axi4_wlast   ( s_axi_spi_wlast        ),
            .s_axi4_wvalid  ( s_axi_spi_wvalid       ),
            .s_axi4_wready  ( s_axi_spi_wready       ),
            .s_axi4_bresp   ( s_axi_spi_bresp        ),
            .s_axi4_bvalid  ( s_axi_spi_bvalid       ),
            .s_axi4_bready  ( s_axi_spi_bready       ),
            .s_axi4_araddr  ( s_axi_spi_araddr[23:0] ),
            .s_axi4_arlen   ( s_axi_spi_arlen        ),
            .s_axi4_arsize  ( s_axi_spi_arsize       ),
            .s_axi4_arburst ( s_axi_spi_arburst      ),
            .s_axi4_arlock  ( s_axi_spi_arlock       ),
            .s_axi4_arcache ( s_axi_spi_arcache      ),
            .s_axi4_arprot  ( s_axi_spi_arprot       ),
            .s_axi4_arvalid ( s_axi_spi_arvalid      ),
            .s_axi4_arready ( s_axi_spi_arready      ),
            .s_axi4_rdata   ( s_axi_spi_rdata        ),
            .s_axi4_rresp   ( s_axi_spi_rresp        ),
            .s_axi4_rlast   ( s_axi_spi_rlast        ),
            .s_axi4_rvalid  ( s_axi_spi_rvalid       ),
            .s_axi4_rready  ( s_axi_spi_rready       ),
            .io0_i          ( '0                     ),
            .io0_o          ( spi_mosi               ),
            .io0_t          (                        ),
            .io1_i          ( spi_miso               ),
            .io1_o          (                        ),
            .io1_t          (                        ),
            .ss_i           ( '0                     ),
            .ss_o           ( spi_ss                 ),
            .ss_t           (                        ),
            .sck_o          ( spi_clk_o              ),
            .sck_i          ( '0                     ),
            .sck_t          (                        ),
            .ip2intc_irpt   ( irq_sources[1]         )
        );
    end else begin
        assign spi_clk_o = 1'b0;
        assign spi_mosi = 1'b0;
        assign spi_ss = 1'b0;

        // assign irq_sources [1] = 1'b0;
        assign spi.aw_ready = 1'b1;
        assign spi.ar_ready = 1'b1;
        assign spi.w_ready = 1'b1;

        assign spi.b_valid = spi.aw_valid;
        assign spi.b_id = spi.aw_id;
        assign spi.b_resp = axi_pkg::RESP_SLVERR;
        assign spi.b_user = '0;

        assign spi.r_valid = spi.ar_valid;
        assign spi.r_resp = axi_pkg::RESP_SLVERR;
        assign spi.r_data = 'hdeadbeef;
        assign spi.r_last = 1'b1;
    end


    // ---------------
    // 4. Ethernet
    // ---------------

    if (InclEthernet) begin : gen_ethernet

    logic                    clk_200_int, clk_rgmii, clk_rgmii_quad;
    logic                    eth_en, eth_we, eth_int_n, eth_pme_n, eth_mdio_i, eth_mdio_o, eth_mdio_oe;
    logic [AxiAddrWidth-1:0] eth_addr;
    logic [AxiDataWidth-1:0] eth_wrdata, eth_rdata;
    logic [AxiDataWidth/8-1:0] eth_be;

    axi2mem #(
        .AXI_ID_WIDTH   ( AxiIdWidth       ),
        .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
        .AXI_DATA_WIDTH ( AxiDataWidth     ),
        .AXI_USER_WIDTH ( AxiUserWidth     )
    ) i_axi2rom (
        .clk_i  ( clk_i                   ),
        .rst_ni ( rst_ni                  ),
        .slave  ( ethernet                ),
        .req_o  ( eth_en                  ),
        .we_o   ( eth_we                  ),
        .addr_o ( eth_addr                ),
        .be_o   ( eth_be                  ),
        .data_o ( eth_wrdata              ),
        .data_i ( eth_rdata               )
    );

    framing_top eth_rgmii (
       .msoc_clk(clk_i),
       .core_lsu_addr(eth_addr[14:0]),
       .core_lsu_wdata(eth_wrdata),
       .core_lsu_be(eth_be),
       .ce_d(eth_en),
       .we_d(eth_en & eth_we),
       .framing_sel(eth_en),
       .framing_rdata(eth_rdata),
       .rst_int(!rst_ni),
       .clk_int(phy_tx_clk_i), // 125 MHz in-phase
       .clk90_int(eth_clk_i),    // 125 MHz quadrature
       .clk_200_int(clk_200MHz_i),
       /*
        * Ethernet: 1000BASE-T RGMII
        */
       .phy_rx_clk(eth_rxck),
       .phy_rxd(eth_rxd),
       .phy_rx_ctl(eth_rxctl),
       .phy_tx_clk(eth_txck),
       .phy_txd(eth_txd),
       .phy_tx_ctl(eth_txctl),
       .phy_reset_n(eth_rst_n),
       .phy_int_n(eth_int_n),
       .phy_pme_n(eth_pme_n),
       .phy_mdc(eth_mdc),
       .phy_mdio_i(eth_mdio_i),
       .phy_mdio_o(eth_mdio_o),
       .phy_mdio_oe(eth_mdio_oe),
       .eth_irq(irq_sources[2])
    );

       IOBUF #(
          .DRIVE(12), // Specify the output drive strength
          .IBUF_LOW_PWR("TRUE"),  // Low Power - "TRUE", High Performance = "FALSE"
          .IOSTANDARD("DEFAULT"), // Specify the I/O standard
          .SLEW("SLOW") // Specify the output slew rate
       ) IOBUF_inst (
          .O(eth_mdio_i),     // Buffer output
          .IO(eth_mdio),   // Buffer inout port (connect directly to top-level port)
          .I(eth_mdio_o),     // Buffer input
          .T(~eth_mdio_oe)      // 3-state enable input, high=input, low=output
       );

    end else begin
        assign irq_sources [2] = 1'b0;
        assign ethernet.aw_ready = 1'b1;
        assign ethernet.ar_ready = 1'b1;
        assign ethernet.w_ready = 1'b1;

        assign ethernet.b_valid = ethernet.aw_valid;
        assign ethernet.b_id = ethernet.aw_id;
        assign ethernet.b_resp = axi_pkg::RESP_SLVERR;
        assign ethernet.b_user = '0;

        assign ethernet.r_valid = ethernet.ar_valid;
        assign ethernet.r_resp = axi_pkg::RESP_SLVERR;
        assign ethernet.r_data = 'hdeadbeef;
        assign ethernet.r_last = 1'b1;
    end

    // 5. GPIO
    assign gpio.b_user = 1'b0;
    assign gpio.r_user = 1'b0;

    if (InclGPIO) begin : gen_gpio

        logic [31:0] s_axi_gpio_awaddr;
        logic [7:0]  s_axi_gpio_awlen;
        logic [2:0]  s_axi_gpio_awsize;
        logic [1:0]  s_axi_gpio_awburst;
        logic [3:0]  s_axi_gpio_awcache;
        logic        s_axi_gpio_awvalid;
        logic        s_axi_gpio_awready;
        logic [31:0] s_axi_gpio_wdata;
        logic [3:0]  s_axi_gpio_wstrb;
        logic        s_axi_gpio_wvalid;
        logic        s_axi_gpio_wready;
        logic [1:0]  s_axi_gpio_bresp;
        logic        s_axi_gpio_bvalid;
        logic        s_axi_gpio_bready;
        logic [31:0] s_axi_gpio_araddr;
        logic [7:0]  s_axi_gpio_arlen;
        logic [2:0]  s_axi_gpio_arsize;
        logic [1:0]  s_axi_gpio_arburst;
        logic [3:0]  s_axi_gpio_arcache;
        logic        s_axi_gpio_arvalid;
        logic        s_axi_gpio_arready;
        logic [31:0] s_axi_gpio_rdata;
        logic [1:0]  s_axi_gpio_rresp;
        logic        s_axi_gpio_rlast;
        logic        s_axi_gpio_rvalid;
        logic        s_axi_gpio_rready;

        // system-bus is 64-bit, convert down to 32 bit
        xlnx_axi_dwidth_converter i_xlnx_axi_dwidth_converter_gpio (
            .s_axi_aclk     ( clk_i              ),
            .s_axi_aresetn  ( rst_ni             ),
            .s_axi_awid     ( gpio.aw_id         ),
            .s_axi_awaddr   ( gpio.aw_addr[31:0] ),
            .s_axi_awlen    ( gpio.aw_len        ),
            .s_axi_awsize   ( gpio.aw_size       ),
            .s_axi_awburst  ( gpio.aw_burst      ),
            .s_axi_awlock   ( gpio.aw_lock       ),
            .s_axi_awcache  ( gpio.aw_cache      ),
            .s_axi_awprot   ( gpio.aw_prot       ),
            .s_axi_awregion ( gpio.aw_region     ),
            .s_axi_awqos    ( gpio.aw_qos        ),
            .s_axi_awvalid  ( gpio.aw_valid      ),
            .s_axi_awready  ( gpio.aw_ready      ),
            .s_axi_wdata    ( gpio.w_data        ),
            .s_axi_wstrb    ( gpio.w_strb        ),
            .s_axi_wlast    ( gpio.w_last        ),
            .s_axi_wvalid   ( gpio.w_valid       ),
            .s_axi_wready   ( gpio.w_ready       ),
            .s_axi_bid      ( gpio.b_id          ),
            .s_axi_bresp    ( gpio.b_resp        ),
            .s_axi_bvalid   ( gpio.b_valid       ),
            .s_axi_bready   ( gpio.b_ready       ),
            .s_axi_arid     ( gpio.ar_id         ),
            .s_axi_araddr   ( gpio.ar_addr[31:0] ),
            .s_axi_arlen    ( gpio.ar_len        ),
            .s_axi_arsize   ( gpio.ar_size       ),
            .s_axi_arburst  ( gpio.ar_burst      ),
            .s_axi_arlock   ( gpio.ar_lock       ),
            .s_axi_arcache  ( gpio.ar_cache      ),
            .s_axi_arprot   ( gpio.ar_prot       ),
            .s_axi_arregion ( gpio.ar_region     ),
            .s_axi_arqos    ( gpio.ar_qos        ),
            .s_axi_arvalid  ( gpio.ar_valid      ),
            .s_axi_arready  ( gpio.ar_ready      ),
            .s_axi_rid      ( gpio.r_id          ),
            .s_axi_rdata    ( gpio.r_data        ),
            .s_axi_rresp    ( gpio.r_resp        ),
            .s_axi_rlast    ( gpio.r_last        ),
            .s_axi_rvalid   ( gpio.r_valid       ),
            .s_axi_rready   ( gpio.r_ready       ),

            .m_axi_awaddr   ( s_axi_gpio_awaddr  ),
            .m_axi_awlen    ( s_axi_gpio_awlen   ),
            .m_axi_awsize   ( s_axi_gpio_awsize  ),
            .m_axi_awburst  ( s_axi_gpio_awburst ),
            .m_axi_awlock   (                    ),
            .m_axi_awcache  ( s_axi_gpio_awcache ),
            .m_axi_awprot   (                    ),
            .m_axi_awregion (                    ),
            .m_axi_awqos    (                    ),
            .m_axi_awvalid  ( s_axi_gpio_awvalid ),
            .m_axi_awready  ( s_axi_gpio_awready ),
            .m_axi_wdata    ( s_axi_gpio_wdata   ),
            .m_axi_wstrb    ( s_axi_gpio_wstrb   ),
            .m_axi_wlast    (                    ),
            .m_axi_wvalid   ( s_axi_gpio_wvalid  ),
            .m_axi_wready   ( s_axi_gpio_wready  ),
            .m_axi_bresp    ( s_axi_gpio_bresp   ),
            .m_axi_bvalid   ( s_axi_gpio_bvalid  ),
            .m_axi_bready   ( s_axi_gpio_bready  ),
            .m_axi_araddr   ( s_axi_gpio_araddr  ),
            .m_axi_arlen    ( s_axi_gpio_arlen   ),
            .m_axi_arsize   ( s_axi_gpio_arsize  ),
            .m_axi_arburst  ( s_axi_gpio_arburst ),
            .m_axi_arlock   (                    ),
            .m_axi_arcache  ( s_axi_gpio_arcache ),
            .m_axi_arprot   (                    ),
            .m_axi_arregion (                    ),
            .m_axi_arqos    (                    ),
            .m_axi_arvalid  ( s_axi_gpio_arvalid ),
            .m_axi_arready  ( s_axi_gpio_arready ),
            .m_axi_rdata    ( s_axi_gpio_rdata   ),
            .m_axi_rresp    ( s_axi_gpio_rresp   ),
            .m_axi_rlast    ( s_axi_gpio_rlast   ),
            .m_axi_rvalid   ( s_axi_gpio_rvalid  ),
            .m_axi_rready   ( s_axi_gpio_rready  )
        );
        
        logic [9:0] gpio_tristate; //use this with IOBUFT's for bidirectional logic
        logic ps2_data_i, ps2_data_o, ps2_clk_i, ps2_clk_o;
        
        xlnx_axi_gpio i_xlnx_axi_gpio (
            .s_axi_aclk    ( clk_i                  ),
            .s_axi_aresetn ( rst_ni                 ),
            .s_axi_awaddr  ( s_axi_gpio_awaddr[8:0] ),
            .s_axi_awvalid ( s_axi_gpio_awvalid     ),
            .s_axi_awready ( s_axi_gpio_awready     ),
            .s_axi_wdata   ( s_axi_gpio_wdata       ),
            .s_axi_wstrb   ( s_axi_gpio_wstrb       ),
            .s_axi_wvalid  ( s_axi_gpio_wvalid      ),
            .s_axi_wready  ( s_axi_gpio_wready      ),
            .s_axi_bresp   ( s_axi_gpio_bresp       ),
            .s_axi_bvalid  ( s_axi_gpio_bvalid      ),
            .s_axi_bready  ( s_axi_gpio_bready      ),
            .s_axi_araddr  ( s_axi_gpio_araddr[8:0] ),
            .s_axi_arvalid ( s_axi_gpio_arvalid     ),
            .s_axi_arready ( s_axi_gpio_arready     ),
            .s_axi_rdata   ( s_axi_gpio_rdata       ),
            .s_axi_rresp   ( s_axi_gpio_rresp       ),
            .s_axi_rvalid  ( s_axi_gpio_rvalid      ),
            .s_axi_rready  ( s_axi_gpio_rready      ),
            .gpio_io_i     ( { ps2_data_i, ps2_clk_i, 8'b0 }  ),
            .gpio_io_o     ( { ps2_data_o, ps2_clk_o, leds_o} ),
            .gpio_io_t     ( gpio_tristate          ),
            .gpio2_io_i    ( dip_switches_i         )
        );
        
        assign s_axi_gpio_rlast = 1'b1;

        /*

        //inout buffers for ps2_gpio
        
        IOBUF #(
            .IOSTANDARD("LVCMOS33"),    // Specify the I/O standard
        ) IOBUF_inst (
            .O(ps2_clk_i),              // Buffer output
            .IO(ps2_clk_io),            // Buffer inout port (connect directly to top-level port)
            .I(ps2_clk_o),              // Buffer input
            .T(gpio_tristate[8])        // 3-state enable input, high=input, low=output
        );

        IOBUF #(
            .IOSTANDARD("LVCMOS33"),    // Specify the I/O standard
        ) IOBUF_inst (
            .O(ps2_data_i),             // Buffer output
            .IO(ps2_data_io),           // Buffer inout port (connect directly to top-level port)
            .I(ps2_data_o),             // Buffer input
            .T(gpio_tristate[9])        // 3-state enable input, high=input, low=output
        );

        
        
        //interrupt generation for the ps2_gpio driver
        
        logic ps2irq, ps2_clkstate;
        assign irq_sources[7] = ps2irq;
        always_ff @(posedge clk_i, negedge rst_ni) begin
            if(~rst_ni) begin
                ps2irq <= 0;
                ps2_clkstate <= 0;
            end else begin
                if(~ps2_clk_i && ps2_clkstate) begin
                    ps2irq <= 1; //interrupt on falling edge
                end else begin
                    ps2irq <= 0;
                end
                ps2_clkstate <= ps2_clk_i;
            end
            
        end
        */

    

end

    // 6. Timer
    if (InclTimer) begin : gen_timer
        logic         timer_penable;
        logic         timer_pwrite;
        logic [31:0]  timer_paddr;
        logic         timer_psel;
        logic [31:0]  timer_pwdata;
        logic [31:0]  timer_prdata;
        logic         timer_pready;
        logic         timer_pslverr;

        axi2apb_64_32 #(
            .AXI4_ADDRESS_WIDTH ( AxiAddrWidth ),
            .AXI4_RDATA_WIDTH   ( AxiDataWidth ),
            .AXI4_WDATA_WIDTH   ( AxiDataWidth ),
            .AXI4_ID_WIDTH      ( AxiIdWidth   ),
            .AXI4_USER_WIDTH    ( AxiUserWidth ),
            .BUFF_DEPTH_SLAVE   ( 2            ),
            .APB_ADDR_WIDTH     ( 32           )
        ) i_axi2apb_64_32_timer (
            .ACLK      ( clk_i           ),
            .ARESETn   ( rst_ni          ),
            .test_en_i ( 1'b0            ),
            .AWID_i    ( timer.aw_id     ),
            .AWADDR_i  ( timer.aw_addr   ),
            .AWLEN_i   ( timer.aw_len    ),
            .AWSIZE_i  ( timer.aw_size   ),
            .AWBURST_i ( timer.aw_burst  ),
            .AWLOCK_i  ( timer.aw_lock   ),
            .AWCACHE_i ( timer.aw_cache  ),
            .AWPROT_i  ( timer.aw_prot   ),
            .AWREGION_i( timer.aw_region ),
            .AWUSER_i  ( timer.aw_user   ),
            .AWQOS_i   ( timer.aw_qos    ),
            .AWVALID_i ( timer.aw_valid  ),
            .AWREADY_o ( timer.aw_ready  ),
            .WDATA_i   ( timer.w_data    ),
            .WSTRB_i   ( timer.w_strb    ),
            .WLAST_i   ( timer.w_last    ),
            .WUSER_i   ( timer.w_user    ),
            .WVALID_i  ( timer.w_valid   ),
            .WREADY_o  ( timer.w_ready   ),
            .BID_o     ( timer.b_id      ),
            .BRESP_o   ( timer.b_resp    ),
            .BVALID_o  ( timer.b_valid   ),
            .BUSER_o   ( timer.b_user    ),
            .BREADY_i  ( timer.b_ready   ),
            .ARID_i    ( timer.ar_id     ),
            .ARADDR_i  ( timer.ar_addr   ),
            .ARLEN_i   ( timer.ar_len    ),
            .ARSIZE_i  ( timer.ar_size   ),
            .ARBURST_i ( timer.ar_burst  ),
            .ARLOCK_i  ( timer.ar_lock   ),
            .ARCACHE_i ( timer.ar_cache  ),
            .ARPROT_i  ( timer.ar_prot   ),
            .ARREGION_i( timer.ar_region ),
            .ARUSER_i  ( timer.ar_user   ),
            .ARQOS_i   ( timer.ar_qos    ),
            .ARVALID_i ( timer.ar_valid  ),
            .ARREADY_o ( timer.ar_ready  ),
            .RID_o     ( timer.r_id      ),
            .RDATA_o   ( timer.r_data    ),
            .RRESP_o   ( timer.r_resp    ),
            .RLAST_o   ( timer.r_last    ),
            .RUSER_o   ( timer.r_user    ),
            .RVALID_o  ( timer.r_valid   ),
            .RREADY_i  ( timer.r_ready   ),
            .PENABLE   ( timer_penable   ),
            .PWRITE    ( timer_pwrite    ),
            .PADDR     ( timer_paddr     ),
            .PSEL      ( timer_psel      ),
            .PWDATA    ( timer_pwdata    ),
            .PRDATA    ( timer_prdata    ),
            .PREADY    ( timer_pready    ),
            .PSLVERR   ( timer_pslverr   )
        );

        apb_timer #(
                .APB_ADDR_WIDTH ( 32 ),
                .TIMER_CNT      ( 2  )
        ) i_timer (
            .HCLK    ( clk_i            ),
            .HRESETn ( rst_ni           ),
            .PSEL    ( timer_psel       ),
            .PENABLE ( timer_penable    ),
            .PWRITE  ( timer_pwrite     ),
            .PADDR   ( timer_paddr      ),
            .PWDATA  ( timer_pwdata     ),
            .PRDATA  ( timer_prdata     ),
            .PREADY  ( timer_pready     ),
            .PSLVERR ( timer_pslverr    ),
            .irq_o   ( irq_sources[6:3] )
        );
    end
    if (InclPAPER) begin : gen_paper
        paper_xilinx #(
            .AxiAddrWidth        ( AxiAddrWidth      ),
            .AxiDataWidth        ( AxiDataWidth      ),
            .AxiIdWidth          ( AxiIdWidth        ),
            .AxiUserWidth        ( AxiUserWidth      ),
            .ScDepth             ( 128               ), //128
            .FillThresh          ( 64                ), //64
            .DcDepth             ( 24                ), //24
            .XILINX_7SERIES_IP   ( 1'b1              )
        ) i_paper (
            .axi_clk_i          ( paper_bus_clk     ),
            .ser_px_clk_i       ( ser_px_clk_i      ),
            .px_clk_i           ( px_clk_i          ),
            .rst_ni             ( paper_rst_i       ),
            .px_rst_ni          ( px_clk_rst        ),
            .paper_ms           ( paper_ms          ),
            .paper_sl           ( paper_sl          ),
            .hdmi_tx_clk_n      ( hdmi_tx_clk_n     ),
            .hdmi_tx_clk_p      ( hdmi_tx_clk_p     ),
            .hdmi_tx_n          ( hdmi_tx_n         ),
            .hdmi_tx_p          ( hdmi_tx_p         )
        );
    end

    if (InclCLKGen) begin : gen_clkgen
    
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
        .s_axi_aclk     ( clk_i              ),
        .s_axi_aresetn  ( rst_ni            ),
        .s_axi_awid     ( clkgen.aw_id          ),
        .s_axi_awaddr   ( clkgen.aw_addr[31:0]  ),
        .s_axi_awlen    ( clkgen.aw_len         ),
        .s_axi_awsize   ( clkgen.aw_size        ),
        .s_axi_awburst  ( clkgen.aw_burst       ),
        .s_axi_awlock   ( clkgen.aw_lock        ),
        .s_axi_awcache  ( clkgen.aw_cache       ),
        .s_axi_awprot   ( clkgen.aw_prot        ),
        .s_axi_awregion ( clkgen.aw_region      ),
        .s_axi_awqos    ( clkgen.aw_qos         ),
        .s_axi_awvalid  ( clkgen.aw_valid       ),
        .s_axi_awready  ( clkgen.aw_ready       ),
        .s_axi_wdata    ( clkgen.w_data         ),
        .s_axi_wstrb    ( clkgen.w_strb         ),
        .s_axi_wlast    ( clkgen.w_last         ),
        .s_axi_wvalid   ( clkgen.w_valid        ),
        .s_axi_wready   ( clkgen.w_ready        ),
        .s_axi_bid      ( clkgen.b_id           ),
        .s_axi_bresp    ( clkgen.b_resp         ),
        .s_axi_bvalid   ( clkgen.b_valid        ),
        .s_axi_bready   ( clkgen.b_ready        ),
        .s_axi_arid     ( clkgen.ar_id          ),
        .s_axi_araddr   ( clkgen.ar_addr[31:0]  ),
        .s_axi_arlen    ( clkgen.ar_len         ),
        .s_axi_arsize   ( clkgen.ar_size        ),
        .s_axi_arburst  ( clkgen.ar_burst       ),
        .s_axi_arlock   ( clkgen.ar_lock        ),
        .s_axi_arcache  ( clkgen.ar_cache       ),
        .s_axi_arprot   ( clkgen.ar_prot        ),
        .s_axi_arregion ( clkgen.ar_region      ),
        .s_axi_arqos    ( clkgen.ar_qos         ),
        .s_axi_arvalid  ( clkgen.ar_valid       ),
        .s_axi_arready  ( clkgen.ar_ready       ),
        .s_axi_rid      ( clkgen.r_id           ),
        .s_axi_rdata    ( clkgen.r_data         ),
        .s_axi_rresp    ( clkgen.r_resp         ),
        .s_axi_rlast    ( clkgen.r_last         ),
        .s_axi_rvalid   ( clkgen.r_valid        ),
        .s_axi_rready   ( clkgen.r_ready        ),

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
        .clk_i                 ( clki_i          ),
        .rst_ni                ( rst_ni          ),
        .testmode_i            ( 1'b0            ),
        .in                    ( clk_gen_sl      ),
        .out                   ( clk_gen_lite_sl )
    );

    xlnx_px_clk_gen i_xlnx_px_clk_gen (
        .clk_in1        ( clk_200MHz_i      ),
        .clk_out1       ( clk_out1_o        ), // 40 Mhz initial px_clk
        .clk_out2       ( clk_out2_o        ), // 200 Mhz initial ser_px_clk
        .locked         ( locked_o          ),

        .s_axi_aclk     ( clk_i             ),
        .s_axi_aresetn  ( rst_ni            ),
        .s_axi_awaddr   ( clk_gen_lite_sl.aw_addr[10:0]  ),
        .s_axi_awvalid  ( clk_gen_lite_sl.aw_valid       ),
        .s_axi_awready  ( clk_gen_lite_sl.aw_ready       ),
        .s_axi_wdata    ( clk_gen_lite_sl.w_data[31:0]   ), 
        .s_axi_wstrb    ( clk_gen_lite_sl.w_strb[3:0]    ), 
        .s_axi_wvalid   ( clk_gen_lite_sl.w_valid        ),
        .s_axi_wready   ( clk_gen_lite_sl.w_ready        ),
        .s_axi_bresp    ( clk_gen_lite_sl.b_resp[1:0]    ), 
        .s_axi_bvalid   ( clk_gen_lite_sl.b_valid        ),
        .s_axi_bready   ( clk_gen_lite_sl.b_ready        ),
        .s_axi_araddr   ( clk_gen_lite_sl.ar_addr[10:0]  ),
        .s_axi_arvalid  ( clk_gen_lite_sl.ar_valid       ),
        .s_axi_arready  ( clk_gen_lite_sl.ar_ready       ),
        .s_axi_rdata    ( clk_gen_lite_sl.r_data[31:0]   ),
        .s_axi_rresp    ( clk_gen_lite_sl.r_resp[1:0]    ),
        .s_axi_rvalid   ( clk_gen_lite_sl.r_valid        ),
        .s_axi_rready   ( clk_gen_lite_sl.r_ready        )   
    );
    end
endmodule
