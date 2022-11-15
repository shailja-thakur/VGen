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
  else if (slowena && q < 9)
    q <= 1;
  else
    q <= 2;

// On the negative edge of the clock:
// if the ena input is high, read the output q.
// Otherwise, if q is 9, reset the output q to 0.
always @(negedge clk)
  if (slowena)
    q <= read_q();
  else if (q == 9)
    q <= 0;
  else
    q <= 1;

reg [3:0] count = 0;

// On the positive edge of the clock:
// read the count from the input register, and increment the count register.
always @(posedge clk)
  if (slowena)
    count = count + 1endmodule
