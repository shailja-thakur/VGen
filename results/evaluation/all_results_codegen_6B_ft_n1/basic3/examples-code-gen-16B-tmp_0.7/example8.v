// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(in)
begin
if (in[0]) 
pos[1] <= 0;
pos[0] <= 0;
else if (in[1])
pos[1] <= 0;
pos[0] <= 1;
else if (in[2]) 
pos[1] <= 1;
pos[0] <= 0;
else
pos[1] <= 0;
pos[0] <= 0;
end
endmodule
