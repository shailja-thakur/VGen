// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always contains( 
  pos : in.sel : 1-input 	// Convert 1-bit 
, pos.sel : 1-temp_reg : 1-pos
.sel_p0 = 1'b0		// Carry to the next stage input
);
endmodule
