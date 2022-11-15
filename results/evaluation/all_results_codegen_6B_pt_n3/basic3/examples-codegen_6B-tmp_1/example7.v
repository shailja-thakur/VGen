// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, and b!=0, output negative of b
always @(*)
begin
	pos = 0;
	if(in[2]==1'b1)
	 pos = 2;	 
	else if(in[1]==1'b1)
	 pos = 1;
	else 
	pos =0;
end
endmodule
