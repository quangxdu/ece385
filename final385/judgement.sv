module judgement(input vs,input [3:0] spriteID2, input logic [9:0] posY2, input logic sprite2hit,sprite3hit,
input logic [3:0] spriteID3, input logic [9:0] posY3, input logic [7:0] key1,key2,
output logic [3:0] spriteID1, output logic [9:0] posX1, output logic [9:0]posY1, output logic sprite2hit_out,sprite3hit_out);

always_ff @(posedge vs)
begin:Judge_Score
if (sprite2hit==0 &&sprite3hit==0)
begin
	sprite2hit_out=1;
	sprite3hit_out=1;
	//template arrows y coords is 20 through 52(center 36). Good range 16 through 56 
	if (posY2[6:0]>16 && posY3[6:0]>16 && posY2[6:0]<56 &&posY3[6:0]<56)  //figure out simultaneous presses
	begin
		if (key==8'b0011010 && spriteID2==4'h4)//w 26 up //sprite2 covers left and up
		begin
			spriteID1=4'h8; // haven't set up sprite table yet but a hit will pop up
			posX1=10'h140;
			posY1=10'hF0;
		end	
		else if ((key==8'b0000100 && spriteID2==4'h6))//a left
		begin
			spriteID1=4'h8; // haven't set up sprite table yet but a good will pop up
			posX1=10'h140;
			posY1=10'hF0;
		end
		else if ((key==8'b00010110 && spriteID3==4'h5))//s down //sprite3 covers down and right
		begin
			spriteID1=4'h8; // haven't set up sprite table yet but a good will pop up
			posX1=10'h140;
			posY1=10'hF0;
		end
		else if ((key==8'b00000111 && spriteID3==4'h7))//d right
		begin
			spriteID1=4'h8; // haven't set up sprite table yet but a good will pop up
			posX1=10'h140;
			posY1=10'hF0;
		end
		else;
	end
	else if ((posY2[7:0]<16 || posY2[7:0]>56) &&(posY3[7:0]<16 || posY3[7:0]>56))
	begin
		if (spriteID2==4'h4)//w 26 up //sprite2 covers left and up
		begin
			spriteID1=4'h9; //havent set up sprite table yet but miss will pop up
			posX1=10'h140;
			posY1=10'hF0;
		end
		else if (( spriteID2==4'h6))//a left
		begin
			spriteID1=4'h9; //havent set up sprite table yet but miss will pop up
			posX1=10'h140;
			posY1=10'hF0;
		end
		else if ((spriteID3==4'h5))//s down //sprite3 covers down and right
		begin
			spriteID1=4'h9; //havent set up sprite table yet but miss will pop up
			posX1=10'h140;
			posY1=10'hF0;
		end
		else if ((spriteID3==4'h7))//d right
		begin
			spriteID1=4'h9; //havent set up sprite table yet but miss will pop up
			posX1=10'h140;
			posY1=10'hF0;
		end
		else;
	end
	
end

end	
endmodule