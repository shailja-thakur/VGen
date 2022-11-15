// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// when sel=0, assign a to out
assign pos = ( in[0] & pos_mask ) | ( in[1] >> 1 & pos_mask );
assign b= 1;
assign a= 0;

endmodule
