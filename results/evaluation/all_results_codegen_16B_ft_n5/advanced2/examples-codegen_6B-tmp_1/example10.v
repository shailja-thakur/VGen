// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the negative edge of the clock: 
// if reset is high, clear the output q. 
// Otherwise, if q is 9, set q to 0.
def inc_slow(input clk, timeout): returns (input ena, reset, timeout);
inc_slow (true, true, 0) ;
while (~clk & ~ena) return (false, true, 0);
return (true, clk & ena, 10);

// Populate the following events from the input:
// (0) when the counter reaches 0, it forward the input it got at reset=1 before incrementing
// (1) when the counter resets to 0, it sets ena=1, and a compare returns true, then the input increased
// (2) when the compare gets true on generation C, the output resets to 0 (if ena was set to 1), and ena
endmodule
