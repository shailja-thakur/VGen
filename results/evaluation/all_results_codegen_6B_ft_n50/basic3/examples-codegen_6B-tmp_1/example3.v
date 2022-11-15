// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( *) begin 
	casex(in)
	3'b1xxx: pos=2'd0;
	3'b01xx: pos=2'd1;
	3'b001x: pos=2'd2;
	3'b0001: pos=2'd3;
	endcase
end
endmodule
