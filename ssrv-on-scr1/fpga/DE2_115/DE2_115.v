
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================
`include "scr1_arch_description.svh"
`include "scr1_ahb.svh"
`include "define.v"

module DE2_115(

	//////////// CLOCK //////////
	input 		          		CLOCK_50,
	input 		          		CLOCK2_50,
	input 		          		CLOCK3_50,

	//////////// Sma //////////
	input 		          		SMA_CLKIN,
	output		          		SMA_CLKOUT,

	//////////// LED //////////
	output		     [8:0]		LEDG,
	output		    [17:0]		LEDR,

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// EX_IO //////////
	inout 		     [6:0]		EX_IO,

	//////////// SW //////////
	input 		    [17:0]		SW,

	//////////// SEG7 //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,
	output		     [6:0]		HEX2,
	output		     [6:0]		HEX3,
	output		     [6:0]		HEX4,
	output		     [6:0]		HEX5,
	output		     [6:0]		HEX6,
	output		     [6:0]		HEX7,

	//////////// LCD //////////
	output		          		LCD_BLON,
	inout 		     [7:0]		LCD_DATA,
	output		          		LCD_EN,
	output		          		LCD_ON,
	output		          		LCD_RS,
	output		          		LCD_RW,

	//////////// RS232 //////////
	input 		          		UART_CTS,
	output		          		UART_RTS,
	input 		          		UART_RXD,
	output		          		UART_TXD,

	//////////// PS2 for Keyboard and Mouse //////////
	inout 		          		PS2_CLK,
	inout 		          		PS2_CLK2,
	inout 		          		PS2_DAT,
	inout 		          		PS2_DAT2,

	//////////// SDCARD //////////
	output		          		SD_CLK,
	inout 		          		SD_CMD,
	inout 		     [3:0]		SD_DAT,
	input 		          		SD_WP_N,

	//////////// VGA //////////
	output		     [7:0]		VGA_B,
	output		          		VGA_BLANK_N,
	output		          		VGA_CLK,
	output		     [7:0]		VGA_G,
	output		          		VGA_HS,
	output		     [7:0]		VGA_R,
	output		          		VGA_SYNC_N,
	output		          		VGA_VS,

	//////////// Audio //////////
	input 		          		AUD_ADCDAT,
	inout 		          		AUD_ADCLRCK,
	inout 		          		AUD_BCLK,
	output		          		AUD_DACDAT,
	inout 		          		AUD_DACLRCK,
	output		          		AUD_XCK,

	//////////// I2C for EEPROM //////////
	output		          		EEP_I2C_SCLK,
	inout 		          		EEP_I2C_SDAT,

	//////////// I2C for Audio Tv-Decoder  //////////
	output		          		I2C_SCLK,
	inout 		          		I2C_SDAT,

	//////////// Ethernet 0 //////////
	output		          		ENET0_GTX_CLK,
	input 		          		ENET0_INT_N,
	input 		          		ENET0_LINK100,
	output		          		ENET0_MDC,
	inout 		          		ENET0_MDIO,
	output		          		ENET0_RST_N,
	input 		          		ENET0_RX_CLK,
	input 		          		ENET0_RX_COL,
	input 		          		ENET0_RX_CRS,
	input 		     [3:0]		ENET0_RX_DATA,
	input 		          		ENET0_RX_DV,
	input 		          		ENET0_RX_ER,
	input 		          		ENET0_TX_CLK,
	output		     [3:0]		ENET0_TX_DATA,
	output		          		ENET0_TX_EN,
	output		          		ENET0_TX_ER,
	input 		          		ENETCLK_25,

	//////////// Ethernet 1 //////////
	output		          		ENET1_GTX_CLK,
	input 		          		ENET1_INT_N,
	input 		          		ENET1_LINK100,
	output		          		ENET1_MDC,
	inout 		          		ENET1_MDIO,
	output		          		ENET1_RST_N,
	input 		          		ENET1_RX_CLK,
	input 		          		ENET1_RX_COL,
	input 		          		ENET1_RX_CRS,
	input 		     [3:0]		ENET1_RX_DATA,
	input 		          		ENET1_RX_DV,
	input 		          		ENET1_RX_ER,
	input 		          		ENET1_TX_CLK,
	output		     [3:0]		ENET1_TX_DATA,
	output		          		ENET1_TX_EN,
	output		          		ENET1_TX_ER,

	//////////// TV Decoder //////////
	input 		          		TD_CLK27,
	input 		     [7:0]		TD_DATA,
	input 		          		TD_HS,
	output		          		TD_RESET_N,
	input 		          		TD_VS,

	//////////// USB 2.0 OTG (Cypress CY7C67200) //////////
	output		     [1:0]		OTG_ADDR,
	output		          		OTG_CS_N,
	inout 		    [15:0]		OTG_DATA,
	input 		          		OTG_INT,
	output		          		OTG_RD_N,
	output		          		OTG_RST_N,
	output		          		OTG_WE_N,

	//////////// IR Receiver //////////
	input 		          		IRDA_RXD,

	//////////// SDRAM //////////
	output		    [12:0]		DRAM_ADDR,
	output		     [1:0]		DRAM_BA,
	output		          		DRAM_CAS_N,
	output		          		DRAM_CKE,
	output		          		DRAM_CLK,
	output		          		DRAM_CS_N,
	inout 		    [31:0]		DRAM_DQ,
	output		     [3:0]		DRAM_DQM,
	output		          		DRAM_RAS_N,
	output		          		DRAM_WE_N,

	//////////// SRAM //////////
	output		    [19:0]		SRAM_ADDR,
	output		          		SRAM_CE_N,
	inout 		    [15:0]		SRAM_DQ,
	output		          		SRAM_LB_N,
	output		          		SRAM_OE_N,
	output		          		SRAM_UB_N,
	output		          		SRAM_WE_N,

	//////////// Flash //////////
	output		    [22:0]		FL_ADDR,
	output		          		FL_CE_N,
	inout 		     [7:0]		FL_DQ,
	output		          		FL_OE_N,
	output		          		FL_RST_N,
	input 		          		FL_RY,
	output		          		FL_WE_N,
	output		          		FL_WP_N,

	//////////// GPIO, GPIO connect to GPIO Default //////////
	inout 		    [35:0]		GPIO
);



//=======================================================
//  REG/WIRE declarations
//=======================================================
    wire                clk,rtc_clk;
    wire `N(32)         fuse_mhartid = 0;
    wire                ext_irq     = 1'b0;
	wire                soft_irq    = 1'b0;


    // Instruction Memory Interface
    wire   [3:0]                           imem_hprot;
    wire   [2:0]                           imem_hburst;
    wire   [2:0]                           imem_hsize;
    wire   [1:0]                           imem_htrans;
    wire   [SCR1_AHB_WIDTH-1:0]            imem_haddr;
    wire                                   imem_hready;
    wire   [SCR1_AHB_WIDTH-1:0]            imem_hrdata;
    wire                                   imem_hresp;
    
    // Memory Interface
    wire   [3:0]                           dmem_hprot;
    wire   [2:0]                           dmem_hburst;
    wire   [2:0]                           dmem_hsize;
    wire   [1:0]                           dmem_htrans;
    wire   [SCR1_AHB_WIDTH-1:0]            dmem_haddr;
    wire                                   dmem_hwrite;
    wire   [SCR1_AHB_WIDTH-1:0]            dmem_hwdata;
    wire                                   dmem_hready;
    wire   [SCR1_AHB_WIDTH-1:0]            dmem_hrdata;
    wire                                   dmem_hresp;


    wire                                    dmem_hready_mem;
	wire                                    txrdy;

//=======================================================
//  Structural coding
//=======================================================


    wire rst_n = KEY[0];
	
	wire rst = ~rst_n;
	
	plll i_clock(
	    .inclk0                (    CLOCK_50             ),
		.c0                    (    clk                  ),
		.c1                    (    rtc_clk              )
	);



    scr1_top_ahb i_top (
        // Reset
        .pwrup_rst_n            (rst_n                  ),
        .rst_n                  (rst_n                  ),
        .cpu_rst_n              (rst_n                  ),
    `ifdef SCR1_DBGC_EN
        .ndm_rst_n_out          (),
    `endif // SCR1_DBGC_EN
    
        // Clock
        .clk                    (clk                    ),
        .rtc_clk                (rtc_clk                ),
    
        // Fuses
        .fuse_mhartid           (fuse_mhartid           ),
    `ifdef SCR1_DBGC_EN
        .fuse_idcode            (`SCR1_TAP_IDCODE       ),
    `endif // SCR1_DBGC_EN
    
        // IRQ
    `ifdef SCR1_IPIC_EN
        .irq_lines              (irq_lines              ),
    `else // SCR1_IPIC_EN
        .ext_irq                (ext_irq                ),
    `endif // SCR1_IPIC_EN
        .soft_irq               (soft_irq               ),
    
        // DFT
        .test_mode              (1'b0                   ),
        .test_rst_n             (1'b1                   ),
    
    `ifdef SCR1_DBGC_EN
        // JTAG
        .trst_n                 (trst_n                 ),
        .tck                    (tck                    ),
        .tms                    (tms                    ),
        .tdi                    (tdi                    ),
        .tdo                    (tdo                    ),
        .tdo_en                 (tdo_en                 ),
    `endif // SCR1_DBGC_EN
    
        // Instruction Memory Interface
        .imem_hprot         (imem_hprot     ),
        .imem_hburst        (imem_hburst    ),
        .imem_hsize         (imem_hsize     ),
        .imem_htrans        (imem_htrans    ),
        .imem_hmastlock     (),
        .imem_haddr         (imem_haddr     ),
        .imem_hready        (imem_hready    ),
        .imem_hrdata        (imem_hrdata    ),
        .imem_hresp         (imem_hresp     ),
    
        // Data Memory Interface
        .dmem_hprot         (dmem_hprot     ),
        .dmem_hburst        (dmem_hburst    ),
        .dmem_hsize         (dmem_hsize     ),
        .dmem_htrans        (dmem_htrans    ),
        .dmem_hmastlock     (),
        .dmem_haddr         (dmem_haddr     ),
        .dmem_hwrite        (dmem_hwrite    ),
        .dmem_hwdata        (dmem_hwdata    ),
        .dmem_hready        (dmem_hready    ),
        .dmem_hrdata        (dmem_hrdata    ),
        .dmem_hresp         (dmem_hresp     )
    );
	


    ssrv_memory i_memory_tb(
    .clk                    (clk        ),
	.rst                    (rst        ),

    // Instruction Memory Interface
    // .imem_hprot             (imem_hprot ),
    // .imem_hburst            (imem_hburst),
    .imem_hsize             (imem_hsize ),
    .imem_htrans            (imem_htrans),
    .imem_haddr             (imem_haddr ),
    .imem_hready            (imem_hready),
    .imem_hrdata            (imem_hrdata),
    .imem_hresp             (imem_hresp ),

    // Data Memory Interface
    // .dmem_hprot             (dmem_hprot ),
    // .dmem_hburst            (dmem_hburst),
    .dmem_hsize             (dmem_hsize ),
    .dmem_htrans            (dmem_htrans),
    .dmem_haddr             (dmem_haddr ),
    .dmem_hwrite            (dmem_hwrite),
    .dmem_hwdata            (dmem_hwdata),
    .dmem_hready            (dmem_hready_mem),
    .dmem_hrdata            (dmem_hrdata),
    .dmem_hresp             (dmem_hresp )
    );

	
	reg dmem_print;
	`FFx(dmem_print,0)
	dmem_print <= dmem_htrans[1] & dmem_hwrite & ( dmem_haddr==32'hF0000000 );

    wire tx_vld = dmem_print;

    wire `N(8) tx_data = dmem_hwdata[7:0];

    assign dmem_hready_uart = ~dmem_print & txrdy;
	
	rxtx 
	#(
	    .baud               (   9600      ),
		.mhz                (   30        )
	)
	i_uart
	(
    .clk                    (clk        ),
	.rst                    (rst        ),
    .rx                     (UART_RXD   ),
    .tx_vld                 (tx_vld     ),
    .tx_data                (tx_data    ),

    .rx_vld                 (           ),
    .rx_data                (           ),
    .tx                     (UART_TXD   ),
    .txrdy                  (txrdy      )	
	
	);

    assign dmem_hready = dmem_hready_mem & dmem_hready_uart;
   
endmodule
