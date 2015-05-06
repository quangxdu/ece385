module GameManager(input arrowClk, input logic shiftUp, input logic [3:0] stripArrows,
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


output logic [9:0] posX2out, output logic [9:0] posY2out, output logic [3:0] spriteID2out, 
output logic [9:0] posX3out, output logic [9:0] posY3out, output logic [3:0] spriteID3out,
output logic [9:0] posX4out, output logic [9:0] posY4out, output logic [3:0] spriteID4out,
output logic [9:0] posX5out, output logic [9:0] posY5out, output logic [3:0] spriteID5out,
output logic [9:0] posX6out, output logic [9:0] posY6out, output logic [3:0] spriteID6out,
output logic [9:0] posX7out, output logic [9:0] posY7out, output logic [3:0] spriteID7out,
output logic [9:0] posX8out, output logic [9:0] posY8out, output logic [3:0] spriteID8out,
output logic [9:0] posX9out, output logic [9:0] posY9out, output logic [3:0] spriteID9out,
output logic [9:0] posX10out, output logic[9:0] posY10out, output logic [3:0] spriteID10out,
output logic [9:0] posX11out, output logic [9:0] posY11out, output logic [3:0] spriteID11out

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
	if((stripArrows == 4'b0000) & (shiftUp))
	begin
		spriteID10out=4'hf;
		spriteID11out=4'hf;
		posY10out=9'h1E0; //hexidecimal 480
		posY11out=9'h1E0; //hexidecimal 480
		posX10out=1'b0;
		posX11out=1'b0;
	end
	else if(stripArrows==4'b0001&& shiftUp)
	begin
		spriteID11out=4'h4;//right
		spriteID10out=4'hf;
		posY10out=10'h1E0; //hexidecimal 480
		posY11out=10'h1E0; //hexidecimal 480
		posX10out=1'b0;
		posX11out=10'h60;//480
	end
	else if (stripArrows==4'b0010&& shiftUp)
	begin
		spriteID11out=4'h6;//down
		spriteID10out=4'hf;
		posY10out=10'h1E0; //hexidecimal 480
		posY11out=10'h1E0; //hexidecimal 480
		posX10out=10'h40;
		posX11out=10'h0;//320
	end
	else if(stripArrows==4'b0100&& shiftUp)
	begin
		spriteID10out=4'h5;//up
		spriteID11out=4'hf;
		posY10out=9'h1E0; //hexidecimal 480
		posY11out=9'h1E0; //hexidecimal 480
		posX10out=10'h20;//160
		posX11out=10'h0;
	end
	else if(stripArrows==4'b1000&& shiftUp)
	begin
		spriteID10out=4'h7;//left
		spriteID11out=4'hf;
		posY10out=9'h1E0; //hexidecimal 480
		posY11out=9'h1E0; //hexidecimal 480
		posX10out=10'h0;
		posX11out=10'h0;
	end
	else if(stripArrows==4'b1100&& shiftUp)
	begin
		spriteID10out=4'h7;
		spriteID11out=4'h5;
		posY10out=9'h1E0;
		posY11out=9'h1E0;
		posX10out=10'h0;
		posX11out=10'h20;
	end
	else if(stripArrows==4'b1010&& shiftUp)
	begin
		spriteID10out=4'h7;
		spriteID11out=4'h6;
		posY10out=10'h1E0;
		posY11out=10'h1E0;
		posX10out=10'h0;
		posX11out=10'h40;
	end
	else if(stripArrows==4'b1001&& shiftUp)
	begin
		spriteID10out=4'h7;
		spriteID11out=4'h4;
		posY10out=10'h1E0;
		posY11out=10'h1E0;
		posX10out=10'h0;
		posX11out=10'h60;
	end
	else if(stripArrows==4'b0110&& shiftUp)
	begin
		spriteID10out=4'h5;
		spriteID11out=4'h6;
		posY10out=10'h1E0;
		posY11out=10'h1E0;
		posX10out=10'h20;
		posX11out=10'h40;
	end
	else if(stripArrows==4'b0101&& shiftUp)
	begin
		spriteID10out=4'h5;
		spriteID11out=4'h4;
		posY10out=10'h1E0;
		posY11out=10'h1E0;
		posX10out=10'h20;
		posX11out=10'h60;
	end
	else if(stripArrows==4'b0011&& shiftUp)
	begin
		spriteID10out=4'h6;
		spriteID11out=4'h4;
		posY10out=10'h1E0;
		posY11out=10'h1E0;
		posX10out=10'h40;
		posX11out=10'h60;
	end
	else
	begin
		posX10out=posX10in;
		posX11out=posX11in;
		posY10out=posY10in-10'b1;
		posY11out=posY11in-10'b1;
		spriteID10out=spriteID10in;
		spriteID11out=spriteID11in;
	end
end

always_comb//move all sprites up 1 pixel
begin
	if(shiftUp)
	begin
		posX2out=posX4in;
		posX3out=posX5in;
		posX4out=posX6in;
		posX5out=posX7in;
		posX6out=posX8in;
		posX7out=posX9in;
		posX8out=posX10in;
		posX9out=posX11in;

		posY2out=posY4in;
		posY3out=posY5in;
		posY4out=posY6in;
		posY5out=posY7in;
		posY6out=posY8in;
		posY7out=posY9in;
		posY8out=posY10in;
		posY9out=posY11in;

		spriteID2out=spriteID4in;
		spriteID3out=spriteID5in;
		spriteID4out=spriteID6in;
		spriteID5out=spriteID7in;
		spriteID6out=spriteID8in;
		spriteID7out=spriteID9in;
		spriteID8out=spriteID10in;
		spriteID9out=spriteID11in;
	end
	else
	begin

	posX2out=posX2in;
	posX3out=posX3in;
	posX4out=posX4in;
	posX5out=posX5in;
	posX6out=posX6in;
	posX7out=posX7in;
	posX8out=posX8in;
	posX9out=posX9in;

	posY2out=posY2in-10'b1;
	posY3out=posY3in-10'b1;
	posY4out=posY4in-10'b1;
	posY5out=posY5in-10'b1;
	posY6out=posY6in-10'b1;
	posY7out=posY7in-10'b1;
	posY8out=posY8in-10'b1;
	posY9out=posY9in-10'b1;

	spriteID2out=spriteID2in;
	spriteID3out=spriteID3in;
	spriteID4out=spriteID4in;
	spriteID5out=spriteID5in;
	spriteID6out=spriteID6in;
	spriteID7out=spriteID7in;
	spriteID8out=spriteID8in;
	spriteID9out=spriteID9in;
	end


end
endmodule