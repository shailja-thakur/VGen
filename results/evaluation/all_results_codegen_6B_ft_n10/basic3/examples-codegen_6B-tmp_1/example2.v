// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos) 
case( pos ) // The case is a string
	"b": i1 <= in[0];
	"c": i2 <= in[1];
	"d": i3 <= in[2];
	default: ;
endcase 
begin // The begin is just a plain ole begin.

// Define the type of each mux.
	assign out = pos[0] ? i1 : pos[1] ? i2 : pos[2] ? i3 : 0;
	// It seems to work without the need of a clock here.
	// It should be obvious if it don't. 
end
endmodule
