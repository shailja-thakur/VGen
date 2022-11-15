// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or posedge reset)
    if (reset) q <= {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    else if (slowena)
        if (q < 9) q <= q + 1;
        else q <= {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

// On the negative edge of the clock:
// if ena is high, reset q to 0. 
// Otherwise, only decrement the output q if it is not 0.

always @(posedge clk or posedge reset)
    if (reset) q <= {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    else if (slowena)
        if (q > 0) q <= q - 1;
        else qendmodule
