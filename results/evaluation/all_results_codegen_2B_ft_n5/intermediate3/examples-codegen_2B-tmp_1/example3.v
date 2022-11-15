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
assign r_next = (reset) ? {1'b0, q[4:0]} : q;
assign feedback_value = r_reg[3] ^ r_reg[4];
// from	friends
// module lfsr_tb;
// reg clk;
// reg reset;
// reg flase;
// reg [5:0] reset_reg;
// reg [5:0] exercise_reg;
// initial begin
// end
// assign q ={feedback_value, r_reg[5], r_reg[4]};
// assign value = {r_reg[4]^r_reg[3],r_reg[2]^r_reg[3],r_reg[1]^r_reg[2],r_reg[0]^r_reg[1]^r_reg[2],r_regendmodule
