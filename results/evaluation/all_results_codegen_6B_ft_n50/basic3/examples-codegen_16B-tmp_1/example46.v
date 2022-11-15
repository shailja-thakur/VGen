// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
if (in[0]) assign pos = 2'b00; 
else if (in[1]) assign pos = 2'b01; 
else if (in[2]) assign pos = 2'b10; 
else pos = 2'b11;
endmodule
