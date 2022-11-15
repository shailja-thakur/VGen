// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( * in )
	 if ( in[2] == 1'b0 ) begin
	 	// 2 (high) -> 00
	 	// one or more zeros
	 	pos <= 2'b00;
	 end 
	 else if ( in[1] == 1'b1 ) begin
	 	// 3 (low) -> 05
	 	// one or more ones
	 	pos <= 2'b05;
	 end
	 else if ( in[1] == 1'b0 ) begin
	 	// 1 -> 01
	 	// one or more ones
	 	pos <= 2'b01;
	 end
endmodule
