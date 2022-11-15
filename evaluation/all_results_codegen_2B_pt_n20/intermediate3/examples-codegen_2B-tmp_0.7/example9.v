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
initial begin
    clk <= 1;
    reset <= 1;
    r_reg <= (1 << 4) | (1 << 2) | (1 << 0) | (1 << 3);
    r_next <= r_reg;
    feedback_value <= r_reg & clk;
    q <= r_next;
end
);

// This file implements a simple LFSR
// which generates a sequence of bits of length n
// and resets to zero after each call to next_bit
core qa_lfsr_core
(
    input clk,
    input reset,
    output [n:0] result
);

wire [n:0] next_bit;
reg [n:0] r_reg;
wire [n:0] r_next;
wire feedback_value;
// on reset set the value of r_regendmodule
