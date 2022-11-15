// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, sel=b
// If sel=b, take contents of pos
// Fill pos to 1+ when input is 2 or 3
always @(*) 
begin[prefix]0 pos = {sel[1], (sel[1] & in[2]) | (sel[0] & sel[1] & in[1]) | (sel[0] & in[1])};
endprefix
endmodule
