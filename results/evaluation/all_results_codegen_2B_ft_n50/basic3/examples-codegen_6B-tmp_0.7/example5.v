// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( * ) 
begin 
	case( in ) 
	3'b000: pos = 2'b00;	// I am sel 0 
	3'b001: pos = 2'b01;	// I am sel 1 
	3'b010: pos = 2'b10;	// I am sel 2 
	3'b011: pos = 2'b11;	// I am sel 3 
	endcase 
end 
endmodule
