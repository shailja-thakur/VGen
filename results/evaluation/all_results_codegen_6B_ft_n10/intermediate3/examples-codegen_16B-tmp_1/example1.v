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
assign r_next = {q[0], q[1] ^ r_reg[3] ^ q[3] ^ q[4], q[2] ^ r_reg[4], q[2:3] ^ r_reg[3:2]};
// attempt 1 - assign feedback_value to q[4]..q[1] and keep feedback value as q_reg[2:4]
// assign d = (r_reg[4] ^ r_reg[2]) & q_reg[2] ^ r_reg[3] & r_reg[0];
// assign q_next = {r_reg[0], r_reg[1] ^ d};
// ...don't use q[2:1] and q[3]
reg [5:0] d;
reg [3:0] q_reg;
assign feedback_value = q[endmodule
