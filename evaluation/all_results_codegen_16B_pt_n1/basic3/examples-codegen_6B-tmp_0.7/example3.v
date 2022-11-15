// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) 
	case(sel) // selectors for the case
	3'b000: pos=0; // position 0
	3'b001: pos=1; // position 1
	3'b010: pos=2; // position 2
	3'b011: pos=0; // position 0
	3'b100: pos=1; // position 1
	3'b101: pos=2; // position 2
	3'b110: pos=0; // position 0
	3'b111: pos=2; // position 2
	endcase
endmodule
