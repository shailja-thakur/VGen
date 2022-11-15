// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin 
	casex(in) // sel=1 means b
	3'b101: pos=2'd0;
	3'b110: pos=2'd1;
	3'b100: pos=2'd2;
	// don't care for unexpected input
	default: pos=2'd3;
	endcase
end
endmodule
