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
always @ (
    clk,
    reset
)
begin
    if (reset) 
    begin
        r_reg <= 0;
        r_next <= 0;
        feedback_value <= 0;
    end
    else begin
        r_reg <= r_next[4:0] ^ (r_next[4:0] << 1) ^ (r_next[3:1] << 2) ^ (r_next[2:0] << 3);
        r_next <= r_reg[4:0];
        feedback_value <= (r_reg[3:0] & 0b0011_1111) << 4;
    end
end

// input and output signals
signal clk_i;
signal reset_i;
signal q_i;

// module for tracing signals
// module aclk_inendmodule
