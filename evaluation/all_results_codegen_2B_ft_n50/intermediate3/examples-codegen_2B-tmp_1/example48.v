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
// assign feedback_value to the input q[4] of the AND gate
and(q[0], !q[4], r_reg[1], q[4], feedback_value);
and(q[1], q[4], !q[2], r_reg[2]);
and(q[2], !q[4], r_reg[0]);
and(q[3], q[4], !q[0], r_reg[3]);
and(q[4], !q[4], r_reg[3]);
or(q[5], q[4], q[2]);
and(q[6], q[5], q[2]);
endmodule
