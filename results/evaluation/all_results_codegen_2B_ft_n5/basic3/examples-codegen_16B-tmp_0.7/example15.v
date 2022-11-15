// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) 
begin
	casex(in)
	4'b0xxx: pos = 2'bxx;	// 6 least sig. bits are all 0.
	4'b1000: pos = 2'b00;	// 4 most sig. bits are all 1.
	4'b1001: pos = 2'b01;
	4'b1010: pos = 2'b10;
	4'b1011: pos = 2'b11;
	default: pos = 2'b00;
	endcase
end
endmodule
