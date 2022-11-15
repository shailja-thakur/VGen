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
  if (~reset && slowena) {
    q[0] = q[0] + 1;
  }

  specs do;
  specs do_init =\
    clk.saw_en ? (clk.log > 2) ? {ENABLE, 2} : {DISABLE, 7} :
                  (clk.log > 0) ? {ENABLE, 2} : {DISABLE, 7};

// This is trying to do the following thing, but is blocked by a case statement limitation.
// The q input is checked whenever the clock is stopped.
// oclock[1](0) is in the sawtooth state.
// Equation: q + oclock[1](1) == logical_shift(q.q<-1 ? 8 : 7, q_cur)
// if s > 9, thenendmodule
