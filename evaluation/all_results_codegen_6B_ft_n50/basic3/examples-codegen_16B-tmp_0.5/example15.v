// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or negedge pos[1])
if(!pos[1])	//When pos is 0, retain previous value
	pos[1] <= 1'b0;
else
	pos[1] <= in[2];
// When sel=0, retain previous value
always @(in or negedge pos[0])
if(!pos[0])
	pos[0] <= 1'b1;
else
	pos[0] <= in[1];
endmodule
