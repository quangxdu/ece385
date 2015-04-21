module GameModule
(
input Clk, 
input logic [7:0] keycode,
output [9:0] posX1, posY1, output [9:0] posX2, posY2, output [9:0] posX3, posY3, output [9:0] posX4, posY4
output [9:0] posX5, posY5, output [9:0] posX6, posY6, output [9:0] posX7, posY7, output [9:0] posX8, posY8,
output [9:0] posX9, posY9, output [9:0] posX10, posY10, output [9:0] posX11, posY11, output [9:0] posX12, posY12,
output [9:0] posX13, posY13, output [9:0] posX14, posY14, output [9:0] posX15, posY15, output [9:0] posX16, posY16, 
output [3:0] spriteID1, output [3:0] spriteID2, output [3:0] spriteID3, output [3:0] spriteID4, 
output [3:0] spriteID5, output [3:0] spriteID6, output [3:0] spriteID7, output [3:0] spriteID8, 
output [3:0] spriteID9, output [3:0] spriteID10, output [3:0] spriteID11, output [3:0] spriteID12, 
output [3:0] spriteID13, output [3:0] spriteID14, output [3:0] spriteID15, output [3:0] spriteID16, 
);


GameControl GameControl
(.*
);

GameDatapath GameDatapath
(.*
);


endmodule
