// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or sel)
begin
	case (sel)
	1'b0: pos=2'h0;
	1'b1: pos=in; 	// Otherwise, use lsb of ins as pos
	1'bx: pos=2'hx; // When ins= 0
	endcase
end
endmodule
