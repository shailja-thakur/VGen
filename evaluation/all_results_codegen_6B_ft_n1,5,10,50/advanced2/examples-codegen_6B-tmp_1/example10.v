// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
  if (reset) q <= 0;
  else if (slowena)
    if (q < 9) q <= q + 1;
    else q <= 0;
  
// If the clock edge is':
// on the other side of the clock, if:
// - the reset input is low and slowena is also low, then updates the q to reject the 1 not allowed:
// - the reset input is low and slowena is high, then updates the q to 0:
// - the reset input is high and slowena is low, then updates the q to a positive value:
// - the reset input is high and slowena is high, then updates the q to 9:
// Notice that the decade counter ignores the reset input entirely; it does not clear the output.
always @(negedge clk)
  if (slowena)
    ifendmodule
