// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
	case(in)	// Select case
	pos2: pos1: pos0 = 2'b00; 	// '=' is a non-blocking assignment
	3'b000: pos0 = 2'b00; 
	3'b001: pos0 = 2'b01; 
	3'b010: pos0 = 2'b10; 
	3'b011: pos0 = 2'b11; 
	default: pos0 = 2'b00; 	// Default case must be reachable
endcase 
//assign b=sel?out:pos0; 	//Blocking or non-blocking assignment
endmodule
