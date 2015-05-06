module clearFlag(
input logic spritehit_in1,spritehit_in2, 
input [3:0] spriteID0,
input arrowClk,
output [3:0] spriteID0_out,
output logic spritehit_out1, spritehit_out2
);

always_comb
begin
    if(arrowClk)
        spritehit_out1 = 0;
        spritehit_out2 = 0;
        spriteID0_out = 4'hf;
    else
        spritehit_out1 = spritehit_in1;
        spritehit_out2 = spritehit_in2;
        spriteID0_out = spriteID0;
end

endmodule