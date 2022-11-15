// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ( bool(in[2]) | bool(in[1]) | bool(in[0]) );
// When sel=0, assign b to out
assign pos = ( bool(in[1]) | bool(in[0]) | bool(in[2]) );

// This is a 3-bit priority encoder. If none of the input bits are low, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] neg ); 
// When sel=1, assign b to out
assign neg = ( bool(in[0]) | bool(in[1]) | bool(in[2]) );
// When sel=0, assign b to out
assign neg = ( bool(in[2]) | bool(in[1]) | bool(in[0]) );

//endmodule
