module getStripModule(input shiftUp, output [3:0] stripArrows);

logic [9:0] counter;
parameter [0:32][3:0]strip={
4'b0000,4'b0001,4'b0001, 4'b1000, 4'b0010, 4'b0100, 4'b0001, 4'b0100, 4'b0010, 4'b0010, 
4'b1000,4'b0100,4'b1000,4'b0100, 4'b1000, 4'b1000, 4'b1000, 4'b0010, 4'b0001, 4'b1000,4'b0010,
4'b0100,4'b1000,4'b1000,4'b0010, 4'b0100,4'b1000, 4'b1000, 4'b0010, 4'b0100,4'b1000,4'b100000
};
always_ff @(posedge shiftUp)
begin
	if(int'(counter) > 31)
		counter = 1'b0;
	else
		counter=counter+1'b1;
end
assign stripArrows=strip[counter];


endmodule