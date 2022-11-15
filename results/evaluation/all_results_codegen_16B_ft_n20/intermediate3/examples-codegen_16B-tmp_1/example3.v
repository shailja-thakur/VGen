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
assign q = (reset) ? 5'h1 : r_next;
mux25 lfsr_1(.out(r_reg[0]), .x(~r_reg[4]), .y(r_reg[1]), .z(1'b0), .reset(reset), .enable(reset));
mux25 lfsr_2(.out(r_reg[1]), .x(~r_reg[3]), .y(r_reg[2]), .z(1'b0), .reset(reset), .enable(r_reg[0]));
mux25 lfsr_3(.out(r_reg[2]), .x(~r_reg[4]), .y(r_reg[3]), .z(feedback_value), .reset(reset), .enable(r_reg[0]));
half_adder hendmodule
