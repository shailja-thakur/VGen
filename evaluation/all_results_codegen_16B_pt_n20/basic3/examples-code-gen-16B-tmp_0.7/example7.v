// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign sel=1'b1;
reg out;
reg [1:0] b;
always @(in[2:0]) 
	if (in[0] == 1'b1)
		b= 2'b00;
	else if (in[1] == 1'b1)
		b= 2'b01;
	else if (in[2] == 1'b1)
		b= 2'b10;
	else
		b= 2'b11;
always @(sel)
	if (sel==1'b1)
		out = b;
	else
		out = 2'bxx;
endmodule
