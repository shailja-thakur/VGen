// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( * ) begin
	casex( in ) // casex is case-insensitive
	// all inputs should assign to pos = 0
	4'b0xxx: pos = 2'b00;
	// all inputs should assign to pos = 1
	4'b1000: pos = 2'b01;
	// all inputs should assign to pos = 2
	4'b1001: pos = 2'b10;
	// no inputs should assign to pos = 0
	// no inputs should assign to pos = 1
	// no inputs should assign to pos = 2
	default: pos = 2'b00;
	endcase
end
endmodule
