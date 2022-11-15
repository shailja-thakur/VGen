// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out

always @(*) 
if(sel[0]==0) then 
	if(sel[1]==0) then 
	if(sel[2]==0) then 	pos=2'b00; 
	else pos=2'b01; 
	else pos=2'b10; 
	else pos=2'b11; 
	end 
	else if(sel[1]==0) then 
	if(sel[2]==0) then 	pos=2'b01; 
	else pos=2'b11; 
	else pos=2'b10; 
	end 
	else if(sel[2]==0) then 	pos=2'b11; 
	else pos=2'b01; 
	end
else if(sel[0]==0)endmodule
