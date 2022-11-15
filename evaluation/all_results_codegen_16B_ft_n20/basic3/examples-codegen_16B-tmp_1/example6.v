// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
	case(in) // go through the cases
	3'd1:	pos = 2'b01;
	3'd2:	pos = 2'b10;
	3'd3:	pos = 2'b11;
	default: pos = 2'b00;
	endcase

endmodule
