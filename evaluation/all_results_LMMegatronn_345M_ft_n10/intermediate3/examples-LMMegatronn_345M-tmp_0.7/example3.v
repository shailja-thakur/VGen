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
ccrc_crc_crc_crc_crc_crc_crc_crc_crc_c_crc_c_crc_c_c_crc_crc_crc_c_c_crc_c7_c_c_c_c_crc_cpl_credits_clc_c_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_credits_endmodule
