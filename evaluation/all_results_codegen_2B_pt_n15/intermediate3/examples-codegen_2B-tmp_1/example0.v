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
assign r_reg = (reset ? 1 : r_next ^ (r_reg << 2) ^ (r_reg << 4)) & 0x07;
assign r_next = lfsr_output[~(clk ^ reset)][a];
regval pull_down_reg[] = pulldown( r_reg );
pulldown pullthelp( pull_down_reg[~clk]);
pulldown pullthelp( pull_down_reg[~(~clk)]);
pulldown pullthelp( pull_down_reg[~(~(~clk))]);
pulldown pullthelp( pull_down_reg[~(~(~(~clk)))]);

// set feedback if feedback_input is high
assign feedback(
    clk == ~feedback_input & r_reg == r_next
);

// construct a classicalendmodule
