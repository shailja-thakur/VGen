// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(*)
begin
	case(in)
	3'b000: pos=2'b00; // If all the input bits are low, output is low
	3'b001: pos=2'b11; // If all the input bits are high, output is high
	3'b010: pos=2'b10; // If none of the input bits are high, then output is middle value
	3'b011: pos=2'b01; // If only one of the input bits is high, then output is middle value
	default: pos=2'b00;
	endcase
end 
endmodule
