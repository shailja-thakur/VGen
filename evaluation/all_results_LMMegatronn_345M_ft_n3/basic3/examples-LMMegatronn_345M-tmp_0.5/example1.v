// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@( in )
case ({in[2],in})
3'b010:
	pos[0] = 1'b0;
3'b001:
	pos[0] = 1'b1;
3'b010:
	pos[0] = 1'b0;
default:
	pos = 2'b0;
endcase
endmodule
