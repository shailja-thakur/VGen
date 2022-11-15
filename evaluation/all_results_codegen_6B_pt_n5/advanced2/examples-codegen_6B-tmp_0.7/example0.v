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
  if (reset)
    q <= 0;
  else if (slowena)
    if (q < 9)
      q <= q + 1;

// On the negative edge of the clock:
// if slowena is high, just decrement q.
// Otherwise, decrement q and reset the output if q is zero.
always @(negedge clk)
  if (slowena)
    q <= q - 1;
  else if (q == 0)
    q <= 0;

// Some other clock edge, but reset is still high
always @(posedge clk)
  if (slowena)
    q <= 0;
  else if (reset)
    q <= 0;

endmodule
