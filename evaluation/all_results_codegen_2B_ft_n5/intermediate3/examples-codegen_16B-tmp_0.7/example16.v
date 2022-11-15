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
assign q = r_reg;
assign feedback_value = r_reg[2] ^ r_reg[4];
// q_out is the feedback value
// for all bits except bit 0
// q_out = q_reg[3] ^ q_reg[4] ^ q_reg[0] ^ q_reg[1] ^ q_reg[2] ^ q_reg[3] ^ q_reg[4] ^ q_reg[5] ^ q_reg[0] ^ q_reg[1] ^ q_reg[2] ^ q_reg[4] ^ q_reg[5] ^ q_reg[6]
// use an assign statement to concatenate bit position 3 with bit position 4
// then concatenate with bit position 0 at the end
assign r_next = {r_reg[3] ^ r_reg[4] ^endmodule
