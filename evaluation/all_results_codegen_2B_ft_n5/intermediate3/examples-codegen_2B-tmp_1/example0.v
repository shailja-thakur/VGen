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
// concatenate feedback_value with q's most significant bits, using xor
// assign r_next to q xor q
assign r_next = r_reg ^ {1'b0,r_reg[4:0]^q};
//feedback value
assign feedback_value = r_reg[1];
// if reset is asserted assign to the output q and if not reset r_reg
assign q = (feedback_value);
always @(posedge clk)
 begin : feedback_stage
	// propagate every 2nd stage's result to stage 0
	// a feedback output of 1 results in a reset output in each
	// stage which essentially gives a "no change" output
	// assigning to q with the bitwise xor results in something like
	// padding on the left like a "no-change" type of output
	r_reg[4:end
endmodule
