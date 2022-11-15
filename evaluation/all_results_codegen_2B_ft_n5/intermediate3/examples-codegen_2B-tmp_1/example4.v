// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
// assign b_next to combinatorial output of flipflop r_next
// parameterise combinatorial assignments for other modules
// of Jonathan Isbell's lab 11 lab 4
generate
begin
	always @( posedge clk, posedge reset )
	begin
	if ( reset == 1 )
	begin
	r_reg <= 5'b00011;
	end
	else
	begin	
 	assign r_reg = { {( ( {6'h1C, feedback_value}) ^ ( {2'b111} >> 4 ) ) >> 1} , ( {feedback_value} & ( {6'h1C, feed_back_reg} >> 1 ) )};
	assign r_next = r_reg;
	end
	end
assign feedback_value = ( r_reg[1] ^ r_reg[2]end
endmodule
