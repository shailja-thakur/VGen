// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always (clk = 1) slow [if(reset='1') q=0];
always (clk = 1 ea = 1) slow [if(slowena='1') q=15][if(q > 9 u = true) q=0];

module count(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always (clk = 1) slow [if(reset='1') q=0];
always (clk = 1 ea = 1) slow [if(slowena='1') q=15][if(q>9 u=true) q=0];
self.Qendmodule
