// This is a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
input clk,
input reset,
output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;