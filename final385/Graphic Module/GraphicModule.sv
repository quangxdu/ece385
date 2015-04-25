module GraphicModule
(
    input Clk,
    input Reset,
input logic [9:0] PosX1, PosY1, input logic [9:0] PosX2, PosY2, input logic [9:0] PosX3, PosY3, input logic [9:0] PosX4, PosY4,
input logic [9:0] PosX5, PosY5, input logic [9:0] PosX6, PosY6, input logic [9:0] PosX7, PosY7, input logic [9:0] PosX8, PosY8,
input logic [9:0] PosX9, PosY9, input logic [9:0] PosX10, PosY10, input logic [9:0] PosX11, PosY11, input logic [9:0] PosX12, PosY12,
input logic [9:0] PosX13, PosY13, input logic [9:0] PosX14, PosY14, input logic [9:0] PosX15, PosY15, input logic [9:0] PosX16, PosY16, 
input [3:0] SpriteID1,input [3:0] SpriteID2,input [3:0] SpriteID3,input [3:0] SpriteID4,
input [3:0] SpriteID5,input [3:0] SpriteID6,input [3:0] SpriteID7,input [3:0] SpriteID8,
input [3:0] SpriteID9,input [3:0] SpriteID10,input [3:0] SpriteID11,input [3:0] SpriteID12,
input [3:0] SpriteID13,input [3:0] SpriteID14,input [3:0] SpriteID15,input [3:0] SpriteID16, 
    
    
    output logic hs,        // Horizontal sync pulse.  Active low
					vs,        // Vertical sync pulse.  Active low
					VGA_clk, // 25 MHz pixel clock output
					blank,     // Blanking interval indicator.  Active low.
					sync,
	output [7:0] red,green,blue
);

logic [9:0] DrawX, DrawY;
logic [3:0] spriteID;
logic [4:0] sPosX,sPosY;
logic [7:0] color;


Mapper Mapper
(//lol .*
	.*,
	.spriteIDOut(spriteID),
	.sPosXOut(sPosX),
	.sPosYOut(sPosY)
);

sprite_table sprite_table
(
	.spriteID(spriteID), .posX(sPosX), .posY(sPosY),.color(color)
);
palette palette//to be made should be pretty simple
(
	.addr(color),

	.*
);

	vga_controller vga_controller ( .Clk(Clk),       // 50 MHz clock
                                      .Reset(Reset),     // reset signal
												  .hs(hs),        // Horizontal sync pulse.  Active low
								              .vs(vs),        // Vertical sync pulse.  Active low
												  .pixel_clk(VGA_clk), // 25 MHz pixel clock output
												  .blank(blank),     // Blanking interval indicator.  Active low.
												  .sync(sync),      // Composite Sync signal.  Active low.  We don't use it in this lab,
												             //   but the video DAC on the DE2 board requires an input for it.
												  .DrawX(DrawX),     // horizontal coordinate
								              .DrawY(DrawY)
	);   // vertical coordinate
	
endmodule