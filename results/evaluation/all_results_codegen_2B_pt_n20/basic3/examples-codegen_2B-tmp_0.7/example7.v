// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ( in[1:0] << 5) | (in[2:0] << 4) | (in[3:0] << 3) | (in[4:0] << 2) | (in[5:0] << 1) | (in[6:0] << 0) ;
endmodule
