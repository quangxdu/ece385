module shiftUpClock(input arrowClk,output shiftUp);

logic [10:0] counter;
always_ff @(posedge arrowClk)
begin
	if (int'(counter)==96)
	begin
		counter=11'b0;
	end
	counter+= 1'b1;
end
always_comb
begin
	if(counter == 11'h5E)
		shiftUp = 1;	
	else
		shiftUp = 0;
end

endmodule