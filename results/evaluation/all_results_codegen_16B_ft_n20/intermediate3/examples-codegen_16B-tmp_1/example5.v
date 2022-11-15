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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign q[0] = r_reg[0];
assign r_next[0] = (r_reg[1] & ~r_reg[4]) | (r_reg[2] & r_reg[3]) | (r_reg[2] & ~r_reg[4]) | (r_reg[1] & r_reg[4]) | (r_reg[4] & ~r_reg[3]);
assign q[1] = r_reg[1];
register_f_ff r2( clk, reset, r_reg[1]& r_reg[3], r_next[1], r_reg[1]);
assign q[3] = r_reg[3];
assign q[2] = r_next[2];
assign q[4] = r_next[4];
//assign feedbackendmodule
