module GameTable(input Clk, input load, input reset, 
input [159:0] gPosX, gPosY, 
input [63:0] gSpriteID,  
output [9:0] posX1, posY1, output [9:0] posX2, posY2, output [9:0] posX3, posY3, output [9:0] posX4, posY4
output [9:0] posX5, posY5, output [9:0] posX6, posY6, output [9:0] posX7, posY7, output [9:0] posX8, posY8,
output [9:0] posX9, posY9, output [9:0] posX10, posY10, output [9:0] posX11, posY11, output [9:0] posX12, posY12,
output [9:0] posX13, posY13, output [9:0] posX14, posY14, output [9:0] posX15, posY15, output [9:0] posX16, posY16, 
output [3:0] spriteID1, output [3:0] spriteID2, output [3:0] spriteID3, output [3:0] spriteID4, 
output [3:0] spriteID5, output [3:0] spriteID6, output [3:0] spriteID7, output [3:0] spriteID8, 
output [3:0] spriteID9, output [3:0] spriteID10, output [3:0] spriteID11, output [3:0] spriteID12, 
output [3:0] spriteID13, output [3:0] spriteID14, output [3:0] spriteID15, output [3:0] spriteID16, 

);


logic [15:0][3:0] tSpriteID;
logic [15:0][9:0] tPosX;
logic [15:0][9:0] tPosY;
integer i;

initial
begin
    for(i = 0; i <16;i += 1)
    begin
        tSpriteID[i] = 1'b0;
        tPosX[i] = 1'b0;
        tPosY[i] = 1'b0;
end

always_ff @(posedge Clk)
begin
for (i=0;i<16;i=i+1)begin
	tSpriteID[i][0]<=gSpriteID[4*i];
	tSpriteID[i][1]<=gSpriteID[4*i+1];
	tSpriteID[i][2]<=gSpriteID[4*i+2];
	 tSpriteID[i][3]<=gSpriteID[4*i+3];
	 tPosX[i][0]<=gPosX[10*i];
	 tPosX[i][1]<=gPosX[10*i+1];
	 tPosX[i][2]<=gPosX[10*i+2];
	 tPosX[i][3]<=gPosX[10*i+3];
	 tPosX[i][4]<=gPosX[10*i+4];
	 tPosX[i][5]<=gPosX[10*i+5];
	 tPosX[i][6]<=gPosX[10*i+6];
	 tPosX[i][7]<=gPosX[10*i+7];
	 tPosX[i][8]<=gPosX[10*i+8];
	 tPosX[i][9]<=gPosX[10*i+9];
	 tPosY[i][0]<=gPosY[10*i];
	 tPosY[i][1]<=gPosY[10*i+1];
	 tPosY[i][2]<=gPosY[10*i+2];
	 tPosY[i][3]<=gPosY[10*i+3];
	 tPosY[i][4]<=gPosY[10*i+4];
	 tPosY[i][5]<=gPosY[10*i+5];
	 tPosY[i][6]<=gPosY[10*i+6];
	 tPosY[i][7]<=gPosY[10*i+7];
	 tPosY[i][8]<=gPosY[10*i+8];
	 tPosY[i][9]<=gPosY[10*i+9];
end
end
always_comb
begin
	
	posX1= tPosX[0];
	posY1= tPosY[0];
	spriteID1=tSpriteID[0];
	
	posX2= tPosX[1];
	posY2= tPosY[1];
	spriteID2=tSpriteID[1];
	
	posX3= tPosX[2];
	posY3= tPosY[2];
	spriteID3=tSpriteID[2];
	
	posX4= tPosX[3];
	posY4= tPosY[3];
	spriteID4=tSpriteID[3];
		
	posX5= tPosX[4];
	posY5= tPosY[4];
	spriteID5=tSpriteID[4];
		
	posX6= tPosX[5];
	posY6= tPosY[5];
	spriteID6=tSpriteID[5];
		
	posX7= tPosX[6];
	posY7= tPosY[6];
	spriteID7=tSpriteID[6];
		
	posX8= tPosX[7];
	posY8= tPosY[7];
	spriteID8=tSpriteID[7];
		
	posX9= tPosX[8];
	posY9= tPosY[8];
	spriteID9=tSpriteID[8]];
		
	posX10= tPosX[9];
	posY10= tPosY[9];
	spriteID10=tSpriteID[9];
		
	posX11= tPosX[10];
	posY11= tPosY[10];
	spriteID11=tSpriteID[10];
		
	posX12= tPosX[11];
	posY12= tPosY[11];
	spriteID12=tSpriteID[11];
		
	posX13= tPosX[12];
	posY13= tPosY[12];
	spriteID13=tSpriteID[12];
	
		
	posX14= tPosX[13];
	posY14= tPosY[13];
	spriteID14=tSpriteID[13];
		
	posX15= tPosX[14];
	posY15= tPosY[14];
	spriteID15=tSpriteID[14];
	
		
	posX16= tPosX[15];
	posY16= tPosY[15];
	spriteID16=tSpriteID[15];
	
end

endmodule
