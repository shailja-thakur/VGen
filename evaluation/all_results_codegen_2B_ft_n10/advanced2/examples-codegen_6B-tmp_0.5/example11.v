// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge slowena)
  if (reset)
    q <= 0;
  else if (slowena)
    if (q != 9 and q < 10)
      q <= q + 1;

// On the negative edge of the clock:
// if slowena is high, reset the output q to 9.
// Otherwise, only decrement the output q if the ena input is low and q is not 0.

always @(negedge slowena or negedge clk)
  if (slowena)
    q <= 9;
  else if (q != 0 and q > -1)
    q <= q - 1;

endmodule
