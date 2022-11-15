// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(*)
void ram_counter_gen_slow(
    clk             clk_i,
    slowena         slowain, 
    reset           rst_i, 
    output reg [3:0] q_o)
{
  if (rst_i(0)) { reset_reg = 1; }
  else {
    if (slowena(0)) {
    	reset_reg = 0; 
    	q_o(4) = 9;
    	if (clk_i(clk)) { sum_clock_slow((q_o(2) + 1) & 3ul, q_o(3)); }
    }
  }
}

// On the positive edge of the clock:
// increment the output q when the ena input becomes high, and set the output q to 0 if the clock goes high againendmodule
