// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The output q is clocked out on the positive edge of the clock.

always @(posedge clk)
  if (reset)
    q <= 0;
  else if (slowena)
    q <= q + 1;
end

module count_fast(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The output q is clocked out on the positive edge of the clock.

always @(posedge clk)
  if (reset)
    q <= 0;
  else if (slowena)
    q <= q + 1;
end

module countendmodule
