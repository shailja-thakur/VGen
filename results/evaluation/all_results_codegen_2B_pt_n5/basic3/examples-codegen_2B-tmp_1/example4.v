// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[0] = ~in[0] & in[1]; 
// PBlast's implementation only has a single, three-entry priority register 
const reg enum upper : bits<3> = {val=0b1101}; // {start=0b111100000, stop=0b111111111} 
const intr_reg reg datastore<enum lower:bits<5> = {start=0b11011000}, fmt=bits<2>//{start=0b110111110}} < no sys
,       ireg esr<0>; // {sys=0b1011, clk=0b1010, data=0b3310} 
assign pos[1] = ~datastore<enum lower>(in, &fmt).pos; 
assign pos[2] = ~esr(in, &datastore<endmodule
