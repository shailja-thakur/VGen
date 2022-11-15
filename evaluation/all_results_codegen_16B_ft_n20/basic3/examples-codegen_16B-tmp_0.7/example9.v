// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// Else assign 0 to output
always @ ( in or sel )
begin
	if ( sel == 1'b1 )
	begin
	out[0] = in[1];
	out[1] = in[2];
	out[2] = in[2] & in[1];
	end
	else
	begin 
	out[0]= 1'b0;
	out[1]= 1'b0;
	out[2]= 1'b0;
	end
end 
// This is the decoder. If none of the input bits are high, output is zero. 
// Otherwise the output is the input value.
endmodule
