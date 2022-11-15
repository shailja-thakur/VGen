// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
priority_encoder( const2410.I_sel_one, const2410.I_bit_b )
	LITERAL in, pos
	IF(const2410.I_bit_b) THEN
		c_fput( b, 1'b0 )
		c_fput( 31-4*(1'b1), in.G0 )
		c_fput( 31-4*(in.I), in.I )	
		c_fput( 32-4*(1'b1), in.G1 )
		c_fput( 32-4*(in.I), in.I )
	ELSE
		c_fput( 31-4*(1'b1), in.G0 )
		c_fput( 31-4*(in.I), in.I )	
    ENDIF 
endmodule
