// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
if(in == 3'b001)
	pos = 2'd0;
else if(in == 3'b010)
	pos = 2'd1;
else if(in == 3'b100)
	pos = 2'd2;
else
	pos = 2'd3;
endmodule
