// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin 
	if(in[1]) pos = 2'd1; 
	else if(in[2]) pos = 2'd2; 
	else if(in[3]) pos = 2'd3; 
	else if(in[4]) pos = 2'd4; 
	else if(in[5]) pos = 2'd5; 
	else if(in[6]) pos = 2'd6; 
	else if(in[7]) pos = 2'd7; 
	else if(in[0]) pos = 2'd0; 
	else pos = 2'd2; //Default pos is 2'd2 
end 
endmodule
