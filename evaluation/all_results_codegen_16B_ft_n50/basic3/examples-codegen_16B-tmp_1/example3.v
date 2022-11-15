// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or negedge pos)
if (in > 2'b0 && ~pos) //If none inputs are high, position = 0
	pos = 2'b00;
else if (in[0] > 0) //CLAIM WHICH S/B SELECTED // CASE 0:
	pos = 2'b00; 
else if (in[1] > 0) //CASE 1
	pos = 2'b01; 
else if (in[2] > 0) //CASE 2
	pos = 2'b10;
endmodule
