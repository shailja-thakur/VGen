// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin
// If sel=0, output is 0
if(sel)
begin
// If all the input bits are the same, output is that input.
if(in[0]&&in[1]&&in[2])
pos = in[2:0];
// If any of the input bits are high, output is 2.
else
pos = 2;
end
// If sel=0, output is 0
else
pos = 0;
end
endmodule
