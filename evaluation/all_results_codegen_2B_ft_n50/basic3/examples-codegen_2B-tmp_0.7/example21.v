// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in)
if(in[0])
begin
pos = 3'b000;
end
else if(in[1])
begin
pos = 3'b001;
end
else if(in[2])
begin
pos = 3'b010;
end
else
begin
pos = 3'b111;
end
endmodule
