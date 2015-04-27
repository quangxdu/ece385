module GameTable(input Clk, input logic load, input logic reset,  
input logic [3:0] spriteID1in, input logic [3:0] spriteID2in, input logic [3:0] spriteID3in, input logic [3:0] spriteID4in, 
input logic [3:0] spriteID5in, input logic [3:0] spriteID6in, input logic [3:0] spriteID7in, input logic [3:0] spriteID8in, 
input logic [3:0] spriteID9in, input logic [3:0] spriteID10in, input logic [3:0] spriteID11in, input logic [3:0] spriteID12in, 
input logic [3:0] spriteID13in, input logic [3:0] spriteID14in, input logic [3:0] spriteID15in, input logic [3:0] spriteID16in, 

input logic [9:0] posX1in, posY1in, input logic [9:0] posX2in, posY2in, input logic [9:0] posX3in, posY3in, input logic [9:0] posX4in, posY4in,
input logic [9:0] posX5in, posY5in, input logic [9:0] posX6in, posY6in, input logic [9:0] posX7in, posY7in, input logic [9:0] posX8in, posY8in,
input logic [9:0] posX9in, posY9in, input logic [9:0] posX10in, posY10in, input logic [9:0] posX11in, posY11in, input logic [9:0] posX12in, posY12in,
input logic [9:0] posX13in, posY13in, input logic [9:0] posX14in, posY14in, input logic [9:0] posX15in, posY15in, input logic [9:0] posX16in, posY16in, 

output logic [9:0] posX1, posY1, output logic [9:0] posX2, posY2, output logic [9:0] posX3, posY3, output logic [9:0] posX4, posY4,
output logic [9:0] posX5, posY5, output logic [9:0] posX6, posY6, output logic [9:0] posX7, posY7, output logic [9:0] posX8, posY8,
output logic [9:0] posX9, posY9, output logic [9:0] posX10, posY10, output logic [9:0] posX11, posY11, output logic [9:0] posX12, posY12,
output logic [9:0] posX13, posY13, output logic [9:0] posX14, posY14, output logic [9:0] posX15, posY15, output logic [9:0] posX16, posY16, 
output logic [3:0] spriteID1, output logic [3:0] spriteID2, output logic [3:0] spriteID3, output logic [3:0] spriteID4, 
output logic [3:0] spriteID5, output logic [3:0] spriteID6, output logic [3:0] spriteID7, output logic [3:0] spriteID8, 
output logic [3:0] spriteID9, output logic [3:0] spriteID10, output logic [3:0] spriteID11, output logic [3:0] spriteID12, 
output logic [3:0] spriteID13, output logic [3:0] spriteID14, output logic [3:0] spriteID15, output logic [3:0] spriteID16, 

);

logic [3:0] tSpriteID1;
logic [3:0] tSpriteID2;
logic [3:0] tSpriteID3;
logic [3:0] tSpriteID4;
logic [3:0] tSpriteID5;
logic [3:0] tSpriteID6;
logic [3:0] tSpriteID7;
logic [3:0] tSpriteID8;
logic [3:0] tSpriteID9;
logic [3:0] tSpriteID9;
logic [3:0] tSpriteID10;
logic [3:0] tSpriteID11;
logic [3:0] tSpriteID12;
logic [3:0] tSpriteID13;
logic [3:0] tSpriteID14;
logic [3:0] tSpriteID15;
logic [3:0] tSpriteID16;

logic [9:0] tPosX1;
logic [9:0] tPosX2;
logic [9:0] tPosX3;
logic [9:0] tPosX4;
logic [9:0] tPosX5;
logic [9:0] tPosX6;
logic [9:0] tPosX7;
logic [9:0] tPosX8;
logic [9:0] tPosX9;
logic [9:0] tPosX10;
logic [9:0] tPosX11;
logic [9:0] tPosX12;
logic [9:0] tPosX13;
logic [9:0] tPosX14;
logic [9:0] tPosX15;
logic [9:0] tPosX16;

logic [9:0] tPosY1;
logic [9:0] tPosY2;
logic [9:0] tPosY3;
logic [9:0] tPosY4;
logic [9:0] tPosY5;
logic [9:0] tPosY6;
logic [9:0] tPosY7;
logic [9:0] tPosY8;
logic [9:0] tPosY9;
logic [9:0] tPosY10;
logic [9:0] tPosY11;
logic [9:0] tPosY12;
logic [9:0] tPosY13;
logic [9:0] tPosY14;
logic [9:0] tPosY15;
logic [9:0] tPosY16;



tSpriteID1 = 1'b0;
tPosX1 = 1'b0;
tPosY1 = 1'b0;
tSpriteID2 = 1'b0;
tPosX2 = 1'b0;
tPosY2 = 1'b0;
tSpriteID3 = 1'b0;
tPosX3 = 1'b0;
tPosY3 = 1'b0;
tSpriteID4 = 1'b0;
tPosX4 = 1'b0;
tPosY4 = 1'b0;
tSpriteID5 = 1'b0;
tPosX5 = 1'b0;
tPosY5 = 1'b0;
tSpriteID6 = 1'b0;
tPosX6 = 1'b0;
tPosY6 = 1'b0;
tSpriteID7 = 1'b0;
tPosX7 = 1'b0;
tPosY7 = 1'b0;
tSpriteID8 = 1'b0;
tPosX8 = 1'b0;
tPosY8 = 1'b0;
tSpriteID9 = 1'b0;
tPosX9 = 1'b0;
tPosY9 = 1'b0;
tSpriteID10 = 1'b0;
tPosX10 = 1'b0;
tPosY10 = 1'b0;
tSpriteID11 = 1'b0;
tPosX11 = 1'b0;
tPosY11 = 1'b0;
tSpriteID12 = 1'b0;
tPosX12 = 1'b0;
tPosY12 = 1'b0;
tSpriteID13 = 1'b0;
tPosX13 = 1'b0;
tPosY13 = 1'b0;
tSpriteID4 = 1'b0;
tPosX14 = 1'b0;
tPosY14 = 1'b0;
tSpriteID15 = 1'b0;
tPosX15 = 1'b0;
tPosY15 = 1'b0;
tSpriteID16 = 1'b0;
tPosX16 = 1'b0;
tPosY16 = 1'b0;

always_ff @(posedge Clk)

	tSpriteID1=SpriteID1in;
	tPosX1=posX1in;
	tPosY1=posY1in;
	tSpriteID2=SpriteID2in;
	tPosX2=posX2in;
	tPosY2=posY2in;
	tSpriteID3=SpriteID3in;
	tPosX3=posX3in;
	tPosY3=posY3in;
	tSpriteID4=SpriteID4in;
	tPosX4=posX4in;
	tPosY4=posY4in;
	tSpriteID5=SpriteID5in;
	tPosX5=posX5in;
	tPosY5=posY5in;
	tSpriteID6=SpriteID6in;
	tPosX6=posX6in;
	tPosY6=posY6in;
	tSpriteID7=SpriteID7in;
	tPosX7=posX7in;
	tPosY7=posY7in;
	tSpriteID8=SpriteID8in;
	tPosX8=posX8in;
	tPosY8=posY8in;
	tSpriteID9=SpriteID9in;
	tPosX9=posX9in;
	tPosY9=posY9in;	
	tSpriteID10=SpriteID10in;
	tPosX10=posX10in;
	tPosY10=posY10in;
	tSpriteID11=SpriteID11in;
	tPosX11=posX11in;
	tPosY11=posY11in;
	tSpriteID12=SpriteID12in;
	tPosX12=posX12in;
	tPosY12=posY12in;
	tSpriteID13=SpriteID13in;
	tPosX13=posX13in;
	tPosY13=posY13in;
	tSpriteID14=SpriteID14in;
	tPosX14=posX14in;
	tPosY14=posY14in;
	tSpriteID15=SpriteID15in;
	tPosX15=posX15in;
	tPosY15=posY15in;
	tSpriteID16=SpriteID16in;
	tPosX16=posX16in;
	tPosY16=posY16in;
end
always_comb
begin
	posX1= tPosX1;
	posY1= tPosY1;
	spriteID1=tSpriteID1
	
	posX2= tPosX2;
	posY2= tPosY2;
	spriteID2=tSpriteID2;
	
	posX3= tPosX3;
	posY3= tPosY3;
	spriteID3=tSpriteID3;
	
	posX4= tPosX4;
	posY4= tPosY4;
	spriteID4=tSpriteID4;
		
	posX5= tPosX5;
	posY5= tPosY5;
	spriteID5=tSpriteID5;
		
	posX6= tPosX6;
	posY6= tPosY6;
	spriteID6=tSpriteID6;
		
	posX7= tPosX7;
	posY7= tPosY7;
	spriteID7=tSpriteID7;
		
	posX8= tPosX8;
	posY8= tPosY8;
	spriteID8=tSpriteID8;
		
	posX9= tPosX9;
	posY9= tPosY9;
	spriteID9=tSpriteID9;
		
	posX10= tPosX10;
	posY10= tPosY10;
	spriteID10=tSpriteID10;
		
	posX11= tPosX11;
	posY11= tPosY11;
	spriteID11=tSpriteID11;
		
	posX12= tPosX12;
	posY12= tPosY12;
	spriteID12=tSpriteID12;
		
	posX13= tPosX13;
	posY13= tPosY13;
	spriteID13=tSpriteID13;
	
		
	posX14= tPosX14;
	posY14= tPosY14;
	spriteID14=tSpriteID14;
		
	posX15= tPosX15;
	posY15= tPosY15;
	spriteID15=tSpriteID15;
	
		
	posX16= tPosX16;
	posY16= tPosY16;
	spriteID16=tSpriteID16;
	
end

endmodule
