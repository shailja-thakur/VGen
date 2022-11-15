// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
RESET: ena <= clk & reset => q <= 0;
ENABLE: slowena <= clk & ena & q <= 9;

// On the negative edge of the clock:
// if ena is high & q = 9, decrement q by 1; 
// if ena is low, q < 0, then simply increment q by 1.
// or: if res is high and q = 9, q <= 0, set to 0; 
// otherwise, do nothing and the counters remain unchanged.
disable: clk & ~ena & ~q <= slowena;
enable:  clk & ena & slowena & ~q <= 9;

// Time constraints (tBV): 
// input to register instantiation: < 1 nsec
// register constant folding: < 1 nsec
// register communication: < 5 nsec
// clock low time: < 20 nsecendmodule
