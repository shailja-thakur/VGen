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
  if (rlst1) {
    if (reset) q <= 0;
		if ((slowena) && (q != 9)) q++;
  } else {
    reg => q;
  }

package sch_clock_retimer;

clock_sss clock_fast;
reg clk_fast;
reg node_fast;
reg emu_nodes_fast;
reg q_fast;

// The clock module counts clock cycles repeatedly. For fast capture
// we need mark a cycle after each falling edge of clock.
always @(posedge clk_fast)
  if (1'b0) {
    q_fast = q;
  }

always @(posedge clk) // We need 2 clock cycles of delay here to synchronize between fast and slow nodes
  if (rlst1)endmodule
