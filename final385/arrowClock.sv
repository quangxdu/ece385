module arrowClock(input vs, output arrowClk)
logic [10:0]counter;
always_comb(@posEdge vs)
	if (int'counter==5)
	begin
		arrowClk=1;
		counter=0;
	end
	counter++;
end