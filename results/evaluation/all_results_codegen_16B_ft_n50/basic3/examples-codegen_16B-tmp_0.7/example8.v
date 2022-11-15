// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel) begin
	casex({sel,in})
	4'b1xxx: pos=2'b00;	// 00 or 11 - out is zero
	4'b01xx: pos=2'b01;	// 010 or 011 - out is A
	4'b001x: pos=2'b10;	// 010 or 011 - out is B
	4'b0001: pos=2'b11;	// 000 or 111 - out is C
	default: pos=2'b00;
	endcase
end
endmodule
