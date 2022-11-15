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
  q <= (reset ? 0 : reg[3] ? reg[2] ? reg[1] ? 1 : 2 : 3);

// On the negative edge of the clock:
// If slowena is high, then the output q should be incremented by one.
// Otherwise, if q is not the maximum, increment q by 1.
always @(negedge slowena or negedge clk)
  if (slowena) q++;
  else if (reg[3] && q < 9) q++;
endmodule
