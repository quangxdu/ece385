module shiftUpClock(input arrowClk,output shiftUp);

logic [10:0] counter;

always_ff @(posedge arrowClk)
begin
	if (int'(counter)==90)
	begin
		shiftUp=1;
		counter=0;
	end
	counter+= 1;
end
endmodule