// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// This is a 4 bit comparator, then in is zero.
always @ (in )
begin
	case({in})
		3'b010: pos <= 2'b10;
		3'b100: pos <= 2'b10;
		default: pos <= 2'b00;
	endcase
end
//assign b to out
assign out = pos[3] ? (in[1] ? in :
										in[0]) : 1'b0;
endmodule
