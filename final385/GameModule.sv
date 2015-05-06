module GameModule
(
	input clk, vs,
	output logic [9:0] posX1, output logic [9:0] posY1, output logic [3:0] spriteID1,
output logic [9:0] posX2, output logic [9:0] posY2, output logic [3:0] spriteID2, 
output logic [9:0] posX3, output logic [9:0] posY3, output logic [3:0] spriteID3,
output logic [9:0] posX4, output logic [9:0] posY4, output logic [3:0] spriteID4,
output logic [9:0] posX5, output logic [9:0] posY5, output logic [3:0] spriteID5,
output logic [9:0] posX6, output logic [9:0] posY6, output logic [3:0] spriteID6,
output logic [9:0] posX7, output logic [9:0] posY7, output logic [3:0] spriteID7,
output logic [9:0] posX8, output logic [9:0] posY8, output logic [3:0] spriteID8,
output logic [9:0] posX9, output logic [9:0] posY9, output logic [3:0] spriteID9,
output logic [9:0] posX10, output logic[9:0] posY10, output logic [3:0] spriteID10,
output logic [9:0] posX11, output logic [9:0] posY11, output logic [3:0] spriteID11,
output logic [9:0] posX12, output logic [9:0] posY12, output logic [3:0] spriteID12,
output logic [9:0] posX13, output logic [9:0] posY13, output logic [3:0] spriteID13,
output logic [9:0] posX14, output logic [9:0] posY14, output logic [3:0] spriteID14,
output logic [9:0] posX15, output logic [9:0] posY15, output logic [3:0] spriteID15,
output logic [9:0] posX16, output logic [9:0] posY16, output logic [3:0] spriteID16

);
 logic [9:0] posX1in;  logic [9:0] posY1in;  logic [3:0] spriteID1in;
 logic [9:0] posX2in;  logic [9:0] posY2in;  logic [3:0] spriteID2in;
 logic [9:0] posX3in;  logic [9:0] posY3in;  logic [3:0] spriteID3in;
 logic [9:0] posX4in;  logic [9:0] posY4in;  logic [3:0] spriteID4in;
 logic [9:0] posX5in;  logic [9:0] posY5in;  logic [3:0] spriteID5in;
 logic [9:0] posX6in;  logic [9:0] posY6in;  logic [3:0] spriteID6in;
 logic [9:0] posX7in;  logic [9:0] posY7in;  logic [3:0] spriteID7in;
 logic [9:0] posX8in;  logic [9:0] posY8in;  logic [3:0] spriteID8in;
 logic [9:0] posX9in;  logic [9:0] posY9in;  logic [3:0] spriteID9in;
 logic [9:0] posX10in;  logic [9:0] posY10in;  logic [3:0] spriteID10in;
 logic [9:0] posX11in;  logic [9:0] posY11in;  logic [3:0] spriteID11in;
 logic [9:0] posX12in; logic [9:0] posY12in; logic [3:0] spriteID12in;
 logic [9:0] posX13in; logic [9:0] posY13in; logic [3:0] spriteID13in;
	logic [9:0] posX14in; logic [9:0] posY14in; logic [3:0] spriteID14in;
	logic [9:0] posX15in; logic [9:0] posY15in; logic [3:0] spriteID15in;
	logic [9:0] posX16in; logic [9:0] posY16in; logic [3:0] spriteID16in;
 logic shiftUp;
 logic [3:0] stripArrows;
 logic sprite3hit_in;
 logic sprite2hit_in;
 logic sprite3hit_out;
 logic sprite2hit_out;


GameManager GameManager
(
	.arrowClk(clk),
	.shiftUp(shiftUp),
	.stripArrows(stripArrows),
	//input arrowClk, input shiftUp, input [3:0] stripArrows,
.posX2in(posX2), .posY2in(posY2), .spriteID2in(spriteID2),
.posX3in(posX3), .posY3in(posY3), .spriteID3in(spriteID3),
.posX4in(posX4), .posY4in(posY4), .spriteID4in(spriteID4),
.posX5in(posX5), .posY5in(posY5), .spriteID5in(spriteID5),
.posX6in(posX6), .posY6in(posY6), .spriteID6in(spriteID6),
.posX7in(posX7), .posY7in(posY7), .spriteID7in(spriteID7),
.posX8in(posX8), .posY8in(posY8), .spriteID8in(spriteID8),
.posX9in(posX9), .posY9in(posY9), .spriteID9in(spriteID9),
.posX10in(posX10), .posY10in(posY10), .spriteID10in(spriteID10),
.posX11in(posX11), .posY11in(posY11), .spriteID11in(spriteID11),


 .posX2out(posX2in),  .posY2out(posY2in),  .spriteID2out(spriteID2in), 
 .posX3out(posX3in),  .posY3out(posY3in),  .spriteID3out(spriteID3in),
 .posX4out(posX4in),  .posY4out(posY4in),  .spriteID4out(spriteID4in),
 .posX5out(posX5in),  .posY5out(posY5in),  .spriteID5out(spriteID5in),
 .posX6out(posX6in),  .posY6out(posY6in),  .spriteID6out(spriteID6in),
 .posX7out(posX7in),  .posY7out(posY7in),  .spriteID7out(spriteID7in),
 .posX8out(posX8in),  .posY8out(posY8in),  .spriteID8out(spriteID8in),
 .posX9out(posX9in),  .posY9out(posY9in),  .spriteID9out(spriteID9in),
 .posX10out(posX10in), .posY10out(posY10in),  .spriteID10out(spriteID10in),
 .posX11out(posX11in),  .posY11out(posY11in),  .spriteID11out(spriteID11in),
	.*
);

GameTable GameTable
(
	.spriteID1in(4'hf),
	.posX1in(10'h0),
	.posY1in(10'h0),
	.spriteID12in(4'hf),
	.spriteID13in(4'h3),
	.spriteID14in(4'h1),
	.spriteID15in(4'h2),
	.spriteID16in(4'h0),
	.posX12in(10'h0),
	.posX13in(10'h0),
	.posX14in(10'h20),
	.posX15in(10'h40),
	.posX16in(10'h60),
	.posY12in(10'h0),
	.posY13in(10'h14),
	.posY14in(10'h14),
	.posY15in(10'h14),
	.posY16in(10'h14),
	
	.Clk(vs),

	.*
);
shiftUpClock shiftUpClock
(
	.arrowClk(vs), .shiftUp(shiftUp)
); 
getStripModule getStripModule
(
 .shiftUp(shiftUp), .stripArrows(stripArrows)
);
/*
judgement judgement(
input logic sprite2hit_out, sprite3hit_out,
input vs,input [3:0] spriteID2, input logic [9:0] posY2, 
input logic [3:0] spriteID3, input logic [9:0] posY3, input logic [7:0] key, 
output logic [3:0] spriteID1, output logic [9:0] posX1, output logic [9:0]posY1
);
*/
endmodule