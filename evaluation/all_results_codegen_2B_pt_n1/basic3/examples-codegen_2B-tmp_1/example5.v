// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// If only 1 of the 3 input bits is high, output is high.


// Code The Part for Priority Encoding
always @(*)

	begin
	
	// Initialze all pos with the default value 0.
	pos[1] = 0;
	pos[0] = 0;
	
	// If input is of size 3, left shift, otherwise right shift.
	pos = (in[2] & in[1] & in[0]) ?
	(~in) >> 1 :	// Right shift.
	(~in) >> 2 ;	// Left shift.
	
	end

endmodule
