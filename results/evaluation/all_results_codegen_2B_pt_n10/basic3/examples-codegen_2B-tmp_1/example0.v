// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [3:0] out; 
assign out = ( pos[0] | ( in[0] << 1 ))  & 0b111^ 0b11^ ( rmatrix[pos[1]] ) ? 1 : 0; 
);

endmodule
