// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire [1:0] a, b;

assign a[0] = in[1];
assign a[1] = in[2];
assign b[0] = ~in[1];
assign b[1] = ~in[2];

always @(*) 
	begin 
	if(in[1:0]==2'b00) 
	pos=2'b00; 
	else if(in[1:0]==2'b01) 
	pos=2'b01; 
	else if(in[1:0]==2'b10) 
	pos=2'b10; 
	else if(in[1:0]==2'b11) 
	pos=2'b11; 
	else 
	pos=2'bx; 
	endendmodule
