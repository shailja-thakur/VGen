// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
begin
if(pos == 3'b111)
out=2'b11;
else if((pos[1]&pos[0]) == 1)
out=1;
else
out=0;
end
endmodule
