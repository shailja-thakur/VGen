// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in or sel ) 
	begin
	if ( in < 2 ) // 1-3 
	 	pos = 0;
	 else if ( in < 5 ) // 4-6
	 	pos = 1;
	 else // >=7
	 	pos = 2;
	end
endmodule
