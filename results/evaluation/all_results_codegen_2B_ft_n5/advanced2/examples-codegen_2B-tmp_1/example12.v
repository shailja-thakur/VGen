// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
wire j [3] = [
    1'b0, j = j, z0, 
    -- if reset is high, set j = array[clk-1:0]
      j'= j, s = 0 if input reset ~= 0 else 1, 
        q = j'if input slowena ~= 0 else 0
      
    ];
/* -
focus:

on the positive edge of the clock (which is not
// the same as the end-of-slow-to-fast transition):
// Let j=0x1, s = 1 if and only if input flip1b:q==0 is tristated
// while clock is low
// (because the internal flip1b signal is tristated when it is 1
//  so that it flips the status once and trits. the low byte of the reg.
//  it may be 1 but isendmodule
