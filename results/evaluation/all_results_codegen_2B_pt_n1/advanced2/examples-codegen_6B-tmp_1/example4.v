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
  q <= (reset ? 0 : select(not slowena, q[3], q[2]) or q[1] or q[0]);

// On the negative edge of the clock:
// if clk is high, set reset to high.  
// Otherwise, set reset to low.
always @(negedge clk)
  if (clk)
    reset = high;
  else
    reset = low;

endmodule
