module GameModule
(
	input clk,
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
output logic [9:0] posX11, output logic [9:0] posY11, output logic [3:0] spriteID11
);
 logic [9:0] posX1in;  logic [9:0] posY1in;  logic [3:0] spriteID1in,
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

GameManager GameManager
(
	//input arrowClk, input shiftUp, input [3:0] stripArrows,
	.*
);

GameTable GameTable
(
	.*
);
shiftUpClock shiftUpClock
(
	input arrowClk,output shiftUp
); 
getStripModule getStripModule
(
input shiftUp, output [3:0] stripArrows
);
judgement judgement(
input logic sprite2hit_out, sprite3hit_out,
input vs,input [3:0] spriteID2, input logic [9:0] posY2, 
input logic [3:0] spriteID3, input logic [9:0] posY3, input logic [7:0] key, 
output logic [3:0] spriteID1, output logic [9:0] posX1, output logic [9:0]posY1
);
endmodule