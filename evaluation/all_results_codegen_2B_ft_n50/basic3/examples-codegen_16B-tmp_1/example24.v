// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or ~in[2] or ~in[1])
begin
	if ( in[2] == 1'b1 && in[1] == 1'b1)
 	begin
 	pos = 2'b11;
 	end
	else if (in[2] == 1'b1 && in[1] == 1'b0)
 	begin
 	pos = 2'b10;
 	end
 	else if (in[2] == 1'b0 && in[1] == 1'b1)
 	begin
 	pos = 2'b01;
 	end
 	else
 	begin
 	pos = 2'b00;
 	end
end	
endmodule
