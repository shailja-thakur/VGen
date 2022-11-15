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
assign q = r_reg[4:0];
// instantiate a lfsr with 5-bit taps
lfsr lfsr_instance(
    .clk(clk),
    .reset(reset),
    .q(q)
);
// create a latch to control the value of r_reg
reg r_reg_latch;
// instantiate a latch with 5 bit input
reg [5:0] r_reg_next_latch;
latch reg_latch(
    .r_reg(r_reg_latch),
    .r_reg_next(r_reg_next_latch)
);
// instantiate a new input control
function new_input_control;
new_input_control(
    .reset(reset),
    .clk(clk)
);
// instantiate a new control port to controlendmodule
