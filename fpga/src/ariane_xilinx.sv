// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

// Description: Xilinx FPGA top-level
// Author: Florian Zaruba <zarubaf@iis.ee.ethz.ch>

module ariane_xilinx (
`ifdef GENESYSII
  input  logic         sys_clk_p   ,
  input  logic         sys_clk_n   ,
  input  logic         cpu_resetn  ,
  inout  wire  [31:0]  ddr3_dq     ,
  inout  wire  [ 3:0]  ddr3_dqs_n  ,
  inout  wire  [ 3:0]  ddr3_dqs_p  ,
  output logic [14:0]  ddr3_addr   ,
  output logic [ 2:0]  ddr3_ba     ,
  output logic         ddr3_ras_n  ,
  output logic         ddr3_cas_n  ,
  output logic         ddr3_we_n   ,
  output logic         ddr3_reset_n,
  output logic [ 0:0]  ddr3_ck_p   ,
  output logic [ 0:0]  ddr3_ck_n   ,
  output logic [ 0:0]  ddr3_cke    ,
  output logic [ 0:0]  ddr3_cs_n   ,
  output logic [ 3:0]  ddr3_dm     ,
  output logic [ 0:0]  ddr3_odt    ,

  output wire          eth_rst_n   ,
  input  wire          eth_rxck    ,
  input  wire          eth_rxctl   ,
  input  wire [3:0]    eth_rxd     ,
  output wire          eth_txck    ,
  output wire          eth_txctl   ,
  output wire [3:0]    eth_txd     ,
  inout  wire          eth_mdio    ,
  output logic         eth_mdc     ,
  //leds and switches for gpio
  output logic [7:0]   led         ,
  input  logic [7:0]   sw          ,
  output logic         fan_pwm     ,
  input  logic         trst_n      ,
  // Paper
  output logic		     hdmi_tx_clk_n,
  output logic		     hdmi_tx_clk_p,
  output logic [2:0]	 hdmi_tx_n   ,
  output logic [2:0]	 hdmi_tx_p   ,
  //HID
  //inout logic          ps2_clk     ,
  //inout logic          ps2_data    ,
`elsif KC705
  input  logic         sys_clk_p   ,
  input  logic         sys_clk_n   ,

  input  logic         cpu_reset   ,
  inout  logic [63:0]  ddr3_dq     ,
  inout  logic [ 7:0]  ddr3_dqs_n  ,
  inout  logic [ 7:0]  ddr3_dqs_p  ,
  output logic [13:0]  ddr3_addr   ,
  output logic [ 2:0]  ddr3_ba     ,
  output logic         ddr3_ras_n  ,
  output logic         ddr3_cas_n  ,
  output logic         ddr3_we_n   ,
  output logic         ddr3_reset_n,
  output logic [ 0:0]  ddr3_ck_p   ,
  output logic [ 0:0]  ddr3_ck_n   ,
  output logic [ 0:0]  ddr3_cke    ,
  output logic [ 0:0]  ddr3_cs_n   ,
  output logic [ 7:0]  ddr3_dm     ,
  output logic [ 0:0]  ddr3_odt    ,

  output wire          eth_rst_n   ,
  input  wire          eth_rxck    ,
  input  wire          eth_rxctl   ,
  input  wire [3:0]    eth_rxd     ,
  output wire          eth_txck    ,
  output wire          eth_txctl   ,
  output wire [3:0]    eth_txd     ,
  inout  wire          eth_mdio    ,
  output logic         eth_mdc     ,
  output logic [ 3:0]  led         ,
  input  logic [ 3:0]  sw          ,
  output logic         fan_pwm     ,
  input  logic         trst_n      ,
`elsif VC707
  input  logic         sys_clk_p   ,
  input  logic         sys_clk_n   ,
  input  logic         cpu_reset   ,
  inout  wire  [63:0]  ddr3_dq     ,
  inout  wire  [ 7:0]  ddr3_dqs_n  ,
  inout  wire  [ 7:0]  ddr3_dqs_p  ,
  output logic [13:0]  ddr3_addr   ,
  output logic [ 2:0]  ddr3_ba     ,
  output logic         ddr3_ras_n  ,
  output logic         ddr3_cas_n  ,
  output logic         ddr3_we_n   ,
  output logic         ddr3_reset_n,
  output logic [ 0:0]  ddr3_ck_p   ,
  output logic [ 0:0]  ddr3_ck_n   ,
  output logic [ 0:0]  ddr3_cke    ,
  output logic [ 0:0]  ddr3_cs_n   ,
  output logic [ 7:0]  ddr3_dm     ,
  output logic [ 0:0]  ddr3_odt    ,
  output wire          eth_rst_n   ,
  input  wire          eth_rxck    ,
  input  wire          eth_rxctl   ,
  input  wire [3:0]    eth_rxd     ,
  output wire          eth_txck    ,
  output wire          eth_txctl   ,
  output wire [3:0]    eth_txd     ,
  inout  wire          eth_mdio    ,
  output logic         eth_mdc     ,
  output logic [ 7:0]  led         ,
  input  logic [ 7:0]  sw          ,
  output logic         fan_pwm     ,
  input  logic         trst        ,
`elsif VCU118
  input  wire          c0_sys_clk_p    ,  // 250 MHz Clock for DDR
  input  wire          c0_sys_clk_n    ,  // 250 MHz Clock for DDR
  input  wire          sys_clk_p       ,  // 100 MHz Clock for PCIe
  input  wire          sys_clk_n       ,  // 100 MHz Clock for PCIE
  input  wire          sys_rst_n       ,  // PCIe Reset
  input  logic         cpu_reset       ,  // CPU subsystem reset
  output wire [16:0]   c0_ddr4_adr     ,
  output wire [1:0]    c0_ddr4_ba      ,
  output wire [0:0]    c0_ddr4_cke     ,
  output wire [0:0]    c0_ddr4_cs_n    ,
  inout  wire [7:0]    c0_ddr4_dm_dbi_n,
  inout  wire [63:0]   c0_ddr4_dq      ,
  inout  wire [7:0]    c0_ddr4_dqs_c   ,
  inout  wire [7:0]    c0_ddr4_dqs_t   ,
  output wire [0:0]    c0_ddr4_odt     ,
  output wire [0:0]    c0_ddr4_bg      ,
  output wire          c0_ddr4_reset_n ,
  output wire          c0_ddr4_act_n   ,
  output wire [0:0]    c0_ddr4_ck_c    ,
  output wire [0:0]    c0_ddr4_ck_t    ,
  output wire [7:0]    pci_exp_txp     ,
  output wire [7:0]    pci_exp_txn     ,
  input  wire [7:0]    pci_exp_rxp     ,
  input  wire [7:0]    pci_exp_rxn     ,
  input  logic         trst_n          ,
`endif
  // SPI
  output logic        spi_mosi    ,
  input  logic        spi_miso    ,
  output logic        spi_ss      ,
  output logic        spi_clk_o   ,
  // common part
  // input logic      trst_n      ,
  input  logic        tck         ,
  input  logic        tms         ,
  input  logic        tdi         ,
  output wire         tdo         ,
  input  logic        rx          ,
  output logic        tx
);
// 24 MByte in 8 byte words
localparam NumWords = (24 * 1024 * 1024) / 8;
localparam AxiAddrWidth = 64;
localparam AxiDataWidth = 64;
localparam AxiIdWidthMaster = 4;
localparam AxiIdWidthSlaves = AxiIdWidthMaster + $clog2(ariane_soc::NrSlaves); // 5
localparam AxiUserWidth = 1;

AXI_BUS #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthMaster ),
    .AXI_USER_WIDTH ( AxiUserWidth     )
) slave[ariane_soc::NrSlaves-1:0]();

AXI_BUS #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .AXI_USER_WIDTH ( AxiUserWidth     )
) master[ariane_soc::NB_PERIPHERALS-1:0]();

AXI_BUS #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .AXI_USER_WIDTH ( AxiUserWidth     )
) paper_master();

// disable test-enable
logic test_en;
logic ndmreset;
logic ndmreset_n;
logic px_ndmreset_n;
logic paper_ndmreset_n;
logic debug_req_irq;
logic timer_irq;
logic ipi;

logic clk;
logic eth_clk;
logic spi_clk_i;
logic phy_tx_clk;
logic sd_clk_sys;

logic paper_clk;
logic ser_px_clk;
logic px_clk;

logic ddr_sync_reset;
logic ddr_clock_out;

logic rst_n, rst;
logic rtc;

// we need to switch reset polarity
`ifdef VCU118
logic cpu_resetn;
assign cpu_resetn = ~cpu_reset;
`elsif GENESYSII
logic cpu_reset;
assign cpu_reset  = ~cpu_resetn;
`elsif KC705
assign cpu_resetn = ~cpu_reset;
`elsif VC707
assign cpu_resetn = ~cpu_reset;
assign trst_n = ~trst;
`endif

logic pll_locked;

logic px_pll_locked;

// ROM
logic                    rom_req;
logic [AxiAddrWidth-1:0] rom_addr;
logic [AxiDataWidth-1:0] rom_rdata;

// Debug
logic          debug_req_valid;
logic          debug_req_ready;
dm::dmi_req_t  debug_req;
logic          debug_resp_valid;
logic          debug_resp_ready;
dm::dmi_resp_t debug_resp;

logic dmactive;

// IRQ
logic [1:0] irq;
assign test_en    = 1'b0;

logic [ariane_soc::NrSlaves-1:0] pc_asserted;

rstgen i_rstgen_main (
    .clk_i        ( clk                      ),
    .rst_ni       ( pll_locked & (~ndmreset) ),
    .test_mode_i  ( test_en                  ),
    .rst_no       ( ndmreset_n               ),
    .init_no      (                          ) // keep open
);

rstgen i_rstgen_pxclk (
    .clk_i        ( px_clk                      ),
    .rst_ni       ( px_pll_locked & (~ndmreset) ),
    .test_mode_i  ( test_en                     ),
    .rst_no       ( px_ndmreset_n               ),
    .init_no      (                             ) // keep open
);

rstgen i_rstgen_paper_clk (
    .clk_i        ( paper_clk                   ),
    .rst_ni       ( pll_locked & (~ndmreset)    ),
    .test_mode_i  ( test_en                     ),
    .rst_no       ( paper_ndmreset_n            ),
    .init_no      (                             ) // keep open
);



assign rst_n = ~ddr_sync_reset;
assign rst = ddr_sync_reset;

// ---------------
// AXI Xbar
// ---------------
axi_node_wrap_with_slices #(
    // three ports from Ariane (instruction, data and bypass)
    .NB_SLAVE           ( ariane_soc::NrSlaves       ),
    .NB_MASTER          ( ariane_soc::NB_PERIPHERALS ),
    .NB_REGION          ( ariane_soc::NrRegion       ),
    .AXI_ADDR_WIDTH     ( AxiAddrWidth               ),
    .AXI_DATA_WIDTH     ( AxiDataWidth               ),
    .AXI_USER_WIDTH     ( AxiUserWidth               ),
    .AXI_ID_WIDTH       ( AxiIdWidthMaster           ),
    .MASTER_SLICE_DEPTH ( 2                          ),
    .SLAVE_SLICE_DEPTH  ( 2                          )
) i_axi_xbar (
    .clk          ( clk        ),
    .rst_n        ( ndmreset_n ),
    .test_en_i    ( test_en    ),
    .slave        ( slave      ),
    .master       ( master     ),
    .start_addr_i ({
        ariane_soc::DebugBase,
        ariane_soc::ClkgenBase,
        ariane_soc::PaperBase,
        ariane_soc::ROMBase,
        ariane_soc::CLINTBase,
        ariane_soc::PLICBase,
        ariane_soc::UARTBase,
        ariane_soc::TimerBase,
        ariane_soc::SPIBase,
        ariane_soc::EthernetBase,
        ariane_soc::GPIOBase,
        ariane_soc::DRAMBase
    }),
    .end_addr_i   ({
        ariane_soc::DebugBase    + ariane_soc::DebugLength - 1,
        ariane_soc::ClkgenBase   + ariane_soc::ClkgenLength -1,
        ariane_soc::PaperBase    + ariane_soc::PaperLength - 1,
        ariane_soc::ROMBase      + ariane_soc::ROMLength - 1,
        ariane_soc::CLINTBase    + ariane_soc::CLINTLength - 1,
        ariane_soc::PLICBase     + ariane_soc::PLICLength - 1,
        ariane_soc::UARTBase     + ariane_soc::UARTLength - 1,
        ariane_soc::TimerBase    + ariane_soc::TimerLength - 1,
        ariane_soc::SPIBase      + ariane_soc::SPILength - 1,
        ariane_soc::EthernetBase + ariane_soc::EthernetLength -1,
        ariane_soc::GPIOBase     + ariane_soc::GPIOLength - 1,
        ariane_soc::DRAMBase     + ariane_soc::DRAMLength - 1
    }),
    .valid_rule_i (ariane_soc::ValidRule)
);

// ---------------
// Debug Module
// ---------------
dmi_jtag i_dmi_jtag (
    .clk_i                ( clk                  ),
    .rst_ni               ( rst_n                ),
    .dmi_rst_no           (                      ), // keep open
    .testmode_i           ( test_en              ),
    .dmi_req_valid_o      ( debug_req_valid      ),
    .dmi_req_ready_i      ( debug_req_ready      ),
    .dmi_req_o            ( debug_req            ),
    .dmi_resp_valid_i     ( debug_resp_valid     ),
    .dmi_resp_ready_o     ( debug_resp_ready     ),
    .dmi_resp_i           ( debug_resp           ),
    .tck_i                ( tck    ),
    .tms_i                ( tms    ),
    .trst_ni              ( trst_n ),
    .td_i                 ( tdi    ),
    .td_o                 ( tdo    ),
    .tdo_oe_o             (        )
);

ariane_axi::req_t    dm_axi_m_req;
ariane_axi::resp_t   dm_axi_m_resp;

logic                dm_slave_req;
logic                dm_slave_we;
logic [64-1:0]       dm_slave_addr;
logic [64/8-1:0]     dm_slave_be;
logic [64-1:0]       dm_slave_wdata;
logic [64-1:0]       dm_slave_rdata;

logic                dm_master_req;
logic [64-1:0]       dm_master_add;
logic                dm_master_we;
logic [64-1:0]       dm_master_wdata;
logic [64/8-1:0]     dm_master_be;
logic                dm_master_gnt;
logic                dm_master_r_valid;
logic [64-1:0]       dm_master_r_rdata;

// debug module
dm_top #(
    .NrHarts          ( 1                 ),
    .BusWidth         ( AxiDataWidth      ),
    .SelectableHarts  ( 1'b1              )
) i_dm_top (
    .clk_i            ( clk               ),
    .rst_ni           ( rst_n             ), // PoR
    .testmode_i       ( test_en           ),
    .ndmreset_o       ( ndmreset          ),
    .dmactive_o       ( dmactive          ), // active debug session
    .debug_req_o      ( debug_req_irq     ),
    .unavailable_i    ( '0                ),
    .hartinfo_i       ( {ariane_pkg::DebugHartInfo} ),
    .slave_req_i      ( dm_slave_req      ),
    .slave_we_i       ( dm_slave_we       ),
    .slave_addr_i     ( dm_slave_addr     ),
    .slave_be_i       ( dm_slave_be       ),
    .slave_wdata_i    ( dm_slave_wdata    ),
    .slave_rdata_o    ( dm_slave_rdata    ),
    .master_req_o     ( dm_master_req     ),
    .master_add_o     ( dm_master_add     ),
    .master_we_o      ( dm_master_we      ),
    .master_wdata_o   ( dm_master_wdata   ),
    .master_be_o      ( dm_master_be      ),
    .master_gnt_i     ( dm_master_gnt     ),
    .master_r_valid_i ( dm_master_r_valid ),
    .master_r_rdata_i ( dm_master_r_rdata ),
    .dmi_rst_ni       ( rst_n             ),
    .dmi_req_valid_i  ( debug_req_valid   ),
    .dmi_req_ready_o  ( debug_req_ready   ),
    .dmi_req_i        ( debug_req         ),
    .dmi_resp_valid_o ( debug_resp_valid  ),
    .dmi_resp_ready_i ( debug_resp_ready  ),
    .dmi_resp_o       ( debug_resp        )
);

axi2mem #(
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves    ),
    .AXI_ADDR_WIDTH ( AxiAddrWidth        ),
    .AXI_DATA_WIDTH ( AxiDataWidth        ),
    .AXI_USER_WIDTH ( AxiUserWidth        )
) i_dm_axi2mem (
    .clk_i      ( clk                       ),
    .rst_ni     ( rst_n                     ),
    .slave      ( master[ariane_soc::Debug] ),
    .req_o      ( dm_slave_req              ),
    .we_o       ( dm_slave_we               ),
    .addr_o     ( dm_slave_addr             ),
    .be_o       ( dm_slave_be               ),
    .data_o     ( dm_slave_wdata            ),
    .data_i     ( dm_slave_rdata            )
);

axi_master_connect i_dm_axi_master_connect (
  .axi_req_i(dm_axi_m_req),
  .axi_resp_o(dm_axi_m_resp),
  .master(slave[1])
);

axi_adapter #(
    .DATA_WIDTH            ( AxiDataWidth              )
) i_dm_axi_master (
    .clk_i                 ( clk                       ),
    .rst_ni                ( rst_n                     ),
    .req_i                 ( dm_master_req             ),
    .type_i                ( ariane_axi::SINGLE_REQ    ),
    .gnt_o                 ( dm_master_gnt             ),
    .gnt_id_o              (                           ),
    .addr_i                ( dm_master_add             ),
    .we_i                  ( dm_master_we              ),
    .wdata_i               ( dm_master_wdata           ),
    .be_i                  ( dm_master_be              ),
    .size_i                ( 2'b11                     ), // always do 64bit here and use byte enables to gate
    .id_i                  ( '0                        ),
    .valid_o               ( dm_master_r_valid         ),
    .rdata_o               ( dm_master_r_rdata         ),
    .id_o                  (                           ),
    .critical_word_o       (                           ),
    .critical_word_valid_o (                           ),
    .axi_req_o             ( dm_axi_m_req              ),
    .axi_resp_i            ( dm_axi_m_resp             )
);

// ---------------
// Core
// ---------------
ariane_axi::req_t    axi_ariane_req;
ariane_axi::resp_t   axi_ariane_resp;

ariane #(
    .ArianeCfg ( ariane_soc::ArianeSocCfg )
) i_ariane (
    .clk_i        ( clk                 ),
    .rst_ni       ( ndmreset_n          ),
    .boot_addr_i  ( ariane_soc::ROMBase ), // start fetching from ROM
    .hart_id_i    ( '0                  ),
    .irq_i        ( irq                 ),
    .ipi_i        ( ipi                 ),
    .time_irq_i   ( timer_irq           ),
    .debug_req_i  ( debug_req_irq       ),
    .axi_req_o    ( axi_ariane_req      ),
    .axi_resp_i   ( axi_ariane_resp     )
);

axi_master_connect i_axi_master_connect_ariane (.axi_req_i(axi_ariane_req), .axi_resp_o(axi_ariane_resp), .master(slave[0]));

// ---------------
// CLINT
// ---------------
// divide clock by two
always_ff @(posedge clk or negedge ndmreset_n) begin
  if (~ndmreset_n) begin
    rtc <= 0;
  end else begin
    rtc <= rtc ^ 1'b1;
  end
end

ariane_axi::req_t    axi_clint_req;
ariane_axi::resp_t   axi_clint_resp;

clint #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .NR_CORES       ( 1                )
) i_clint (
    .clk_i       ( clk            ),
    .rst_ni      ( ndmreset_n     ),
    .testmode_i  ( test_en        ),
    .axi_req_i   ( axi_clint_req  ),
    .axi_resp_o  ( axi_clint_resp ),
    .rtc_i       ( rtc            ),
    .timer_irq_o ( timer_irq      ),
    .ipi_o       ( ipi            )
);

axi_slave_connect i_axi_slave_connect_clint (.axi_req_o(axi_clint_req), .axi_resp_i(axi_clint_resp), .slave(master[ariane_soc::CLINT]));

// ---------------
// ROM
// ---------------
axi2mem #(
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_USER_WIDTH ( AxiUserWidth     )
) i_axi2rom (
    .clk_i  ( clk                     ),
    .rst_ni ( ndmreset_n              ),
    .slave  ( master[ariane_soc::ROM] ),
    .req_o  ( rom_req                 ),
    .we_o   (                         ),
    .addr_o ( rom_addr                ),
    .be_o   (                         ),
    .data_o (                         ),
    .data_i ( rom_rdata               )
);

bootrom i_bootrom (
    .clk_i   ( clk       ),
    .req_i   ( rom_req   ),
    .addr_i  ( rom_addr  ),
    .rdata_o ( rom_rdata )
);

// ---------------
// Peripherals
// ---------------
`ifdef KC705
  logic [7:0] unused_led;
  logic [3:0] unused_switches = 4'b0000;
`endif

ariane_peripherals #(
    .AxiAddrWidth ( AxiAddrWidth     ),
    .AxiDataWidth ( AxiDataWidth     ),
    .AxiIdWidth   ( AxiIdWidthSlaves ),
    .AxiUserWidth ( AxiUserWidth     ),
    .InclUART     ( 1'b1             ),
    .InclGPIO     ( 1'b1             ),
    `ifdef KINTEX7
    .InclSPI      ( 1'b1         ),
    .InclEthernet ( 1'b1         ),
    `elsif KC705
    .InclSPI      ( 1'b1         ),
    .InclEthernet ( 1'b0         ), // Ethernet requires RAMB16 fpga/src/ariane-ethernet/dualmem_widen8.sv to be defined
    `elsif VC707
    .InclSPI      ( 1'b1         ),
    .InclEthernet ( 1'b0         ),
    `elsif VCU118
    .InclSPI      ( 1'b0         ),
    .InclEthernet ( 1'b0         ),
    `endif
    .InclTimer    (1'b1          ),
    .InclPAPER    (1'b1          ),
    .InclCLKGen   (1'b1          )
    
) i_ariane_peripherals (
    .clk_i        ( clk                          ),
    .clk_200MHz_i ( ddr_clock_out                ),
    .rst_ni       ( ndmreset_n                   ),
    .clkgen       ( master[ariane_soc::CLKGEN]   ),
    .plic         ( master[ariane_soc::PLIC]     ),
    .uart         ( master[ariane_soc::UART]     ),
    .spi          ( master[ariane_soc::SPI]      ),
    .gpio         ( master[ariane_soc::GPIO]     ),
    .eth_clk_i    ( eth_clk                      ),
    .ethernet     ( master[ariane_soc::Ethernet] ),
    .timer        ( master[ariane_soc::Timer]    ),
    .paper_ms     ( dram_sl[1]                   ),
    .paper_sl     ( paper_master                 ),
    .irq_o        ( irq                          ),
    .rx_i         ( rx                           ),
    .tx_o         ( tx                           ),
    .eth_txck(eth_txck),
    .eth_rxck(eth_rxck),
    .eth_rxctl(eth_rxctl),
    .eth_rxd(eth_rxd),
    .eth_rst_n(eth_rst_n),
    .eth_txctl(eth_txctl),
    .eth_txd(eth_txd),
    .eth_mdio(eth_mdio),
    .eth_mdc(eth_mdc),
    .phy_tx_clk_i   ( phy_tx_clk                  ),
    .sd_clk_i       ( sd_clk_sys                  ),
    .spi_clk_o      ( spi_clk_o                   ),
    .spi_mosi       ( spi_mosi                    ),
    .spi_miso       ( spi_miso                    ),
    .spi_ss         ( spi_ss                      ),
    `ifdef KC705
      .leds_o         ( {led[3:0], unused_led[7:4]}),
      .dip_switches_i ( {sw, unused_switches}     ),
    `else
      .leds_o         ( led                       ),
      .dip_switches_i ( sw                        ),
    `endif
    .paper_bus_clk  ( paper_clk               ),
    .ser_px_clk_i   ( ser_px_clk              ),
    .px_clk_i       ( px_clk                  ),
    .px_clk_rst     ( px_ndmreset_n           ),
    .paper_rst_i    ( paper_ndmreset_n        ),
    .hdmi_tx_clk_n  ( hdmi_tx_clk_n           ),
    .hdmi_tx_clk_p  ( hdmi_tx_clk_p           ),
    .hdmi_tx_n      ( hdmi_tx_n               ),
    .hdmi_tx_p      ( hdmi_tx_p               ),

    .clk_out1_o     ( px_clk         ),   
    .clk_out2_o     ( ser_px_clk     ),
    .locked_o       ( px_pll_locked  )
 //   .ps2_clk_io     ( ps2_clk        ),
//    .ps2_data_io    ( ps2_data       )
    
);

axi_cdc_intf #(
   .AXI_ID_WIDTH    ( AxiIdWidthSlaves  ),
   .AXI_ADDR_WIDTH  ( AxiAddrWidth      ),
   .AXI_DATA_WIDTH  ( AxiDataWidth      ),
   .AXI_USER_WIDTH  ( AxiUserWidth      ),
   .LOG_DEPTH       ( 1                 )
) i_axi_cdc_paper (
   .src_clk_i   ( clk                       ),
   .src_rst_ni  ( ndmreset_n                ),
   .src         ( master[ariane_soc::Paper] ),
   .dst_clk_i   ( paper_clk                 ),
   .dst_rst_ni  ( paper_ndmreset_n          ),
   .dst         ( paper_master              ) 
);


// ---------------------
// Board peripherals
// ---------------------
// ---------------
// DDR
// ---------------
logic [AxiIdWidthSlaves-1:0] s_axi_awid;
logic [AxiAddrWidth-1:0]     s_axi_awaddr;
logic [7:0]                  s_axi_awlen;
logic [2:0]                  s_axi_awsize;
logic [1:0]                  s_axi_awburst;
logic [0:0]                  s_axi_awlock;
logic [3:0]                  s_axi_awcache;
logic [2:0]                  s_axi_awprot;
logic [3:0]                  s_axi_awregion;
logic [3:0]                  s_axi_awqos;
logic                        s_axi_awvalid;
logic                        s_axi_awready;
logic [AxiDataWidth-1:0]     s_axi_wdata;
logic [AxiDataWidth/8-1:0]   s_axi_wstrb;
logic                        s_axi_wlast;
logic                        s_axi_wvalid;
logic                        s_axi_wready;
logic [AxiIdWidthSlaves-1:0] s_axi_bid;
logic [1:0]                  s_axi_bresp;
logic                        s_axi_bvalid;
logic                        s_axi_bready;
logic [AxiIdWidthSlaves-1:0] s_axi_arid;
logic [AxiAddrWidth-1:0]     s_axi_araddr;
logic [7:0]                  s_axi_arlen;
logic [2:0]                  s_axi_arsize;
logic [1:0]                  s_axi_arburst;
logic [0:0]                  s_axi_arlock;
logic [3:0]                  s_axi_arcache;
logic [2:0]                  s_axi_arprot;
logic [3:0]                  s_axi_arregion;
logic [3:0]                  s_axi_arqos;
logic                        s_axi_arvalid;
logic                        s_axi_arready;
logic [AxiIdWidthSlaves-1:0] s_axi_rid;
logic [AxiDataWidth-1:0]     s_axi_rdata;
logic [1:0]                  s_axi_rresp;
logic                        s_axi_rlast;
logic                        s_axi_rvalid;
logic                        s_axi_rready;

AXI_BUS #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .AXI_USER_WIDTH ( AxiUserWidth     )
) dram();

//outputs of the dram axi mux
AXI_BUS #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .AXI_USER_WIDTH ( AxiUserWidth     )
) dram_sl[1:0]();

// to crossbar
AXI_BUS #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .AXI_USER_WIDTH ( AxiUserWidth     )
) dram_xbar();

axi_riscv_atomics_wrap #(
    .AXI_ADDR_WIDTH ( AxiAddrWidth     ),
    .AXI_DATA_WIDTH ( AxiDataWidth     ),
    .AXI_ID_WIDTH   ( AxiIdWidthSlaves ),
    .AXI_USER_WIDTH ( AxiUserWidth     ),
    .AXI_MAX_WRITE_TXNS ( 1  ),
    .RISCV_WORD_WIDTH   ( 64 )
) i_axi_riscv_atomics (
    .clk_i  ( clk                      ),
    .rst_ni ( ndmreset_n               ),
    .slv    ( master[ariane_soc::DRAM] ),
    .mst    ( dram_xbar                )
);

axi_cdc_intf #(
   .AXI_ID_WIDTH    ( AxiIdWidthSlaves  ),
   .AXI_ADDR_WIDTH  ( AxiAddrWidth      ),
   .AXI_DATA_WIDTH  ( AxiDataWidth      ),
   .AXI_USER_WIDTH  ( AxiUserWidth      ),
   .LOG_DEPTH       ( 1                 )
) i_axi_cdc_dram (
   .src_clk_i   ( clk                ),
   .src_rst_ni  ( ndmreset_n         ),
   .src         ( dram_xbar          ),
   .dst_clk_i   ( paper_clk          ),
   .dst_rst_ni  ( paper_ndmreset_n   ),
   .dst         ( dram_sl[0]         ) 
);

axi_mux_intf #(
    .SLV_AXI_ID_WIDTH ( AxiIdWidthMaster  ),
    .MST_AXI_ID_WIDTH ( AxiIdWidthSlaves  ),
    .AXI_ADDR_WIDTH   ( AxiAddrWidth      ),
    .AXI_DATA_WIDTH   ( AxiDataWidth      ),
    .AXI_USER_WIDTH   ( AxiUserWidth      ),
    .NO_SLV_PORTS     ( 2                 )
) i_axi_mux (
    .clk_i  ( paper_clk         ),
    .rst_ni ( paper_ndmreset_n  ),
    .test_i ( test_en           ),
    .slv    ( dram_sl           ),
    .mst    ( dram              )
);

`ifdef PROTOCOL_CHECKER
logic pc_status;

xlnx_protocol_checker i_xlnx_protocol_checker (
  .pc_status(),
  .pc_asserted(pc_status),
  .aclk(paper_clk),
  .aresetn(paper_ndmreset_n),
  .pc_axi_awid     (dram.aw_id),
  .pc_axi_awaddr   (dram.aw_addr),
  .pc_axi_awlen    (dram.aw_len),
  .pc_axi_awsize   (dram.aw_size),
  .pc_axi_awburst  (dram.aw_burst),
  .pc_axi_awlock   (dram.aw_lock),
  .pc_axi_awcache  (dram.aw_cache),
  .pc_axi_awprot   (dram.aw_prot),
  .pc_axi_awqos    (dram.aw_qos),
  .pc_axi_awregion (dram.aw_region),
  .pc_axi_awuser   (dram.aw_user),
  .pc_axi_awvalid  (dram.aw_valid),
  .pc_axi_awready  (dram.aw_ready),
  .pc_axi_wlast    (dram.w_last),
  .pc_axi_wdata    (dram.w_data),
  .pc_axi_wstrb    (dram.w_strb),
  .pc_axi_wuser    (dram.w_user),
  .pc_axi_wvalid   (dram.w_valid),
  .pc_axi_wready   (dram.w_ready),
  .pc_axi_bid      (dram.b_id),
  .pc_axi_bresp    (dram.b_resp),
  .pc_axi_buser    (dram.b_user),
  .pc_axi_bvalid   (dram.b_valid),
  .pc_axi_bready   (dram.b_ready),
  .pc_axi_arid     (dram.ar_id),
  .pc_axi_araddr   (dram.ar_addr),
  .pc_axi_arlen    (dram.ar_len),
  .pc_axi_arsize   (dram.ar_size),
  .pc_axi_arburst  (dram.ar_burst),
  .pc_axi_arlock   (dram.ar_lock),
  .pc_axi_arcache  (dram.ar_cache),
  .pc_axi_arprot   (dram.ar_prot),
  .pc_axi_arqos    (dram.ar_qos),
  .pc_axi_arregion (dram.ar_region),
  .pc_axi_aruser   (dram.ar_user),
  .pc_axi_arvalid  (dram.ar_valid),
  .pc_axi_arready  (dram.ar_ready),
  .pc_axi_rid      (dram.r_id),
  .pc_axi_rlast    (dram.r_last),
  .pc_axi_rdata    (dram.r_data),
  .pc_axi_rresp    (dram.r_resp),
  .pc_axi_ruser    (dram.r_user),
  .pc_axi_rvalid   (dram.r_valid),
  .pc_axi_rready   (dram.r_ready)
);
`endif

assign dram.r_user = '0;
assign dram.b_user = '0;

xlnx_axi_clock_converter i_xlnx_axi_clock_converter_ddr (
  .s_axi_aclk     ( paper_clk        ),
  .s_axi_aresetn  ( paper_ndmreset_n ),
  .s_axi_awid     ( dram.aw_id       ),
  .s_axi_awaddr   ( dram.aw_addr     ),
  .s_axi_awlen    ( dram.aw_len      ),
  .s_axi_awsize   ( dram.aw_size     ),
  .s_axi_awburst  ( dram.aw_burst    ),
  .s_axi_awlock   ( dram.aw_lock     ),
  .s_axi_awcache  ( dram.aw_cache    ),
  .s_axi_awprot   ( dram.aw_prot     ),
  .s_axi_awregion ( dram.aw_region   ),
  .s_axi_awqos    ( dram.aw_qos      ),
  .s_axi_awvalid  ( dram.aw_valid    ),
  .s_axi_awready  ( dram.aw_ready    ),
  .s_axi_wdata    ( dram.w_data      ),
  .s_axi_wstrb    ( dram.w_strb      ),
  .s_axi_wlast    ( dram.w_last      ),
  .s_axi_wvalid   ( dram.w_valid     ),
  .s_axi_wready   ( dram.w_ready     ),
  .s_axi_bid      ( dram.b_id        ),
  .s_axi_bresp    ( dram.b_resp      ),
  .s_axi_bvalid   ( dram.b_valid     ),
  .s_axi_bready   ( dram.b_ready     ),
  .s_axi_arid     ( dram.ar_id       ),
  .s_axi_araddr   ( dram.ar_addr     ),
  .s_axi_arlen    ( dram.ar_len      ),
  .s_axi_arsize   ( dram.ar_size     ),
  .s_axi_arburst  ( dram.ar_burst    ),
  .s_axi_arlock   ( dram.ar_lock     ),
  .s_axi_arcache  ( dram.ar_cache    ),
  .s_axi_arprot   ( dram.ar_prot     ),
  .s_axi_arregion ( dram.ar_region   ),
  .s_axi_arqos    ( dram.ar_qos      ),
  .s_axi_arvalid  ( dram.ar_valid    ),
  .s_axi_arready  ( dram.ar_ready    ),
  .s_axi_rid      ( dram.r_id        ),
  .s_axi_rdata    ( dram.r_data      ),
  .s_axi_rresp    ( dram.r_resp      ),
  .s_axi_rlast    ( dram.r_last      ),
  .s_axi_rvalid   ( dram.r_valid     ),
  .s_axi_rready   ( dram.r_ready     ),
  // to size converter
  .m_axi_aclk     ( ddr_clock_out    ),
  .m_axi_aresetn  ( ndmreset_n       ),
  .m_axi_awid     ( s_axi_awid       ),
  .m_axi_awaddr   ( s_axi_awaddr     ),
  .m_axi_awlen    ( s_axi_awlen      ),
  .m_axi_awsize   ( s_axi_awsize     ),
  .m_axi_awburst  ( s_axi_awburst    ),
  .m_axi_awlock   ( s_axi_awlock     ),
  .m_axi_awcache  ( s_axi_awcache    ),
  .m_axi_awprot   ( s_axi_awprot     ),
  .m_axi_awregion ( s_axi_awregion   ),
  .m_axi_awqos    ( s_axi_awqos      ),
  .m_axi_awvalid  ( s_axi_awvalid    ),
  .m_axi_awready  ( s_axi_awready    ),
  .m_axi_wdata    ( s_axi_wdata      ),
  .m_axi_wstrb    ( s_axi_wstrb      ),
  .m_axi_wlast    ( s_axi_wlast      ),
  .m_axi_wvalid   ( s_axi_wvalid     ),
  .m_axi_wready   ( s_axi_wready     ),
  .m_axi_bid      ( s_axi_bid        ),
  .m_axi_bresp    ( s_axi_bresp      ),
  .m_axi_bvalid   ( s_axi_bvalid     ),
  .m_axi_bready   ( s_axi_bready     ),
  .m_axi_arid     ( s_axi_arid       ),
  .m_axi_araddr   ( s_axi_araddr     ),
  .m_axi_arlen    ( s_axi_arlen      ),
  .m_axi_arsize   ( s_axi_arsize     ),
  .m_axi_arburst  ( s_axi_arburst    ),
  .m_axi_arlock   ( s_axi_arlock     ),
  .m_axi_arcache  ( s_axi_arcache    ),
  .m_axi_arprot   ( s_axi_arprot     ),
  .m_axi_arregion ( s_axi_arregion   ),
  .m_axi_arqos    ( s_axi_arqos      ),
  .m_axi_arvalid  ( s_axi_arvalid    ),
  .m_axi_arready  ( s_axi_arready    ),
  .m_axi_rid      ( s_axi_rid        ),
  .m_axi_rdata    ( s_axi_rdata      ),
  .m_axi_rresp    ( s_axi_rresp      ),
  .m_axi_rlast    ( s_axi_rlast      ),
  .m_axi_rvalid   ( s_axi_rvalid     ),
  .m_axi_rready   ( s_axi_rready     )
);


xlnx_clk_gen i_xlnx_clk_gen (
  .clk_out1 ( clk           ), // 50  MHz
  .clk_out2 ( phy_tx_clk    ), // 125 MHz (for RGMII PHY)
  .clk_out3 ( eth_clk       ), // 125 MHz quadrature (90 deg phase shift)
  .clk_out4 ( sd_clk_sys    ), // 50  MHz clock
  .clk_out5 ( paper_clk     ), // 166 Mhz clock
  .reset    ( cpu_reset     ),
  .locked   ( pll_locked    ),
  .clk_in1  ( ddr_clock_out )
);


`ifdef KINTEX7
fan_ctrl i_fan_ctrl (
    .clk_i         ( clk        ),
    .rst_ni        ( ndmreset_n ),
    .pwm_setting_i ( '1         ),
    .fan_pwm_o     ( fan_pwm    )
);

xlnx_mig_7_ddr3 i_ddr (
    .sys_clk_p,
    .sys_clk_n,
    .ddr3_dq,
    .ddr3_dqs_n,
    .ddr3_dqs_p,
    .ddr3_addr,
    .ddr3_ba,
    .ddr3_ras_n,
    .ddr3_cas_n,
    .ddr3_we_n,
    .ddr3_reset_n,
    .ddr3_ck_p,
    .ddr3_ck_n,
    .ddr3_cke,
    .ddr3_cs_n,
    .ddr3_dm,
    .ddr3_odt,
    .mmcm_locked     (                ), // keep open
    .app_sr_req      ( '0             ),
    .app_ref_req     ( '0             ),
    .app_zq_req      ( '0             ),
    .app_sr_active   (                ), // keep open
    .app_ref_ack     (                ), // keep open
    .app_zq_ack      (                ), // keep open
    .ui_clk          ( ddr_clock_out  ),
    .ui_clk_sync_rst ( ddr_sync_reset ),
    .aresetn         ( ndmreset_n     ),
    .s_axi_awid,
    .s_axi_awaddr    ( s_axi_awaddr[29:0] ),
    .s_axi_awlen,
    .s_axi_awsize,
    .s_axi_awburst,
    .s_axi_awlock,
    .s_axi_awcache,
    .s_axi_awprot,
    .s_axi_awqos,
    .s_axi_awvalid,
    .s_axi_awready,
    .s_axi_wdata,
    .s_axi_wstrb,
    .s_axi_wlast,
    .s_axi_wvalid,
    .s_axi_wready,
    .s_axi_bready,
    .s_axi_bid,
    .s_axi_bresp,
    .s_axi_bvalid,
    .s_axi_arid,
    .s_axi_araddr     ( s_axi_araddr[29:0] ),
    .s_axi_arlen,
    .s_axi_arsize,
    .s_axi_arburst,
    .s_axi_arlock,
    .s_axi_arcache,
    .s_axi_arprot,
    .s_axi_arqos,
    .s_axi_arvalid,
    .s_axi_arready,
    .s_axi_rready,
    .s_axi_rid,
    .s_axi_rdata,
    .s_axi_rresp,
    .s_axi_rlast,
    .s_axi_rvalid,
    .init_calib_complete (            ), // keep open
    .device_temp         (            ), // keep open
    .sys_rst             ( cpu_resetn )
);
`elsif VC707
fan_ctrl i_fan_ctrl (
    .clk_i         ( clk        ),
    .rst_ni        ( ndmreset_n ),
    .pwm_setting_i ( '1         ),
    .fan_pwm_o     ( fan_pwm    )
);

xlnx_mig_7_ddr3 i_ddr (
    .sys_clk_p,
    .sys_clk_n,
    .ddr3_dq,
    .ddr3_dqs_n,
    .ddr3_dqs_p,
    .ddr3_addr,
    .ddr3_ba,
    .ddr3_ras_n,
    .ddr3_cas_n,
    .ddr3_we_n,
    .ddr3_reset_n,
    .ddr3_ck_p,
    .ddr3_ck_n,
    .ddr3_cke,
    .ddr3_cs_n,
    .ddr3_dm,
    .ddr3_odt,
    .mmcm_locked     (                ), // keep open
    .app_sr_req      ( '0             ),
    .app_ref_req     ( '0             ),
    .app_zq_req      ( '0             ),
    .app_sr_active   (                ), // keep open
    .app_ref_ack     (                ), // keep open
    .app_zq_ack      (                ), // keep open
    .ui_clk          ( ddr_clock_out  ),
    .ui_clk_sync_rst ( ddr_sync_reset ),
    .aresetn         ( ndmreset_n     ),
    .s_axi_awid,
    .s_axi_awaddr    ( s_axi_awaddr[29:0] ),
    .s_axi_awlen,
    .s_axi_awsize,
    .s_axi_awburst,
    .s_axi_awlock,
    .s_axi_awcache,
    .s_axi_awprot,
    .s_axi_awqos,
    .s_axi_awvalid,
    .s_axi_awready,
    .s_axi_wdata,
    .s_axi_wstrb,
    .s_axi_wlast,
    .s_axi_wvalid,
    .s_axi_wready,
    .s_axi_bready,
    .s_axi_bid,
    .s_axi_bresp,
    .s_axi_bvalid,
    .s_axi_arid,
    .s_axi_araddr     ( s_axi_araddr[29:0] ),
    .s_axi_arlen,
    .s_axi_arsize,
    .s_axi_arburst,
    .s_axi_arlock,
    .s_axi_arcache,
    .s_axi_arprot,
    .s_axi_arqos,
    .s_axi_arvalid,
    .s_axi_arready,
    .s_axi_rready,
    .s_axi_rid,
    .s_axi_rdata,
    .s_axi_rresp,
    .s_axi_rlast,
    .s_axi_rvalid,
    .init_calib_complete (            ), // keep open
    .device_temp         (            ), // keep open
    .sys_rst             ( cpu_resetn )
);
`elsif VCU118

  logic [63:0]  dram_dwidth_axi_awaddr;
  logic [7:0]   dram_dwidth_axi_awlen;
  logic [2:0]   dram_dwidth_axi_awsize;
  logic [1:0]   dram_dwidth_axi_awburst;
  logic [0:0]   dram_dwidth_axi_awlock;
  logic [3:0]   dram_dwidth_axi_awcache;
  logic [2:0]   dram_dwidth_axi_awprot;
  logic [3:0]   dram_dwidth_axi_awqos;
  logic         dram_dwidth_axi_awvalid;
  logic         dram_dwidth_axi_awready;
  logic [511:0] dram_dwidth_axi_wdata;
  logic [63:0]  dram_dwidth_axi_wstrb;
  logic         dram_dwidth_axi_wlast;
  logic         dram_dwidth_axi_wvalid;
  logic         dram_dwidth_axi_wready;
  logic         dram_dwidth_axi_bready;
  logic [1:0]   dram_dwidth_axi_bresp;
  logic         dram_dwidth_axi_bvalid;
  logic [63:0]  dram_dwidth_axi_araddr;
  logic [7:0]   dram_dwidth_axi_arlen;
  logic [2:0]   dram_dwidth_axi_arsize;
  logic [1:0]   dram_dwidth_axi_arburst;
  logic [0:0]   dram_dwidth_axi_arlock;
  logic [3:0]   dram_dwidth_axi_arcache;
  logic [2:0]   dram_dwidth_axi_arprot;
  logic [3:0]   dram_dwidth_axi_arqos;
  logic         dram_dwidth_axi_arvalid;
  logic         dram_dwidth_axi_arready;
  logic         dram_dwidth_axi_rready;
  logic         dram_dwidth_axi_rlast;
  logic         dram_dwidth_axi_rvalid;
  logic [1:0]   dram_dwidth_axi_rresp;
  logic [511:0] dram_dwidth_axi_rdata;

axi_dwidth_converter_512_64 i_axi_dwidth_converter_512_64 (
  .s_axi_aclk     ( ddr_clock_out            ),
  .s_axi_aresetn  ( ndmreset_n               ),

  .s_axi_awid     ( s_axi_awid               ),
  .s_axi_awaddr   ( s_axi_awaddr             ),
  .s_axi_awlen    ( s_axi_awlen              ),
  .s_axi_awsize   ( s_axi_awsize             ),
  .s_axi_awburst  ( s_axi_awburst            ),
  .s_axi_awlock   ( s_axi_awlock             ),
  .s_axi_awcache  ( s_axi_awcache            ),
  .s_axi_awprot   ( s_axi_awprot             ),
  .s_axi_awregion ( '0                       ),
  .s_axi_awqos    ( s_axi_awqos              ),
  .s_axi_awvalid  ( s_axi_awvalid            ),
  .s_axi_awready  ( s_axi_awready            ),
  .s_axi_wdata    ( s_axi_wdata              ),
  .s_axi_wstrb    ( s_axi_wstrb              ),
  .s_axi_wlast    ( s_axi_wlast              ),
  .s_axi_wvalid   ( s_axi_wvalid             ),
  .s_axi_wready   ( s_axi_wready             ),
  .s_axi_bid      ( s_axi_bid                ),
  .s_axi_bresp    ( s_axi_bresp              ),
  .s_axi_bvalid   ( s_axi_bvalid             ),
  .s_axi_bready   ( s_axi_bready             ),
  .s_axi_arid     ( s_axi_arid               ),
  .s_axi_araddr   ( s_axi_araddr             ),
  .s_axi_arlen    ( s_axi_arlen              ),
  .s_axi_arsize   ( s_axi_arsize             ),
  .s_axi_arburst  ( s_axi_arburst            ),
  .s_axi_arlock   ( s_axi_arlock             ),
  .s_axi_arcache  ( s_axi_arcache            ),
  .s_axi_arprot   ( s_axi_arprot             ),
  .s_axi_arregion ( '0                       ),
  .s_axi_arqos    ( s_axi_arqos              ),
  .s_axi_arvalid  ( s_axi_arvalid            ),
  .s_axi_arready  ( s_axi_arready            ),
  .s_axi_rid      ( s_axi_rid                ),
  .s_axi_rdata    ( s_axi_rdata              ),
  .s_axi_rresp    ( s_axi_rresp              ),
  .s_axi_rlast    ( s_axi_rlast              ),
  .s_axi_rvalid   ( s_axi_rvalid             ),
  .s_axi_rready   ( s_axi_rready             ),

  .m_axi_awaddr   ( dram_dwidth_axi_awaddr   ),
  .m_axi_awlen    ( dram_dwidth_axi_awlen    ),
  .m_axi_awsize   ( dram_dwidth_axi_awsize   ),
  .m_axi_awburst  ( dram_dwidth_axi_awburst  ),
  .m_axi_awlock   ( dram_dwidth_axi_awlock   ),
  .m_axi_awcache  ( dram_dwidth_axi_awcache  ),
  .m_axi_awprot   ( dram_dwidth_axi_awprot   ),
  .m_axi_awregion (                          ), // left open
  .m_axi_awqos    ( dram_dwidth_axi_awqos    ),
  .m_axi_awvalid  ( dram_dwidth_axi_awvalid  ),
  .m_axi_awready  ( dram_dwidth_axi_awready  ),
  .m_axi_wdata    ( dram_dwidth_axi_wdata    ),
  .m_axi_wstrb    ( dram_dwidth_axi_wstrb    ),
  .m_axi_wlast    ( dram_dwidth_axi_wlast    ),
  .m_axi_wvalid   ( dram_dwidth_axi_wvalid   ),
  .m_axi_wready   ( dram_dwidth_axi_wready   ),
  .m_axi_bresp    ( dram_dwidth_axi_bresp    ),
  .m_axi_bvalid   ( dram_dwidth_axi_bvalid   ),
  .m_axi_bready   ( dram_dwidth_axi_bready   ),
  .m_axi_araddr   ( dram_dwidth_axi_araddr   ),
  .m_axi_arlen    ( dram_dwidth_axi_arlen    ),
  .m_axi_arsize   ( dram_dwidth_axi_arsize   ),
  .m_axi_arburst  ( dram_dwidth_axi_arburst  ),
  .m_axi_arlock   ( dram_dwidth_axi_arlock   ),
  .m_axi_arcache  ( dram_dwidth_axi_arcache  ),
  .m_axi_arprot   ( dram_dwidth_axi_arprot   ),
  .m_axi_arregion (                          ),
  .m_axi_arqos    ( dram_dwidth_axi_arqos    ),
  .m_axi_arvalid  ( dram_dwidth_axi_arvalid  ),
  .m_axi_arready  ( dram_dwidth_axi_arready  ),
  .m_axi_rdata    ( dram_dwidth_axi_rdata    ),
  .m_axi_rresp    ( dram_dwidth_axi_rresp    ),
  .m_axi_rlast    ( dram_dwidth_axi_rlast    ),
  .m_axi_rvalid   ( dram_dwidth_axi_rvalid   ),
  .m_axi_rready   ( dram_dwidth_axi_rready   )
);

  ddr4_0 i_ddr (
    .c0_init_calib_complete (                              ),
    .dbg_clk                (                              ),
    .c0_sys_clk_p           ( c0_sys_clk_p                 ),
    .c0_sys_clk_n           ( c0_sys_clk_n                 ),
    .dbg_bus                (                              ),
    .c0_ddr4_adr            ( c0_ddr4_adr                  ),
    .c0_ddr4_ba             ( c0_ddr4_ba                   ),
    .c0_ddr4_cke            ( c0_ddr4_cke                  ),
    .c0_ddr4_cs_n           ( c0_ddr4_cs_n                 ),
    .c0_ddr4_dm_dbi_n       ( c0_ddr4_dm_dbi_n             ),
    .c0_ddr4_dq             ( c0_ddr4_dq                   ),
    .c0_ddr4_dqs_c          ( c0_ddr4_dqs_c                ),
    .c0_ddr4_dqs_t          ( c0_ddr4_dqs_t                ),
    .c0_ddr4_odt            ( c0_ddr4_odt                  ),
    .c0_ddr4_bg             ( c0_ddr4_bg                   ),
    .c0_ddr4_reset_n        ( c0_ddr4_reset_n              ),
    .c0_ddr4_act_n          ( c0_ddr4_act_n                ),
    .c0_ddr4_ck_c           ( c0_ddr4_ck_c                 ),
    .c0_ddr4_ck_t           ( c0_ddr4_ck_t                 ),
    .c0_ddr4_ui_clk         ( ddr_clock_out                ),
    .c0_ddr4_ui_clk_sync_rst( ddr_sync_reset               ),
    .c0_ddr4_aresetn        ( ndmreset_n                   ),
    .c0_ddr4_s_axi_awid     ( '0                           ),
    .c0_ddr4_s_axi_awaddr   ( dram_dwidth_axi_awaddr[30:0] ),
    .c0_ddr4_s_axi_awlen    ( dram_dwidth_axi_awlen        ),
    .c0_ddr4_s_axi_awsize   ( dram_dwidth_axi_awsize       ),
    .c0_ddr4_s_axi_awburst  ( dram_dwidth_axi_awburst      ),
    .c0_ddr4_s_axi_awlock   ( dram_dwidth_axi_awlock       ),
    .c0_ddr4_s_axi_awcache  ( dram_dwidth_axi_awcache      ),
    .c0_ddr4_s_axi_awprot   ( dram_dwidth_axi_awprot       ),
    .c0_ddr4_s_axi_awqos    ( dram_dwidth_axi_awqos        ),
    .c0_ddr4_s_axi_awvalid  ( dram_dwidth_axi_awvalid      ),
    .c0_ddr4_s_axi_awready  ( dram_dwidth_axi_awready      ),
    .c0_ddr4_s_axi_wdata    ( dram_dwidth_axi_wdata        ),
    .c0_ddr4_s_axi_wstrb    ( dram_dwidth_axi_wstrb        ),
    .c0_ddr4_s_axi_wlast    ( dram_dwidth_axi_wlast        ),
    .c0_ddr4_s_axi_wvalid   ( dram_dwidth_axi_wvalid       ),
    .c0_ddr4_s_axi_wready   ( dram_dwidth_axi_wready       ),
    .c0_ddr4_s_axi_bready   ( dram_dwidth_axi_bready       ),
    .c0_ddr4_s_axi_bid      (                              ),
    .c0_ddr4_s_axi_bresp    ( dram_dwidth_axi_bresp        ),
    .c0_ddr4_s_axi_bvalid   ( dram_dwidth_axi_bvalid       ),
    .c0_ddr4_s_axi_arid     ( '0                           ),
    .c0_ddr4_s_axi_araddr   ( dram_dwidth_axi_araddr[30:0] ),
    .c0_ddr4_s_axi_arlen    ( dram_dwidth_axi_arlen        ),
    .c0_ddr4_s_axi_arsize   ( dram_dwidth_axi_arsize       ),
    .c0_ddr4_s_axi_arburst  ( dram_dwidth_axi_arburst      ),
    .c0_ddr4_s_axi_arlock   ( dram_dwidth_axi_arlock       ),
    .c0_ddr4_s_axi_arcache  ( dram_dwidth_axi_arcache      ),
    .c0_ddr4_s_axi_arprot   ( dram_dwidth_axi_arprot       ),
    .c0_ddr4_s_axi_arqos    ( dram_dwidth_axi_arqos        ),
    .c0_ddr4_s_axi_arvalid  ( dram_dwidth_axi_arvalid      ),
    .c0_ddr4_s_axi_arready  ( dram_dwidth_axi_arready      ),
    .c0_ddr4_s_axi_rready   ( dram_dwidth_axi_rready       ),
    .c0_ddr4_s_axi_rlast    ( dram_dwidth_axi_rlast        ),
    .c0_ddr4_s_axi_rvalid   ( dram_dwidth_axi_rvalid       ),
    .c0_ddr4_s_axi_rresp    ( dram_dwidth_axi_rresp        ),
    .c0_ddr4_s_axi_rid      (                              ),
    .c0_ddr4_s_axi_rdata    ( dram_dwidth_axi_rdata        ),
    .sys_rst                ( cpu_reset                    )
  );


  logic pcie_ref_clk;
  logic pcie_ref_clk_gt;

  logic pcie_axi_clk;
  logic pcie_axi_rstn;

  logic         pcie_axi_awready;
  logic         pcie_axi_wready;
  logic [3:0]   pcie_axi_bid;
  logic [1:0]   pcie_axi_bresp;
  logic         pcie_axi_bvalid;
  logic         pcie_axi_arready;
  logic [3:0]   pcie_axi_rid;
  logic [255:0] pcie_axi_rdata;
  logic [1:0]   pcie_axi_rresp;
  logic         pcie_axi_rlast;
  logic         pcie_axi_rvalid;
  logic [3:0]   pcie_axi_awid;
  logic [63:0]  pcie_axi_awaddr;
  logic [7:0]   pcie_axi_awlen;
  logic [2:0]   pcie_axi_awsize;
  logic [1:0]   pcie_axi_awburst;
  logic [2:0]   pcie_axi_awprot;
  logic         pcie_axi_awvalid;
  logic         pcie_axi_awlock;
  logic [3:0]   pcie_axi_awcache;
  logic [255:0] pcie_axi_wdata;
  logic [31:0]  pcie_axi_wstrb;
  logic         pcie_axi_wlast;
  logic         pcie_axi_wvalid;
  logic         pcie_axi_bready;
  logic [3:0]   pcie_axi_arid;
  logic [63:0]  pcie_axi_araddr;
  logic [7:0]   pcie_axi_arlen;
  logic [2:0]   pcie_axi_arsize;
  logic [1:0]   pcie_axi_arburst;
  logic [2:0]   pcie_axi_arprot;
  logic         pcie_axi_arvalid;
  logic         pcie_axi_arlock;
  logic [3:0]   pcie_axi_arcache;
  logic         pcie_axi_rready;

  logic [63:0]  pcie_dwidth_axi_awaddr;
  logic [7:0]   pcie_dwidth_axi_awlen;
  logic [2:0]   pcie_dwidth_axi_awsize;
  logic [1:0]   pcie_dwidth_axi_awburst;
  logic [0:0]   pcie_dwidth_axi_awlock;
  logic [3:0]   pcie_dwidth_axi_awcache;
  logic [2:0]   pcie_dwidth_axi_awprot;
  logic [3:0]   pcie_dwidth_axi_awregion;
  logic [3:0]   pcie_dwidth_axi_awqos;
  logic         pcie_dwidth_axi_awvalid;
  logic         pcie_dwidth_axi_awready;
  logic [63:0]  pcie_dwidth_axi_wdata;
  logic [7:0]   pcie_dwidth_axi_wstrb;
  logic         pcie_dwidth_axi_wlast;
  logic         pcie_dwidth_axi_wvalid;
  logic         pcie_dwidth_axi_wready;
  logic [1:0]   pcie_dwidth_axi_bresp;
  logic         pcie_dwidth_axi_bvalid;
  logic         pcie_dwidth_axi_bready;
  logic [63:0]  pcie_dwidth_axi_araddr;
  logic [7:0]   pcie_dwidth_axi_arlen;
  logic [2:0]   pcie_dwidth_axi_arsize;
  logic [1:0]   pcie_dwidth_axi_arburst;
  logic [0:0]   pcie_dwidth_axi_arlock;
  logic [3:0]   pcie_dwidth_axi_arcache;
  logic [2:0]   pcie_dwidth_axi_arprot;
  logic [3:0]   pcie_dwidth_axi_arregion;
  logic [3:0]   pcie_dwidth_axi_arqos;
  logic         pcie_dwidth_axi_arvalid;
  logic         pcie_dwidth_axi_arready;
  logic [63:0]  pcie_dwidth_axi_rdata;
  logic [1:0]   pcie_dwidth_axi_rresp;
  logic         pcie_dwidth_axi_rlast;
  logic         pcie_dwidth_axi_rvalid;
  logic         pcie_dwidth_axi_rready;

  // PCIe Reset
  logic sys_rst_n_c;
  IBUF sys_reset_n_ibuf (.O(sys_rst_n_c), .I(sys_rst_n));

  IBUFDS_GTE4 #(
    .REFCLK_HROW_CK_SEL ( 2'b00 )
  ) IBUFDS_GTE4_inst (
    .O     ( pcie_ref_clk_gt ),
    .ODIV2 ( pcie_ref_clk    ),
    .CEB   ( 1'b0            ),
    .I     ( sys_clk_p       ),
    .IB    ( sys_clk_n       )
  );

  // 250 MHz AXI
  xdma_0 i_xdma (
    .sys_clk                  ( pcie_ref_clk     ),
    .sys_clk_gt               ( pcie_ref_clk_gt  ),
    .sys_rst_n                ( sys_rst_n_c      ),
    .user_lnk_up              (                  ),

    // Tx
    .pci_exp_txp              ( pci_exp_txp      ),
    .pci_exp_txn              ( pci_exp_txn      ),
    // Rx
    .pci_exp_rxp              ( pci_exp_rxp      ),
    .pci_exp_rxn              ( pci_exp_rxn      ),
    .usr_irq_req              ( 1'b0             ),
    .usr_irq_ack              (                  ),
    .msi_enable               (                  ),
    .msi_vector_width         (                  ),
    .axi_aclk                 ( pcie_axi_clk     ),
    .axi_aresetn              ( pcie_axi_rstn    ),
    .m_axi_awready            ( pcie_axi_awready ),
    .m_axi_wready             ( pcie_axi_wready  ),
    .m_axi_bid                ( pcie_axi_bid     ),
    .m_axi_bresp              ( pcie_axi_bresp   ),
    .m_axi_bvalid             ( pcie_axi_bvalid  ),
    .m_axi_arready            ( pcie_axi_arready ),
    .m_axi_rid                ( pcie_axi_rid     ),
    .m_axi_rdata              ( pcie_axi_rdata   ),
    .m_axi_rresp              ( pcie_axi_rresp   ),
    .m_axi_rlast              ( pcie_axi_rlast   ),
    .m_axi_rvalid             ( pcie_axi_rvalid  ),
    .m_axi_awid               ( pcie_axi_awid    ),
    .m_axi_awaddr             ( pcie_axi_awaddr  ),
    .m_axi_awlen              ( pcie_axi_awlen   ),
    .m_axi_awsize             ( pcie_axi_awsize  ),
    .m_axi_awburst            ( pcie_axi_awburst ),
    .m_axi_awprot             ( pcie_axi_awprot  ),
    .m_axi_awvalid            ( pcie_axi_awvalid ),
    .m_axi_awlock             ( pcie_axi_awlock  ),
    .m_axi_awcache            ( pcie_axi_awcache ),
    .m_axi_wdata              ( pcie_axi_wdata   ),
    .m_axi_wstrb              ( pcie_axi_wstrb   ),
    .m_axi_wlast              ( pcie_axi_wlast   ),
    .m_axi_wvalid             ( pcie_axi_wvalid  ),
    .m_axi_bready             ( pcie_axi_bready  ),
    .m_axi_arid               ( pcie_axi_arid    ),
    .m_axi_araddr             ( pcie_axi_araddr  ),
    .m_axi_arlen              ( pcie_axi_arlen   ),
    .m_axi_arsize             ( pcie_axi_arsize  ),
    .m_axi_arburst            ( pcie_axi_arburst ),
    .m_axi_arprot             ( pcie_axi_arprot  ),
    .m_axi_arvalid            ( pcie_axi_arvalid ),
    .m_axi_arlock             ( pcie_axi_arlock  ),
    .m_axi_arcache            ( pcie_axi_arcache ),
    .m_axi_rready             ( pcie_axi_rready  ),

    .cfg_mgmt_addr            ( '0               ),
    .cfg_mgmt_write           ( '0               ),
    .cfg_mgmt_write_data      ( '0               ),
    .cfg_mgmt_byte_enable     ( '0               ),
    .cfg_mgmt_read            ( '0               ),
    .cfg_mgmt_read_data       (                  ),
    .cfg_mgmt_read_write_done (                  )
  );

  axi_dwidth_converter_256_64 i_axi_dwidth_converter_256_64 (
    .s_axi_aclk     ( pcie_axi_clk             ),
    .s_axi_aresetn  ( pcie_axi_rstn            ),
    .s_axi_awid     ( pcie_axi_awid            ),
    .s_axi_awaddr   ( pcie_axi_awaddr          ),
    .s_axi_awlen    ( pcie_axi_awlen           ),
    .s_axi_awsize   ( pcie_axi_awsize          ),
    .s_axi_awburst  ( pcie_axi_awburst         ),
    .s_axi_awlock   ( pcie_axi_awlock          ),
    .s_axi_awcache  ( pcie_axi_awcache         ),
    .s_axi_awprot   ( pcie_axi_awprot          ),
    .s_axi_awregion ( '0                       ),
    .s_axi_awqos    ( '0                       ),
    .s_axi_awvalid  ( pcie_axi_awvalid         ),
    .s_axi_awready  ( pcie_axi_awready         ),
    .s_axi_wdata    ( pcie_axi_wdata           ),
    .s_axi_wstrb    ( pcie_axi_wstrb           ),
    .s_axi_wlast    ( pcie_axi_wlast           ),
    .s_axi_wvalid   ( pcie_axi_wvalid          ),
    .s_axi_wready   ( pcie_axi_wready          ),
    .s_axi_bid      ( pcie_axi_bid             ),
    .s_axi_bresp    ( pcie_axi_rresp           ),
    .s_axi_bvalid   ( pcie_axi_bvalid          ),
    .s_axi_bready   ( pcie_axi_bready          ),
    .s_axi_arid     ( pcie_axi_arid            ),
    .s_axi_araddr   ( pcie_axi_araddr          ),
    .s_axi_arlen    ( pcie_axi_arlen           ),
    .s_axi_arsize   ( pcie_axi_arsize          ),
    .s_axi_arburst  ( pcie_axi_arburst         ),
    .s_axi_arlock   ( pcie_axi_arlock          ),
    .s_axi_arcache  ( pcie_axi_arcache         ),
    .s_axi_arprot   ( pcie_axi_arprot          ),
    .s_axi_arregion ( '0                       ),
    .s_axi_arqos    ( '0                       ),
    .s_axi_arvalid  ( pcie_axi_arvalid         ),
    .s_axi_arready  ( pcie_axi_arready         ),
    .s_axi_rid      ( pcie_axi_rid             ),
    .s_axi_rdata    ( pcie_axi_rdata           ),
    .s_axi_rresp    ( pcie_axi_bresp           ),
    .s_axi_rlast    ( pcie_axi_rlast           ),
    .s_axi_rvalid   ( pcie_axi_rvalid          ),
    .s_axi_rready   ( pcie_axi_rready          ),

    .m_axi_awaddr   ( pcie_dwidth_axi_awaddr   ),
    .m_axi_awlen    ( pcie_dwidth_axi_awlen    ),
    .m_axi_awsize   ( pcie_dwidth_axi_awsize   ),
    .m_axi_awburst  ( pcie_dwidth_axi_awburst  ),
    .m_axi_awlock   ( pcie_dwidth_axi_awlock   ),
    .m_axi_awcache  ( pcie_dwidth_axi_awcache  ),
    .m_axi_awprot   ( pcie_dwidth_axi_awprot   ),
    .m_axi_awregion ( pcie_dwidth_axi_awregion ),
    .m_axi_awqos    ( pcie_dwidth_axi_awqos    ),
    .m_axi_awvalid  ( pcie_dwidth_axi_awvalid  ),
    .m_axi_awready  ( pcie_dwidth_axi_awready  ),
    .m_axi_wdata    ( pcie_dwidth_axi_wdata    ),
    .m_axi_wstrb    ( pcie_dwidth_axi_wstrb    ),
    .m_axi_wlast    ( pcie_dwidth_axi_wlast    ),
    .m_axi_wvalid   ( pcie_dwidth_axi_wvalid   ),
    .m_axi_wready   ( pcie_dwidth_axi_wready   ),
    .m_axi_bresp    ( pcie_dwidth_axi_bresp    ),
    .m_axi_bvalid   ( pcie_dwidth_axi_bvalid   ),
    .m_axi_bready   ( pcie_dwidth_axi_bready   ),
    .m_axi_araddr   ( pcie_dwidth_axi_araddr   ),
    .m_axi_arlen    ( pcie_dwidth_axi_arlen    ),
    .m_axi_arsize   ( pcie_dwidth_axi_arsize   ),
    .m_axi_arburst  ( pcie_dwidth_axi_arburst  ),
    .m_axi_arlock   ( pcie_dwidth_axi_arlock   ),
    .m_axi_arcache  ( pcie_dwidth_axi_arcache  ),
    .m_axi_arprot   ( pcie_dwidth_axi_arprot   ),
    .m_axi_arregion ( pcie_dwidth_axi_arregion ),
    .m_axi_arqos    ( pcie_dwidth_axi_arqos    ),
    .m_axi_arvalid  ( pcie_dwidth_axi_arvalid  ),
    .m_axi_arready  ( pcie_dwidth_axi_arready  ),
    .m_axi_rdata    ( pcie_dwidth_axi_rdata    ),
    .m_axi_rresp    ( pcie_dwidth_axi_rresp    ),
    .m_axi_rlast    ( pcie_dwidth_axi_rlast    ),
    .m_axi_rvalid   ( pcie_dwidth_axi_rvalid   ),
    .m_axi_rready   ( pcie_dwidth_axi_rready   )
  );


assign slave[1].aw_user = '0;
assign slave[1].ar_user = '0;
assign slave[1].w_user = '0;

logic [3:0] slave_b_id;
logic [3:0] slave_r_id;

assign slave[1].b_id = slave_b_id[1:0];
assign slave[1].r_id = slave_r_id[1:0];

// PCIe Clock Converter
axi_clock_converter_0 pcie_axi_clock_converter (
  .m_axi_aclk     ( clk                      ),
  .m_axi_aresetn  ( ndmreset_n               ),
  .m_axi_awid     ( {2'b0, slave[1].aw_id} ),
  .m_axi_awaddr   ( slave[1].aw_addr   ),
  .m_axi_awlen    ( slave[1].aw_len    ),
  .m_axi_awsize   ( slave[1].aw_size   ),
  .m_axi_awburst  ( slave[1].aw_burst  ),
  .m_axi_awlock   ( slave[1].aw_lock   ),
  .m_axi_awcache  ( slave[1].aw_cache  ),
  .m_axi_awprot   ( slave[1].aw_prot   ),
  .m_axi_awregion ( slave[1].aw_region ),
  .m_axi_awqos    ( slave[1].aw_qos    ),
  .m_axi_awvalid  ( slave[1].aw_valid  ),
  .m_axi_awready  ( slave[1].aw_ready  ),
  .m_axi_wdata    ( slave[1].w_data    ),
  .m_axi_wstrb    ( slave[1].w_strb    ),
  .m_axi_wlast    ( slave[1].w_last    ),
  .m_axi_wvalid   ( slave[1].w_valid   ),
  .m_axi_wready   ( slave[1].w_ready   ),
  .m_axi_bid      ( slave_b_id         ),
  .m_axi_bresp    ( slave[1].b_resp    ),
  .m_axi_bvalid   ( slave[1].b_valid   ),
  .m_axi_bready   ( slave[1].b_ready   ),
  .m_axi_arid     ( {2'b0, slave[1].ar_id} ),
  .m_axi_araddr   ( slave[1].ar_addr   ),
  .m_axi_arlen    ( slave[1].ar_len    ),
  .m_axi_arsize   ( slave[1].ar_size   ),
  .m_axi_arburst  ( slave[1].ar_burst  ),
  .m_axi_arlock   ( slave[1].ar_lock   ),
  .m_axi_arcache  ( slave[1].ar_cache  ),
  .m_axi_arprot   ( slave[1].ar_prot   ),
  .m_axi_arregion ( slave[1].ar_region ),
  .m_axi_arqos    ( slave[1].ar_qos    ),
  .m_axi_arvalid  ( slave[1].ar_valid  ),
  .m_axi_arready  ( slave[1].ar_ready  ),
  .m_axi_rid      ( slave_r_id         ),
  .m_axi_rdata    ( slave[1].r_data    ),
  .m_axi_rresp    ( slave[1].r_resp    ),
  .m_axi_rlast    ( slave[1].r_last    ),
  .m_axi_rvalid   ( slave[1].r_valid   ),
  .m_axi_rready   ( slave[1].r_ready   ),
  // from size converter
  .s_axi_aclk     ( pcie_axi_clk             ),
  .s_axi_aresetn  ( ndmreset_n               ),
  .s_axi_awid     ( '0                       ),
  .s_axi_awaddr   ( pcie_dwidth_axi_awaddr   ),
  .s_axi_awlen    ( pcie_dwidth_axi_awlen    ),
  .s_axi_awsize   ( pcie_dwidth_axi_awsize   ),
  .s_axi_awburst  ( pcie_dwidth_axi_awburst  ),
  .s_axi_awlock   ( pcie_dwidth_axi_awlock   ),
  .s_axi_awcache  ( pcie_dwidth_axi_awcache  ),
  .s_axi_awprot   ( pcie_dwidth_axi_awprot   ),
  .s_axi_awregion ( pcie_dwidth_axi_awregion ),
  .s_axi_awqos    ( pcie_dwidth_axi_awqos    ),
  .s_axi_awvalid  ( pcie_dwidth_axi_awvalid  ),
  .s_axi_awready  ( pcie_dwidth_axi_awready  ),
  .s_axi_wdata    ( pcie_dwidth_axi_wdata    ),
  .s_axi_wstrb    ( pcie_dwidth_axi_wstrb    ),
  .s_axi_wlast    ( pcie_dwidth_axi_wlast    ),
  .s_axi_wvalid   ( pcie_dwidth_axi_wvalid   ),
  .s_axi_wready   ( pcie_dwidth_axi_wready   ),
  .s_axi_bid      (                          ),
  .s_axi_bresp    ( pcie_dwidth_axi_bresp    ),
  .s_axi_bvalid   ( pcie_dwidth_axi_bvalid   ),
  .s_axi_bready   ( pcie_dwidth_axi_bready   ),
  .s_axi_arid     ( '0                       ),
  .s_axi_araddr   ( pcie_dwidth_axi_araddr   ),
  .s_axi_arlen    ( pcie_dwidth_axi_arlen    ),
  .s_axi_arsize   ( pcie_dwidth_axi_arsize   ),
  .s_axi_arburst  ( pcie_dwidth_axi_arburst  ),
  .s_axi_arlock   ( pcie_dwidth_axi_arlock   ),
  .s_axi_arcache  ( pcie_dwidth_axi_arcache  ),
  .s_axi_arprot   ( pcie_dwidth_axi_arprot   ),
  .s_axi_arregion ( pcie_dwidth_axi_arregion ),
  .s_axi_arqos    ( pcie_dwidth_axi_arqos    ),
  .s_axi_arvalid  ( pcie_dwidth_axi_arvalid  ),
  .s_axi_arready  ( pcie_dwidth_axi_arready  ),
  .s_axi_rid      (                          ),
  .s_axi_rdata    ( pcie_dwidth_axi_rdata    ),
  .s_axi_rresp    ( pcie_dwidth_axi_rresp    ),
  .s_axi_rlast    ( pcie_dwidth_axi_rlast    ),
  .s_axi_rvalid   ( pcie_dwidth_axi_rvalid   ),
  .s_axi_rready   ( pcie_dwidth_axi_rready   )
);
`endif

endmodule
