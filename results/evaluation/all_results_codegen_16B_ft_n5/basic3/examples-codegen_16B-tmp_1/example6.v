// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
	begin
	case(in)
	// Using a 3x1 mux to implement the priority encoder in a readable manner
	// Would usually use a case statement for this sort of use and ignore the 
	// flipflop it generates, but what would be created in the flipflop 
	// is actually an AND and an OR, handled in infix logic
	// Priority flags assigned
	 4'b0000: begin pos = 2'b00; end	// Highest priority goes to 0
	 4'b0001: begin pos = 2'b01; end	// Higher than 0
	 4'b0010: begin pos = 2'b10; end	// Higher than 0 and 1
	 4'b0011: begin pos = 2'b11; end	// Higher than all
	// Non-priority flags go to output 0
	 default: begin pos =end
end
endmodule
