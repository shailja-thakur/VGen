// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//// Inputs: clk, reset, ena.
// Outputs: q
// Wire:
//   clk -- use for driving clk
// Wire:
//   ena -- use for driving in pulldown mode when reset is low.

//fqcalc clock cycle times [t]

sig msec[t+1], u1[t+1], u0[t+1]; 
ffchan3 pcalc_calc(clk, reset, contin)= {[0,0,0]]; 

const int t=3;

waiter spurca[]= {5: MHz(500)};
sig clk_spurca=clkg; 
clk_spurca<=1<<t;

// User code sets the clocks in the loop...

while 1:
// Determine the duration of the update clockendmodule
