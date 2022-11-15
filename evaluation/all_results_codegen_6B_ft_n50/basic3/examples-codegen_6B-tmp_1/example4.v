// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in ) 
begin 
//or sel=1, pos=2'b11 if any of the input is 1
if(or(in[2],in[1],in[0]))
pos=2'b11;
//else pos=2'b00 if none of the input is 1
else 
pos=2'b0;
end
endmodule
