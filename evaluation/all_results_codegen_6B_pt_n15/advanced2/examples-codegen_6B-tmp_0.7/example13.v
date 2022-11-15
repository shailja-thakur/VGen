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
  if (reset) q <= 0;
  else if (slowena)
    if (q < 9) q <= q + 1;
// The counter is reset to zero on the negative edge of the clock.
// See Programming the PIC for details of the negative edge / reset.
  else if (slowena) q <= 0;

reg [3:0] count;

always @(posedge clk or negedge slowena)
  count <= count_slow(slowena, reset, q);

endmodule
