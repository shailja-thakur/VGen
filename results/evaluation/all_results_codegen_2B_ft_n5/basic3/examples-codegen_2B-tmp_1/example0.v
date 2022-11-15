// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in or pos )
if ( in[2] )

b=2; 
else if (in[1] )
b=3;
else if (in[0] )
b=0;

endmodule
