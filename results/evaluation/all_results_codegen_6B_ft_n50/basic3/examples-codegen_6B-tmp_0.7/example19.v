// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos) //{
 	case(pos) //{
 	//3'd0,3'd1,3'd2,3'd3,3'd4,3'd5,3'd6,3'd7
	2'b00: //{
	if(in[0]) 
	begin
	pos=2'd0;
	//pos=2'd1;
	end
	else if(in[1]) 
	begin
	pos=2'd1;
	end
	else if(in[2]) 
	begin
	pos=2'd2;
	end
	end 
	//3'd0,3'd1,3'd2,3'd3,3'd4,3'd5,3'd6,3'd7
	2'b01: //{
	if(in[0]) 
	endmodule
