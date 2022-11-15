// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin
	if(sel) pos=2'b11;	// when sel=1, output b
	else pos=in;
end
endmodule
