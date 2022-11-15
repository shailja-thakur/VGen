// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always_comb
begin
	casex (in)
	4'b1110:
	casex (1'b1)
	1'b1:
	begin
	
	casex (in[2])
	1'b1:
	n_en=1'b1;
	endcase
	casex (in[1])
	1'b1:
	n_en=1'b1;
	endcase
	endcase
	casex (in[0])
	1'b1:
	casex (in[2])
	1'b1:
	n_en = 1'b0;
	endcase
	casex (in[1])
	1'b1:
	casex (in[0])
	1'b1:
	n_en = 1'b0;
endendmodule
