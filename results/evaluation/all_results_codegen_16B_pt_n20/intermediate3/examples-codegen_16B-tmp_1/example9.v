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
q <= ~sgAdd(~r_reg[0],
		sgXor(sgXor(sgXor(r_reg[1], r_reg[2]), r_reg[3]), ~reset)
);

// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q

// assign b1toq to as if q was clkx
// return final rotation done by one clock cycle, adjust for actual plug
// acceptable range of final rotation of 0, 1, 2, 3, or 4
// return external concatenation of clkx0, clkx1, clkx2, clkxendmodule
