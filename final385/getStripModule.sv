module getStripModule(input shiftUp, output [3:0] stripArrows);

logic [9:0] counter;
parameter [0:20][3:0]strip={
4'b0000,4'b0001,4'b011, 4'b1100, 4'b1000, 4'b0110, 4'b1000, 4'b0100, 4'b1010, 4'b0010, 
4'b1000,4'b0100,4'b1000,4'b0100, 4'b1000, 4'b1100, 4'b1000, 4'b1100, 4'b1001, 4'b1100
};
always_ff @(posedge shiftUp)
begin
	if(int'(counter) > 19)
		counter = 1'b0;
	else
		counter=counter+1'b1;
end
assign stripArrows=strip[counter];


endmodule