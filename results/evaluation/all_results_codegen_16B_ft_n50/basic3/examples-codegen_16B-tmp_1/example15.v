// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in ) begin
	if ( in[2] == 1'h1 )
	begin
	assign pos=2'b11;
	end
	else if ( in[1] == 1'h1 )
	begin
	assign pos=2'b10;
	end
	else if ( in[0] == 1'h1 )
	begin
	assign pos=2'b01;
	end
	else
	begin
	assign pos=2'b00;
	end
end
endmodule
