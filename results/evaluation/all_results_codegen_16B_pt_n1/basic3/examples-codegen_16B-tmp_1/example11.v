// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
	casex(in)
	3'd0	:	pos = 2'd0;	// in[0]	= 0
	3'd1	:	pos = 2'd1;	// in[1]	= 1
	3'd2	:	pos = 2'd2;	// in[2]	= 0
	3'd3	:	pos = 2'd3;	// in[3]	= 1
	default: pos = 2'd0;
	endcase
end
endmodule
