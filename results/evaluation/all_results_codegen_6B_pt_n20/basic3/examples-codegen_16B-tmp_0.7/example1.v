// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
if(in==3'b111)
	begin
	pos=2'b11;
	end
else
	begin
	if(in[0]==1)
	pos=2'b01;
	if(in[1]==1)
	pos=2'b10;
	if(in[2]==1)
	pos=2'b11;
	end
endmodule
