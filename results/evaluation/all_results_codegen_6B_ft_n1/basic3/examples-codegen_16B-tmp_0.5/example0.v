// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in or sel )
begin
	if ( sel )
	begin
	case( in )
	3'b000: pos = 2'b10;	// When in=000, assign b=100
	3'b001: pos = 2'b01;	// When in=001, assign b=010
	3'b010: pos = 2'b01;	// When in=010, assign b=010
	3'b011: pos = 2'b00;	// When in=011, assign b=000
	3'b100: pos = 2'b00;	// When in=100, assign b=000
	3'b101: pos = 2'b10;	// When in=101, assign b=100
	3'b110: pos = 2'b10;	// When in=110, assign b=end
end
endmodule
