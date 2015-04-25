module mux16
(
	input logic [3:0] sel,
	input logic [7:0] i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,
	output logic [7:0] f
);

always_comb
begin
	if(sel == 4'b0000)
		f = i1;
	else if(sel == 4'b0001)
		f = i2;
	else if(sel == 4'b0010)
		f = i3;
	else if(sel == 4'b0011)
		f = i4;
	else if(sel == 4'b0100)
		f = i5;
	else if(sel == 4'b0101)
		f = i6;
	else if(sel == 4'b0110)
		f = i7;
	else if (sel == 4'b0111)
		f = i8;
	else if(sel == 4'b1000)
		f = i9;
	else if(sel == 4'b1001)
		f = i10;
	else if(sel == 4'b1010)
		f = i11;
	else if(sel == 4'b1011)
		f = i12;
	else if(sel == 4'b1100)
		f = i13;
	else if(sel == 4'b1101)
		f = i14;
	else if (sel == 4'b1110)
		f = i15;
	else
		f=i16;
end

endmodule
