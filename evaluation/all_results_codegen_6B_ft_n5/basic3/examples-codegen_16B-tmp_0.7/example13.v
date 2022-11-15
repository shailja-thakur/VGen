// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
begin
if (in == 3'b111)
 pos = 2'b11;	// When all inputs are 1, output is 3, i.e. 111
else
 pos = 2'b00;	// Otherwise, output is 0
end
endmodule
