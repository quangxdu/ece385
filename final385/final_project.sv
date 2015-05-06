//-------------------------------------------------------------------------
//      lab7_usb.sv                                                      --
//      Christine Chen                                                   --
//      Fall 2014                                                        --
//                                                                       --
//      Fall 2014 Distribution                                           --
//                                                                       --
//      For use with ECE 385 Lab 7                                       --
//      UIUC ECE Department                                              --
//-------------------------------------------------------------------------


module  final_project 		( input         Clk,
                                     Reset,
							  output [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,
							  output [8:0]  LEDG,
							  output [17:0] LEDR,
							  // VGA Interface 
                       output [7:0]  Red,
							                Green,
												 Blue,
							  output        VGA_clk,
							                sync,
												 blank,
												 vs,
												 hs,
							  // CY7C67200 Interface
							  inout [15:0]  OTG_DATA,						//	CY7C67200 Data bus 16 Bits
							  output [1:0]  OTG_ADDR,						//	CY7C67200 Address 2 Bits
							  output        OTG_CS_N,						//	CY7C67200 Chip Select
												 OTG_RD_N,						//	CY7C67200 Write
												 OTG_WR_N,						//	CY7C67200 Read
												 OTG_RST_N,						//	CY7C67200 Reset
							  input			 OTG_INT,						//	CY7C67200 Interrupt
							  // SDRAM Interface for Nios II Software
							  output [12:0] sdram_wire_addr,				// SDRAM Address 13 Bits
							  inout [31:0]  sdram_wire_dq,				// SDRAM Data 32 Bits
							  output [1:0]  sdram_wire_ba,				// SDRAM Bank Address 2 Bits
							  output [3:0]  sdram_wire_dqm,				// SDRAM Data Mast 4 Bits
							  output			 sdram_wire_ras_n,			// SDRAM Row Address Strobe
							  output			 sdram_wire_cas_n,			// SDRAM Column Address Strobe
							  output			 sdram_wire_cke,				// SDRAM Clock Enable
							  output			 sdram_wire_we_n,				// SDRAM Write Enable
							  output			 sdram_wire_cs_n,				// SDRAM Chip Select
							  output			 sdram_clk						// SDRAM Clock
											);
    
     logic Reset_h;
	 logic [7:0] keycode;
	 logic [7:0] buffer;

    assign {Reset_h}=~ (Reset);  // The push buttons are active low
	 assign OTG_FSPEED = 1'bz;
	 assign OTG_LSPEED = 1'bz;
	 logic [9:0]posX1,posX2,posX3,posX4,posX5,posX6,posX7, posX8, posX9, posX10, posX11,posX12,posX13,posX14,posX15,posX16;
	 logic [9:0]posY1, posY2,posY3, posY4, posY5, posY6, posY7, posY8,posY9, posY10, posY11,posY12,posY13,posY14,posY15,posY16;
	 logic [3:0] spriteID1, spriteID2, spriteID3, spriteID4, spriteID5, spriteID6, spriteID7, spriteID8, spriteID9, spriteID10, spriteID11,spriteID12,spriteID13,spriteID14,spriteID15, spriteID16;
	    
	 usb_system usbsys_instance(
										 .clk_clk(Clk),         
										 .reset_reset_n(1'b1),   
										 .sdram_wire_addr(sdram_wire_addr), 
										 .sdram_wire_ba(sdram_wire_ba),   
										 .sdram_wire_cas_n(sdram_wire_cas_n),
										 .sdram_wire_cke(sdram_wire_cke),  
										 .sdram_wire_cs_n(sdram_wire_cs_n), 
										 .sdram_wire_dq(sdram_wire_dq),   
										 .sdram_wire_dqm(sdram_wire_dqm),  
										 .sdram_wire_ras_n(sdram_wire_ras_n),
										 .sdram_wire_we_n(sdram_wire_we_n), 
										 .sdram_out_clk_clk(sdram_clk),
										 .keycode_export(keycode),  
										 .usb_DATA(OTG_DATA),    
										 .usb_ADDR(OTG_ADDR),    
										 .usb_RD_N(OTG_RD_N),    
										 .usb_WR_N(OTG_WR_N),    
										 .usb_CS_N(OTG_CS_N),    
										 .usb_RST_N(OTG_RST_N),   
										 .usb_INT(OTG_INT) );
	
	
	 HexDriver hex_inst_0 (.In0(keycode[3:0]), .Out0(HEX0));
	 HexDriver hex_inst_1 (.In0(keycode[7:4]), .Out0(HEX1));


GraphicModule GraphicModule
( 
.Clk(Clk),
.Reset(Reset_h),
.PosX1(posX1), .PosY1(posY1), .PosX2(posX2), .PosY2(posY2), .PosX3(posX3), .PosY3(posY3), .PosX4(posX4), .PosY4(posY4),
.PosX5(posX5), .PosY5(posY5), .PosX6(posX6), .PosY6(posY6), .PosX7(posX7), .PosY7(posY7), .PosX8(posX8), .PosY8(posY8),
.PosX9(posX9), .PosY9(posY9), .PosX10(posX10), .PosY10(posY10), .PosX11(posX11), .PosY11(posY11), .PosX12(posX12), .PosY12(posY12),
.PosX13(posX13), .PosY13(posY13), .PosX14(posX14), .PosY14(posY14), .PosX15(posX15), .PosY15(posY15), .PosX16(posX16), .PosY16(posY16), 
.SpriteID1(spriteID1),.SpriteID2(spriteID2),.SpriteID3(spriteID3),.SpriteID4(spriteID4),
.SpriteID5(spriteID5),.SpriteID6(spriteID6),.SpriteID7(spriteID7),.SpriteID8(spriteID8),
.SpriteID9(spriteID9),.SpriteID10(spriteID10),.SpriteID11(spriteID11),.SpriteID12(spriteID12),
.SpriteID13(spriteID13),.SpriteID14(spriteID14),.SpriteID15(spriteID15),.SpriteID16(spriteID16),
    
    
		.hs(hs),        // Horizontal sync pulse.  Active low
					.vs(vs),        // Vertical sync pulse.  Active low
					.VGA_clk(VGA_clk), // 25 MHz pixel clock output
					.blank(blank),     // Blanking interval indicator.  Active low.
					.sync(sync),
	.red(Red),.green(Green),.blue(Blue)
);

GameModule GameModule
(
	.clk(Clk),
	.*
);


endmodule
