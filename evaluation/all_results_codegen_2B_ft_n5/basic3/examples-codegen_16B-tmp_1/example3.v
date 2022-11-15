// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(in) begin // for all cases
	casex(in)
	3'b0xx: pos = 2'd2;	// - three or more 0's
	3'b100: pos = 2'd0;	// - four 1's
	3'b110: pos = 2'd1;	// - any 2 values
	3'b1000: pos = 2'd3; // - this is the only case
	endcase
end
//endmodule
