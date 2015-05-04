module GameManager(input arrowClk, input shiftUp, input [3:0] stripArrows,
input logic [9:0] posX1in, input logic [9:0] posY1in, input logic [3:0] spriteID1in,
input logic [9:0] posX2in, input logic [9:0] posY2in, input logic [3:0] spriteID2in,
input logic [9:0] posX3in, input logic [9:0] posY3in, input logic [3:0] spriteID3in,
input logic [9:0] posX4in, input logic [9:0] posY4in, input logic [3:0] spriteID4in,
input logic [9:0] posX5in, input logic [9:0] posY5in, input logic [3:0] spriteID5in,
input logic [9:0] posX6in, input logic [9:0] posY6in, input logic [3:0] spriteID6in,
input logic [9:0] posX7in, input logic [9:0] posY7in, input logic [3:0] spriteID7in,
input logic [9:0] posX8in, input logic [9:0] posY8in, input logic [3:0] spriteID8in,
input logic [9:0] posX9in, input logic [9:0] posY9in, input logic [3:0] spriteID9in,
input logic [9:0] posX10in, input logic [9:0] posY10in, input logic [3:0] spriteID10in,
input logic [9:0] posX11in, input logic [9:0] posY11in, input logic [3:0] spriteID11in,
input logic sprite2hit,sprite3hit,

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
output logic sprite2hit_out,sprite3hit_out
);

//sprite 1 is the judgement(good/bad)
//sprite 2-11 are the arrows that move up.
//sprite 2 and 3 are pixels 0 through 90.
//sprite 4 and 5 are pixels 80 through 170.
//sprite 6 and 7 are pixels 160 through 250.
//sprite 7 and 8 are pixels 240 through 330.
//sprite 8 and 9 are pixels 320 through 410.
//sprite 10 and 11 are pixels 400 through 480. 

//only sprite 10 and 11 are requesting new data from the strip. 

always_comb//set sprite 10 and 11 to the new arrows from strip
begin
	if(stripArrows==4'b0000 && shiftUp)
	begin
		spriteID10=4'hf;
		spriteID11=4'hf;
		posY10=9'h1E0; //hexidecimal 480
		posY11=9'h1E0; //hexidecimal 480
		posX10=0;
		posX11=0;
	end
	else if(stripArrows==4'b0001&& shiftUp)
	begin
		spriteID11=4'h7;//right
		spriteID10=4'hf;
		posY10=10'h1E0; //hexidecimal 480
		posY11=10'h1E0; //hexidecimal 480
		posX10=0;
		posX11=10'h1E0;//480
	end
	else if (stripArrows==4'b0010&& shiftUp)
	begin
		spriteID11=4'h5;//down
		spriteID10=4'hf;
		posY10=10'h1E0; //hexidecimal 480
		posY11=10'h1E0; //hexidecimal 480
		posX10=10'h0;
		posX11=10'h140;//320
	end
	else if(stripArrows==4'b0100&& shiftUp)
	begin
		spriteID10=4'h4;//up
		spriteID11=4'hf;
		posY10=9'h1E0; //hexidecimal 480
		posY11=9'h1E0; //hexidecimal 480
		posX10=10'hA0;//160
		posX11=10'h0;
	end
	else if(stripArrows==4'b1000&& shiftUp)
	begin
		spriteID10=4'h6;//left
		spriteID11=4'hf;
		posY10=9'h1E0; //hexidecimal 480
		posY11=9'h1E0; //hexidecimal 480
		posX10=10'h0;
		posX11=10'h0;
	end
	else if(stripArrows==4'b1100&& shiftUp)
	begin
		spriteID10=4'h6;
		spriteID11=4'h4;
		posY10=9'h1E0;
		posY11=9'h1E0;
		posX10=10'h0;
		posY10=10'hA0;
	end
	else if(stripArrows==4'b1010&& shiftUp)
	begin
		spriteID10=4'h6;
		spriteID11=4'h4;
		posY10=10'h1E0;
		posY11=10'h1E0;
		posX10=10'h0;
		posX11=10'h140;
	end
	else if(stripArrows==4'b1001&& shiftUp)
	begin
		spriteID10=4'h6;
		spriteID11=4'h7;
		posY10=10'h1E0;
		posY11=10'h1E0;
		posX10=10'h0;
		posX11=10'h1E0;
	end
	else if(stripArrows==4'b0110&& shiftUp)
	begin
		spriteID10=4'h4;
		spriteID11=4'h5;
		posY10=10'h1E0;
		posY11=10'h1E0;
		posX10=10'hA0;
		posX11=10'h140;
	end
	else if(stripArrows==4'b0101&& shiftUp)
	begin
		spriteID10=4'h4;
		spriteID11=4'h7;
		posY10=10'h1E0;
		posY11=10'h1E0;
		posX10=10'hA0;
		posX11=10'h1E0;
	end
	else if(stripArrows==4'b0011&& shiftUp)
	begin
		spriteID10=4'h5;
		spriteID11=4'h7;
		posY10=10'h1E0;
		posY11=10'h1E0;
		posX10=10'h140;
		posX11=10'h1E0;
	end
	else;
end

always_comb//move all sprites up 1 pixel
begin
	posX2=posX2in;
	posX3=posX3in;
	posX4=posX4in;
	posX5=posX5in;
	posX6=posX6in;
	posX7=posX7in;
	posX8=posX8in;
	posX9=posX9in;
	posX10=posX10in;
	posX11=posX11in;
	
	posY2=posY2in+1;
	posY3=posY3in+1;
	posY4=posY4in+1;
	posY5=posY5in+1;
	posY6=posY6in+1;
	posY7=posY7in+1;
	posY8=posY8in+1;
	posY9=posY9in+1;
	posY10=posY10in+1;
	posY11=posY11in+1;
	
	spriteID2=spriteID2in;
	spriteID3=spriteID3in;
	spriteID4=spriteID4in;
	spriteID5=spriteID5in;
	spriteID6=spriteID6in;
	spriteID7=spriteID7in;
	spriteID8=spriteID8in;
	spriteID9=spriteID9in;
	spriteID10=spriteID10in;
	spriteID11=spriteID11in;
end
endmodule