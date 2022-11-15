// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
if(in == 3'd0 || in == 3'd1 || in == 3'd2 || in == 3'd3 || in == 3'd4 || in == 3'd5 || in == 3'd6 || in == 3'd7)
	pos = 2'd1;	
else if(in == 3'd8 || in == 3'd9 || in == 3'd10 || in == 3'd11 || in == 3'd12 || in == 3'd13 || in == 3'd14 || in == 3'd15)
	pos = 2'd2;
else
	pos = 2'd0;	
end 
endmodule
