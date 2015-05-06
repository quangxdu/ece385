module judgement(
input vs, shiftUp,
input logic [7:0] key1,key2,
input logic sprite2hit,sprite3hit,
input [3:0] spriteID2, spriteID3,
input logic [9:0] posY2, posY3,
input logic [9:0] posX2, PosX3,

input logic [3:0] spriteID1_in,
output logic [3:0] spriteID1, 
output logic [9:0] posX1, 
output logic [9:0] posY1, 
output logic sprite2hit_out, sprite3hit_out
);

always_comb
	begin:Judge_Score
		if (key1==8'b00010110 && (spriteID2==4'h5 || spriteID3==4'h5))
			begin
				spriteID1=4'h8;
				posX1=10'h140;
				posY1=10'hF0;
			end
		else if (key1==8'b0011010 && (spriteID2==4'h5 || spriteID3==4'h5))
			begin
				spriteID1=4'h8;
				posX1=10'h140;
				posY1=10'hF0;
			end
		else if (key1==8'b0000100 && (spriteID2==4'h5 || spriteID3==4'h5))
			begin
				spriteID1=4'h8;
				posX1=10'h140;
				posY1=10'hF0;	
			end
		else if (key1==8'b00000111 && (spriteID2==4'h5 || spriteID3==4'h5))
			begin
				spriteID1=4'h8;
				posX1=10'h140;
				posY1=10'hF0;
			end
		else
			begin
				spriteID1=4'hF;
				posX1=10'h0;
				posY1=10'h0;
			end
/*
		if(spriteID2 == 4'hF && SpriteID3 == 4'hF)
			begin
				spriteID1 = 4'hF;
				posX1 = 1'b0;
				posY1 = 1'b0;
				sprite2hit_out = 1'b0;
				sprite3hit_out = 1'b0;
			end
		else if (spriteID2 == 4'hF && spriteID3 != 4'hF)
			begin
				if(sprite3hit)
					begin
						spriteID1 = 4'h8;//h8 is hit h9 is miss
						posX1=10'h140;
						posY1=10'hF0;
						sprite2hit_out = sprite2hit;
						sprite3hit_out = sprite3hit;
					end
				else
					begin
						if(posY3[6:0] > 16 && posY3[6:0] < 56)
							begin
								if(((key1 ==8'b0011010)|(key2 == 8'b0011010))&spriteID3 == 4'h4)
									begin  
										spriteID1 = 4'h8;//h8 is hit h9 is miss
										posX1=10'h140;
										posY1=10'hF0;
										sprite2hit_out = sprite2hit;
										sprite3hit_out = 1;
									end
								else if(((key1 ==8'b00010110)|(key2 == 8'b00010110))&spriteID3==4'h5)
									begin  
										spriteID1 = 4'h8;//h8 is hit h9 is miss
										posX1=10'h140;
										posY1=10'hF0;
										sprite2hit_out = sprite2hit;
										sprite3hit_out = 1;
									end
								else if(((key1 ==8'b0000100)|(key2 == 8'b0000100))&spriteID3 == 4'h6)
									begin  
										spriteID1 = 4'h8;//h8 is hit h9 is miss
										posX1=10'h140;
										posY1=10'hF0;
										sprite2hit_out = sprite2hit;
										sprite3hit_out = 1;
									end
								else if(((key1 ==8'b00000111)|(key2 == 8'b00000111))&spriteID3 == 4'h7)
									begin  
										spriteID1 = 4'h8;//h8 is hit h9 is miss
										posX1=10'h140;
										posY1=10'hF0;
										sprite2hit_out = sprite2hit;
										sprite3hit_out = 1;
									end
								else
									begin
										spriteID1 = spriteID1_in;//h8 is hit h9 is miss
										posX1=10'h140;
										posY1=10'hF0;
										sprite2hit_out = sprite2hit;
										sprite3hit_out = sprite3hit;
									end
								end
						else if(posY3[6:0] < 16)
							begin
								spriteID1 = 4'h9;//h8 is hit h9 is miss
								posX1=10'h140;
								posY1=10'hF0;
								sprite2hit_out = sprite2hit;
								sprite3hit_out = sprite3hit;
							end
						else
							begin
								spriteID1 = 4'hF;//h8 is hit h9 is miss
								posX1=10'h140;
								posY1=10'hF0;
								sprite2hit_out = sprite2hit;
								sprite3hit_out = sprite3hit;
							end
						end
					end
				else if(spriteID2 != 4'hF && spriteID3 == 4'hF)
					begin
						if(sprite2hit)
							begin
								spriteID1 = 4'h8;//h8 is hit h9 is miss
								posX1=10'h140;
								posY1=10'hF0;
								sprite2hit_out = sprite2hit;
								sprite3hit_out = sprite3hit;
							end
						else
							begin
								if(posY2[6:0] > 16 && posY2[6:0] < 56)
									begin
										if(((key1 ==8'b0011010)|(key2 == 8'b0011010))&spriteID2 == 4'h4)
											begin  
												spriteID1 = 4'h8;//h8 is hit h9 is miss
												posX1=10'h140;
												posY1=10'hF0;
												sprite2hit_out = 1;
												sprite3hit_out = sprite3hit;
											end
										else if(((key1 ==8'b00010110)|(key2 == 8'b00010110))&spriteID2==4'h5)
											begin  
												spriteID1 = 4'h8;//h8 is hit h9 is miss
												posX1=10'h140;
												posY1=10'hF0;
												sprite2hit_out = 1;
												sprite3hit_out = sprite3hit;
											end
										else if(((key1 ==8'b0000100)|(key2 == 8'b0000100))&spriteID2 == 4'h6)
											begin  
												spriteID1 = 4'h8;//h8 is hit h9 is miss
												posX1=10'h140;
												posY1=10'hF0;
												sprite2hit_out = 1;
												sprite3hit_out = sprite3hit;
											end
										else if(((key1 ==8'b00000111)|(key2 == 8'b00000111))&spriteID2 == 4'h7)
											begin  
												spriteID1 = 4'h8;//h8 is hit h9 is miss
												posX1=10'h140;
												posY1=10'hF0;
												sprite2hit_out = 1;
												sprite3hit_out = sprite3hit;
											end
										else
											begin
												spriteID1 = spriteID1_in;//h8 is hit h9 is miss
												posX1=10'h140;
												posY1=10'hF0;
												sprite2hit_out = sprite2hit;
												sprite3hit_out = sprite3hit;
											end
										end
								else if(posY3[6:0] < 16)
									begin
										spriteID1 = 4'h9;//h8 is hit h9 is miss
										posX1=10'h140;
										posY1=10'hF0;
										sprite2hit_out = 1;
										sprite3hit_out = 1;
									end
								else
									begin
										spriteID1 = 4'hF;//h8 is hit h9 is miss
										posX1=10'h140;
										posY1=10'hF0;
										sprite2hit_out = sprite2hit;
										sprite3hit_out = sprite3hit;
									end
							end
					end
			
else
begin
	if(sprite2hit & sprite3hit)
	begin
		spriteID1 = 4'h8;//h8 is hit h9 is miss
        posX1=10'h140;
		posY1=10'hF0;
        sprite2hit_out = 1'b1;
		sprite3hit_out = 1'b1;
	end
	else if(sprite2hit==1'b0 && sprite3hit == 1'b1)
	begin
		if(posY2[6:0] > 16 && posY2[6:0] < 56)
        begin
            if(((key1 ==8'b0011010)|(key2 == 8'b0011010))&spriteID2 == 4'h4)
            begin  
					spriteID1 = 4'h8;//h8 is hit h9 is miss
               posX1=10'h140;
               posY1=10'hF0;
               sprite2hit_out = 1;
               sprite3hit_out = sprite3hit;
            end
			else if(((key1 ==8'b00010110)|(key2 == 8'b00010110))&spriteID2==4'h5)
            begin  
                spriteID1 = 4'h8;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = 1;
                sprite3hit_out = sprite3hit;
            end
			else if(((key1 ==8'b0000100)|(key2 == 8'b0000100))&spriteID2 == 4'h6)
            begin  
                spriteID1 = 4'h8;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = 1;
                sprite3hit_out = sprite3hit;
            end
			else if(((key1 ==8'b00000111)|(key2 == 8'b00000111))&spriteID2 == 4'h7)
            begin  
                spriteID1 = 4'h8;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = 1;
                sprite3hit_out = sprite3hit;
            end
			else
				begin
					 spriteID1 = spriteID1_in;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = sprite2hit;
                sprite3hit_out = sprite3hit;
				end
		end
	end
		else if(posY2[6:0] < 16)
			begin
				spriteID1 = 4'h9;//h8 is hit h9 is miss
				posX1=10'h140;
				posY1=10'hF0;
				sprite2hit_out = sprite2hit;
				sprite3hit_out = sprite3hit;
			end
		else
			begin
				spriteID1 = 4'hf;//h8 is hit h9 is miss
				posX1=10'h140;
				posY1=10'hF0;
				sprite2hit_out = sprite2hit;
				sprite3hit_out = sprite3hit;
			end
	end
	else if(sprite2hit==1'b1 && sprite3hit ==1'b0)
	begin
	 if(posY3[6:0] > 16 && posY3[6:0] < 56)
        begin
            if(((key1 ==8'b0011010)|(key2 == 8'b0011010))&spriteID3 == 4'h4)
            begin  
                spriteID1 = 4'h8;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = sprite2hit;
                sprite3hit_out = 1;
            end
			else if(((key1 ==8'b00010110)|(key2 == 8'b00010110))&spriteID3==4'h5)
            begin  
                spriteID1 = 4'h8;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = sprite2hit;
                sprite3hit_out = 1;
            end
			else if(((key1 ==8'b0000100)|(key2 == 8'b0000100))&spriteID3 == 4'h6)
            begin  
                spriteID1 = 4'h8;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = sprite2hit;
                sprite3hit_out = 1;
            end
			else if(((key1 ==8'b00000111)|(key2 == 8'b00000111))&spriteID3 == 4'h7)
            begin  
                spriteID1 = 4'h8;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = sprite2hit;
                sprite3hit_out = 1;
            end
			else
			begin
					 spriteID1 = spriteID1_in;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = sprite2hit;
                sprite3hit_out = sprite3hit;
			end
       end
		else if(posY3[6:0] < 16)
		begin
			spriteID1 = 4'h9;//h8 is hit h9 is miss
			posX1=10'h140;
			posY1=10'hF0;
			sprite2hit_out = sprite2hit;
			sprite3hit_out = sprite3hit;
		end
		else
		begin
			spriteID1 = 4'hF;//h8 is hit h9 is miss
			posX1=10'h140;
			posY1=10'hF0;
			sprite2hit_out = sprite2hit;
			sprite3hit_out = sprite3hit;
		end
	end
	else
	begin
		if(posY2[6:0] > 16 && posY2[6:0] < 56)
        begin
            if(((key1 ==8'b0011010)|(key2 == 8'b0011010))&spriteID2 == 4'h4)
            begin  
                spriteID1 = 4'hf;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = 1;
                sprite3hit_out = sprite3hit;
            end
			else if(((key1 ==8'b00010110)|(key2 == 8'b00010110))&spriteID2==4'h5)
            begin  
                spriteID1 = 4'hf;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = 1;
                sprite3hit_out = sprite3hit;
            end
			else if(((key1 ==8'b0000100)|(key2 == 8'b0000100))&spriteID2 == 4'h6)
            begin  
                spriteID1 = 4'hf;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = 1;
                sprite3hit_out = sprite3hit;
            end
			else if(((key1 ==8'b00000111)|(key2 == 8'b00000111))&spriteID2 == 4'h7)
            begin  
                spriteID1 = 4'hf;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = 1;
                sprite3hit_out = sprite3hit;
            end
			else
			begin
				spriteID1 = spriteID1_in;//h8 is hit h9 is miss
                posX1=10'h140;
                posY1=10'hF0;
                sprite2hit_out = sprite2hit;
                sprite3hit_out = sprite3hit;
			end
		end
		else
		begin
			spriteID1 = 4'hF;//h8 is hit h9 is miss
			posX1=10'h140;
			posY1=10'hF0;
			sprite2hit_out = sprite2hit;
			sprite3hit_out = sprite3hit;
		end
	end
	*/
	
end

endmodule