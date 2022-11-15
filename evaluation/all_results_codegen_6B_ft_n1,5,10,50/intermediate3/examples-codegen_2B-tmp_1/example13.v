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
design lfsr_design(
    input clk,
    input reset,
    output q 
); 
reg r_reg;
wire r_next;
wire feedback_value;

// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign the next most significant bit of r_reg to r_next
// assign the input zoom_factor bits of r_reg (1-4) to r_next
// assign the output q to r_reg
module zoom_factor(
    input clk,
    input reset,
    reg [4:0] r_reg,
    wire r_next,
    reg zoom_factor_value,
    input input_value_zoom
);

// on reset set theendmodule
