// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@( in[2] or in[1] or in[0] )
case( in )
3'b001:
	pos[0] = in[0] ? 3'b001 : 3'b0 ; // 1
3'b010:
	pos[0] = in[0] ? 3'b011 : 3'b0 ; // 2
3'b100:
	pos[0] = in[0] ? 3'b010 : 3'b0 ; // 3
3'b011:
	pos[0] = in[0] ? 3'b100 : 3'b0 ; // 4
3'b101:
	pos[0] = in[0] ? 3'b011 : 3'b0 ; // 5
3'b110:
	pos[0] = in[0] ? 3'b010 : 3'b0endmodule
