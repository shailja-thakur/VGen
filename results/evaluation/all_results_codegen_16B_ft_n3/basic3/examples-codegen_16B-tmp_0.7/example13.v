// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in or sel )
begin
case ( sel )
3'b000: pos = 2'b11;	// all bits off
3'b001: pos = 2'b00;	// only bit 0 on
3'b010: pos = 2'b01;	// only bit 1 on
3'b011: pos = 2'b10;	// only bit 2 on
default: pos = 2'b00;	// all bits off 
endcase
end
endmodule
