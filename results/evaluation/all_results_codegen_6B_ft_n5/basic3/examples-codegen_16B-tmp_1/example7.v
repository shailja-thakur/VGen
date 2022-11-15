// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in) begin
	case (in) 
	3'b000: pos=2'b10;	// LSB priority - use bit 0
	3'b001: pos=2'b11;	// 1st priority - use bit 1
	3'b010: pos=2'b00;	// 2nd priority - use bit 2
	3'b011: pos=2'b01;	// 3rd priority - use bit 3
	3'b100: pos=2'b01;	// 4th priority - use bit 4
	3'b101: pos=2'b10;	// 5th priority - use bit 5
	default: pos=2'b00; // 6th priority - use bit 6
	endcase
end
endmodule
