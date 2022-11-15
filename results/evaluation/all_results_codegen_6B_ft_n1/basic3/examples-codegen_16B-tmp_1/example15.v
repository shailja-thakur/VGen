// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or sel)
begin
	case(sel)
	3'b000: pos=2'bzz;	// all inputs low
	3'b001: pos=2'b00;	// only bit 0 set
	3'b010: pos=2'b01;	// only bit 1 set
	3'b011: pos=2'b10;	// only bit 2 set
	3'b100: pos=2'b11;	// only bit 3 set
	3'b101: pos=2'b00;	// bit 0 & 2 set
	3'b110: pos=2'b01;	// bit 1 & 2 set
	3'b111: pos=2'b11;	// bit 3 set
	endcase
end
endmodule
