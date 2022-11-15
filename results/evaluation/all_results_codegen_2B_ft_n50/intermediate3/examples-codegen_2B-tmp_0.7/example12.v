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
assign r_next = (reset) ? {5'b01101, r_reg} : {feedback_value, r_reg};
// the feedback value is the xor of the positions 2 and 4 of r_reg
// the position 3 is the bit which is shifted out right
// the position 5 is the bit which is shifted out left
// all the positions of r_reg are multiplied by xor with a 5 bit adder
// the position 3 is the feedback value and the bit 0 of r_reg is the feedback
// bit 5 is the feedback bit 1
assign feedback_value = {1'b0, r_reg[1]};
// the feedback value is the bit 0 of r_reg
// the bit 5 is the feedback bit 1
// all the positions of r_reg are multiplied with the feedback
// the position 3 is the feedback value
// the position 5 is the bitendmodule
