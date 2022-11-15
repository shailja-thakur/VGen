// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
begin
	case( pos )
	2'd0: pos = 2'd1 ; // Receive input in[0]
	2'd1: pos = 2'd0 ; // Receive input in[1]
	// add more entries for higher priority numbers
	2'd2: pos = 2'd4 ;
	2'd3: pos = 2'd8 ;
	// add more entries for higher priority numbers
	default: pos = 2'd0 ; // default case
	endcase 
end 
endmodule
