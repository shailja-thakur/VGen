// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ *
begin
	case( in )
	 	3'h0: pos = 2'h1; 	 // Enable bits [0], [1]
	 	3'h1: pos = 2'h2;
	 	3'h2: pos = 2'h3;
	 	3'h3: pos = 2'h0;
	 	3'h4: pos = 2'h2;
	 	3'h5: pos = 2'h3;
	 	3'h6: pos = 2'h1;
	 	3'h7: pos = 2'h0;
	 	3'h8: pos = 2'h2;
	 	3'h9: pos = 2'h3;
	 	3'hA: pos = 2'h1;
	end
endmodule
