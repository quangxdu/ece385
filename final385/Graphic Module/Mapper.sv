module Mapper(input [9:0] DrawX, DrawY, 
input [9:0] PosX1, PosY1, input [9:0] PosX2, PosY2, input [9:0] PosX3, PosY3, input [9:0] PosX4, PosY4,
input [9:0] PosX5, PosY5, input [9:0] PosX6, PosY6, input [9:0] PosX7, PosY7, input [9:0] PosX8, PosY8,
input [9:0] PosX9, PosY9, input [9:0] PosX10, PosY10, input [9:0] PosX11, PosY11, input [9:0] PosX12, PosY12,
input [9:0] PosX13, PosY13, input [9:0] PosX14, PosY14, input [9:0] PosX15, PosY15, input [9:0] PosX16, PosY16, 
input [3:0] SpriteID1,input [3:0] SpriteID2,input [3:0] SpriteID3,input [3:0] SpriteID4,
input [3:0] SpriteID5,input [3:0] SpriteID6,input [3:0] SpriteID7,input [3:0] SpriteID8,
input [3:0] SpriteID9,input [3:0] SpriteID10,input [3:0] SpriteID11,input [3:0] SpriteID12,
input [3:0] SpriteID13,input [3:0] SpriteID14,input [3:0] SpriteID15,input [3:0] SpriteID16, 
output [3:0] spriteIDOut, 
output [4:0] sPosXOut,sPosYOut);

always_comb
begin
	if (SpriteID1==4'h0 && DrawX-PosX1<32 && DrawY-PosY1<32 && DrawX-PosX1>=0 && DrawY-PosY1>=0)
	begin
		spriteIDOut=SpriteID1;
		sPosXOut=PosX1[4:0]-DrawX[4:0];
		sPosYOut=PosY1[4:0]-DrawY[4:0];
	end
	
	else if (SpriteID2==4'h0 && DrawX-PosX2<32 && DrawY-PosY2<32 && DrawX-PosX2>=0 && DrawY-PosY2>=0)
	begin
			spriteIDOut=SpriteID2;
			sPosXOut=PosX2[4:0]-DrawX[4:0];
			sPosYOut=PosY2[4:0]-DrawY[4:0];
	end
	else if (SpriteID3==4'h0 && DrawX-PosX3<32 && DrawY-PosY3<32 && DrawX-PosX3>=0 && DrawY-PosY3>=0)
	begin
			spriteIDOut=SpriteID3;
			sPosXOut=PosX3[4:0]-DrawX[4:0];
			sPosYOut=PosY3[4:0]-DrawY[4:0];
	end
	else if (SpriteID4==4'h0 && DrawX-PosX4<32 && DrawY-PosY4<32 && DrawX-PosX4>=0 && DrawY-PosY4>=0)
	begin
			spriteIDOut=SpriteID4;
			sPosXOut=PosX4[4:0]-DrawX[4:0];
			sPosYOut=PosY4[4:0]-DrawY[4:0];
	end
	else if (SpriteID5==4'h0 && DrawX-PosX5<32 && DrawY-PosY5<32 && DrawX-PosX5>=0 && DrawY-PosY5>=0)
	begin
			spriteIDOut=SpriteID5;
			sPosXOut=PosX5[4:0]-DrawX[4:0];
			sPosYOut=PosY5[4:0]-DrawY[4:0];
	end
	else if (SpriteID6==4'h0 && DrawX-PosX6<32 && DrawY-PosY6<32 && DrawX-PosX6>=0 && DrawY-PosY6>=0)
	begin
			spriteIDOut=SpriteID6;
			sPosXOut=PosX6[4:0]-DrawX[4:0];
			sPosYOut=PosY6[4:0]-DrawY[4:0];
	end
	else if (SpriteID7==4'h0 && DrawX-PosX7<32 && DrawY-PosY7<32 && DrawX-PosX7>=0 && DrawY-PosY7>=0)
	begin
			spriteIDOut=SpriteID7;
			sPosXOut=PosX7[4:0]-DrawX[4:0];
			sPosYOut=PosY7[4:0]-DrawY[4:0];
	end
	else if (SpriteID8==4'h0 && DrawX-PosX8<32 && DrawY-PosY8<32 && DrawX-PosX8>=0 && DrawY-PosY8>=0)
	begin
			spriteIDOut=SpriteID8;
			sPosXOut=PosX8[4:0]-DrawX[4:0];
			sPosYOut=PosY8[4:0]-DrawY[4:0];
	end
	else if (SpriteID9==4'h0 && DrawX-PosX9<32 && DrawY-PosY9<32 && DrawX-PosX9>=0 && DrawY-PosY9>=0)
	begin
			spriteIDOut=SpriteID9;
			sPosXOut=PosX9[4:0]-DrawX[4:0];
			sPosYOut=PosY9[4:0]-DrawY[4:0];
	end
	else if (SpriteID10==4'h0 && DrawX-PosX10<32 && DrawY-PosY10<32 && DrawX-PosX10>=0 && DrawY-PosY10>=0)
	begin
			spriteIDOut=SpriteID10;
			sPosXOut=PosX10[4:0]-DrawX[4:0];
			sPosYOut=PosY10[4:0]-DrawY[4:0];
	end
	else if (SpriteID11==4'h0 && DrawX-PosX11<32 && DrawY-PosY11<32 && DrawX-PosX11>=0 && DrawY-PosY11>=0)
	begin
			spriteIDOut=SpriteID11;
			sPosXOut=PosX11[4:0]-DrawX[4:0];
			sPosYOut=PosY11[4:0]-DrawY[4:0];
	end
	else if (SpriteID12==4'h0 && DrawX-PosX12<32 && DrawY-PosY12<32 && DrawX-PosX12>=0 && DrawY-PosY12>=0)
	begin
			spriteIDOut=SpriteID12;
			sPosXOut=PosX12[4:0]-DrawX[4:0];
			sPosYOut=PosY12[4:0]-DrawY[4:0];
	end
	else if (SpriteID13==4'h0 && DrawX-PosX13<32 && DrawY-PosY13<32 && DrawX-PosX13>=0 && DrawY-PosY13>=0)
	begin
			spriteIDOut=SpriteID13;
			sPosXOut=PosX13[4:0]-DrawX[4:0];
			sPosYOut=PosY13[4:0]-DrawY[4:0];
	end
	else if (SpriteID14==4'h0 && DrawX-PosX14<32 && DrawY-PosY14<32 && DrawX-PosX14>=0 && DrawY-PosY14>=0)
	begin
			spriteIDOut=SpriteID14;
			sPosXOut=PosX14[4:0]-DrawX[4:0];
			sPosYOut=PosY14[4:0]-DrawY[4:0];
	end
	else if (SpriteID15==4'h0 && DrawX-PosX15<32 && DrawY-PosY15<32 && DrawX-PosX15>=0 && DrawY-PosY15>=0)
	begin
			spriteIDOut=SpriteID15;
			sPosXOut=PosX15[4:0]-DrawX[4:0];
			sPosYOut=PosY15[4:0]-DrawY[4:0];
	end
	else if (SpriteID16==4'h0 && DrawX-PosX16<32 && DrawY-PosY16<32 && DrawX-PosX16>=0 && DrawY-PosY16>=0)
	begin
			spriteIDOut=SpriteID16;
			sPosXOut=PosX16[4:0]-DrawX[4:0];
			sPosYOut=PosY16[4:0]-DrawY[4:0];
	end
    else
    begin
        spriteIDOut = 4'bf;
        sPosXOut = 0;
        sPosYOut = 0;
    end
end
endmodule
