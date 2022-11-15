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
always @(*) begin
    if (reset == 1) begin
        r_reg = 1;
    end else begin
        r_next <= (r_reg[5:0] & feedback_value);
        r_reg <= r_next;
    end
end
library ieee;
signal clk1;
signal clk2;
end

implementation impl;
end

module tb() impl is
	rr_mult_conv_vcg187tbvl32k discount_cast_descrambling_ff_ftm
	(
***
***	module timing(\n
***				clk1, clk2, \n
***				reset, \n
***				rs_pres, rs_npres, rst_npres, rs_post, rs_npost, \n
***				rs_dvalendmodule
