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
logic [9:0] nowhere;
logic [3:0] empty;
assign empty = 4'hf;
assign nowhere = 10'b0000000000;

GraphicModule GraphicModule
( 
.Clk(Clk),
.Reset(Reset_h),
.PosX1(10'b1000000000), .PosY1(10'b1000000000), .PosX2(nowhere), .PosY2(nowhere), .PosX3(nowhere), .PosY3(nowhere), .PosX4(nowhere), .PosY4(nowhere),
.PosX5(nowhere), .PosY5(nowhere), .PosX6(nowhere), .PosY6(nowhere), .PosX7(nowhere), .PosY7(nowhere), .PosX8(nowhere), .PosY8(nowhere),
.PosX9(nowhere), .PosY9(nowhere), .PosX10(nowhere), .PosY10(nowhere), .PosX11(nowhere), .PosY11(nowhere), .PosX12(nowhere), .PosY12(nowhere),
.PosX13(nowhere), .PosY13(nowhere), .PosX14(nowhere), .PosY14(nowhere), .PosX15(nowhere), .PosY15(nowhere), .PosX16(nowhere), .PosY16(nowhere), 
.SpriteID1(4'b0101),.SpriteID2(empty),.SpriteID3(empty),.SpriteID4(empty),
.SpriteID5(empty),.SpriteID6(empty),.SpriteID7(empty),.SpriteID8(empty),
.SpriteID9(empty),.SpriteID10(empty),.SpriteID11(empty),.SpriteID12(empty),
.SpriteID13(empty),.SpriteID14(empty),.SpriteID15(empty),.SpriteID16(empty),
    
    
		.hs(hs),        // Horizontal sync pulse.  Active low
					.vs(vs),        // Vertical sync pulse.  Active low
					.VGA_clk(VGA_clk), // 25 MHz pixel clock output
					.blank(blank),     // Blanking interval indicator.  Active low.
					.sync(sync),
	.red(Red),.green(Green),.blue(Blue)
);
/*
GameModule GameModule
(.*
);
*/
	 /**************************************************************************************
	    ATTENTION! Please answer the following quesiton in your lab report! Points will be allocated for the answers!
		 Hidden Question #1/2:
          What are the advantages and/or disadvantages of using a USB interface over PS/2 interface to
			 connect to the keyboard? List any two.  Give an answer in your Post-Lab.
     **************************************************************************************/
endmodule
