// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
signal enc;

always @always clk <= clk + 1;
always @always enc <= (slowena) ? q + 1 : q;

always @always reset = ~slowena & (slowena | ~clk);
enable @{clk} <= slowena & slowena;


// On the sampling clock:
// Clear the encoder result registers next cycle.
always @{q} <= q & q[e5: e4];
always @{q} <= q & q[e2: e1];
always @{q} <= q & q[e0: e1];

// At the sampling clock, increment the number counter by enc and cc.
if (slowena)
  queue #(2'000'000, 5, 2) q_output;

  if (@{clk} && @{enca} && @{res1} &&endmodule
