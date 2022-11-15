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
assign q = (reset || r_reg == 3) ? r_reg : r_reg_next;
assign feedback_value = {1'b0, q[4] & q[2] & ~q[0] & ~q[1]};
assign r_reg_next = (reset) ? (initialvalue) ? 5'b0 : {q[3], key, q[3]};
// keycorl.v
module key_corl (
	.input [12:0] key,
	.output [28:0] parity_mul,
	.output parity_init
);
	wire [1:0] w_hi,w_lo;
assign w_hi = key[11:9];
assign w_lo = key[8:6];
assign parity_init = ~key[12];
assign parityendmodule
