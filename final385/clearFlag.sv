module clearFlag(
input logic spritehit_in1,spritehit_in2, 
input arrowClk,
output logic spritehit_out1, spritehit_out2
);

always_comb
begin
    if(arrowClk)
        spritehit_out1 = 0;
        spritehit_out2 = 0;
    else
        spritehit_out1 = spritehit_in1;
        spritehit_out2 = spritehit_in2;
end

endmodule