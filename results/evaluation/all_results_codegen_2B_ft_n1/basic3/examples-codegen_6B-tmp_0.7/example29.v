// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// Priority encoder -> b=01, a=10
always @(*)
begin 
	case(in)
	3'b110: pos=2'b01;
	3'b110: pos=2'b10;
	default: pos=2'b00;
	endcase
end
endmodule
