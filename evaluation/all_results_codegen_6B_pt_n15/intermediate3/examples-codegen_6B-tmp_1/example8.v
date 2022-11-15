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
always ( 
        r_reg[0] < pattern[0] ||
        r_reg[4] < pattern[1] ||
        r_reg[3] < pattern[2] ||
        r_reg[2] < pattern[3] ||
        r_reg[1] < pattern[4] ||
        r_reg[0] > sync_pattern[4] ||
        r_reg[4] > sync_pattern[3] ||
        r_reg[3] > sync_pattern[2] ||
        r_reg[2] > sync_pattern[1] ||
        r_reg[1] > sync_pattern[0] ||
        compare_r_reg( pattern, r_reg) ||
        (reset > '0' && r_reg[4] == '0') ||
        (clk == '1' && rendmodule
