module testbench();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;


// These signals are internal because the processor will be 
// instantiated as a submodule in testbench.

logic Clk;
logic Reset;

logic [7:0] red,green,blue;
logic hs,vs,VGA_clk,blank,sync;
logic [9:0] nowhere;
logic [3:0] empty;
assign empty = 4'hf;
assign nowhere = 10'b0000000000;

logic [9:0] spritex, spritey;
GraphicModule GraphicModule(
.*,
.PosX1(spritex), .PosY1(spritey), .PosX2(nowhere), .PosY2(nowhere), .PosX3(nowhere), .PosY3(nowhere), .PosX4(nowhere), .PosY4(nowhere),
.PosX5(nowhere), .PosY5(nowhere), .PosX6(nowhere), .PosY6(nowhere), .PosX7(nowhere), .PosY7(nowhere), .PosX8(nowhere), .PosY8(nowhere),
.PosX9(nowhere), .PosY9(nowhere), .PosX10(nowhere), .PosY10(nowhere), .PosX11(nowhere), .PosY11(nowhere), .PosX12(nowhere), .PosY12(nowhere),
.PosX13(nowhere), .PosY13(nowhere), .PosX14(nowhere), .PosY14(nowhere), .PosX15(nowhere), .PosY15(nowhere), .PosX16(nowhere), .PosY16(nowhere), 
.SpriteID1(4'b0101),.SpriteID2(empty),.SpriteID3(empty),.SpriteID4(empty),
.SpriteID5(empty),.SpriteID6(empty),.SpriteID7(empty),.SpriteID8(empty),
.SpriteID9(empty),.SpriteID10(empty),.SpriteID11(empty),.SpriteID12(empty),
.SpriteID13(empty),.SpriteID14(empty),.SpriteID15(empty),.SpriteID16(empty)
);
				
always begin : CLOCK_GENERATION
#1 Clk = ~Clk;
end

initial begin: CLOCK_INITIALIZATION
    Clk = 0;
end 
// Toggle the clock
// #1 means wait for a delay of 1 timeunit

// Testing begins here
// The initial block is not synthesizable
// Everything happens sequentially inside an initial block
// as in a software program
initial begin: TEST_VECTORS
#2 Reset = 1;
#2 Reset = 0;
#2 spritex = 10'b1000000000;
   spritey = 10'b0000000000;


end
endmodule
