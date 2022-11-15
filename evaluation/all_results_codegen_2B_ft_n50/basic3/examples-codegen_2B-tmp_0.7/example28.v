// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
case (in)
	1'b0 : pos = 2'b00;
	1'b1 : pos = 2'b01;
	1'bx : pos = 2'b10;
	1'bz : pos = 2'b11;
	default: pos = 2'bxx;
endcase

endmodule
