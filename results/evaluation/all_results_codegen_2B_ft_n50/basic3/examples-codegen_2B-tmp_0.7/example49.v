// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
begin
case (pos)
	0 : b = in;
	1 : b = in;
	2 : b = in;
	3 : b = in;
	default : b = in;
endcase
end
endmodule
