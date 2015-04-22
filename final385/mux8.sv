module mux8
(
	input [2:0] sel,
	input [7:0] i1,i2,i3,i4,i5,i6,i7,i8,
	output [7:0] f
)

always_comb
begin
	if(sel == 3'b000)
		f = i1;
	else if(sel == 3'b001)
		f = i2;
	else if(sel == 3'b010)
		f = i3;
	else if(sel == 3'b011)
		f = i4;
	else if(sel = 3'b100)
		f = i5;
	else if(sel = 3'b101)
		f = i6;
	else if(sel == 3'b110)
		f = i7;
	else
		f i i8;
end
