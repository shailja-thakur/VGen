// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// This implementation is designed to work with timing.

reg [3:0] q_next;

always @(posedge clk or posedge reset)
    if(reset) q_next <= 4'b0000;
    else q_next <= q_next + 1;

// When the ena is high, reset the output q to 0.
// This implementation is designed to work with timing.

always @(q)
    if(q == 4'b0000) q_next = 4'b0000;
    else q_next = q_next + 1;

// If the ena is low, reset the output q to 0.
// This implementation is designed to work with timing.

always @(q)
    if(q == 4'b0000) q_next = 4'b0000;
  endmodule
