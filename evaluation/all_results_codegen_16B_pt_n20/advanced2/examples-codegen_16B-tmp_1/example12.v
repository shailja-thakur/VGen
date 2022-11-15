// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
function count(
    input clk,
    input ena) {
    if (reset[0]) q <= 0; else {
        if (!ena[0] && q != 9) q <= q + 1;
    }
    if (clk) q <= q + 2;
}


// On the positive edge of slowena, reset the output q to 0. 
// Otherwise, only decrement the output q if the ena input is low and q is not 0.
function count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q) {
    if (slowena[0]) q <= 0; else {
        if (!ena[0] && q != 0) q <= q - 1;
    }
    if (clk) q <= q - 2;
}


// Defendmodule
