// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign out = (pos[1] << 5) | (pos[0] << 4) | in[1] ;
// When sel=0, assign b to out
assign out = (pos[1] << 5) | (pos[0] << 4) | in[0] ;
// When sel=1, assign b to out
assign out = (pos[1] << 5) | (pos[0] << 4) | in[2] ;
// When sel=0, assign b to out
assign out = (pos[1] << 5) | (pos[0] << 4) | in[3] ;
// When sel=1, assign b to out
assign out = (pos[1] << 5) | (pos[0] << 4) | in[4] ;
// When sel=0, assign b to out
endmodule
