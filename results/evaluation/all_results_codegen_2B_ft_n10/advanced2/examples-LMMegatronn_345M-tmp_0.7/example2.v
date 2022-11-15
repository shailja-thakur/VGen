// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
reg  [9:0] q_a,q_b;

// Instantiate the module to q module
q_a myq_b(
    .q(q_a), .ck(slowena), .reset(reset), .clk(clk), .enb(1'b1),
    .q(q_b) );

// Instantiate the module to q module
q_b myq_c(
    .q(q_c), .ck(slowena), .reset(reset), .clk(clk), .enb(1'b1),
    .q(q_c) );

// Instantiate the module to q module
q_d myq_d(
    .q(q_d), .ck(slowena), .reset(reset), .clk(clkendmodule
