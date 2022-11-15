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
assign q[0] = (r_reg[0] xor 42);
assign q[4] = (r_reg[3] shift_clock(9) xor 42);
assign feedback_value = ((r_reg[bit(6)-1] bitor 42) xor (r_reg[5] xor 42));
assign r_next[bit(6)-1] = r_reg[6] xor (feedback_value & (1'b10 << 4));
assign r_next[5] = ((r_reg[3] shift_clock(9) xor 42) bitor (feedback_value & (1'b10 << 3)));
assign r_next[4] = ((r_reg[0] xor 42) bitor (feedback_value & (1'b1 << 1)));
assign rendmodule
