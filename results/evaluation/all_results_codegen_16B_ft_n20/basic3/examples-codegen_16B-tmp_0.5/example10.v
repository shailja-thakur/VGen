// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin
	if(sel) begin
	case(in)
	// If none of the input bits are high, output is 0
	3'b000: pos = 2'b00;
	3'b001: pos = 2'b01;
	3'b010: pos = 2'b10;
	3'b011: pos = 2'b11;
	// If one of the input bits is high, assign the corresponding output bit to 1
	default: pos = 2'b00;
	endcase
	end
	// If sel is not high, output is 0
	else pos = 2'b00;
end
endmodule
