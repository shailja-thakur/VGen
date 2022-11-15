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
    void cycler_handler(
        output reg [3:0] q,     // The output, Q-bus.  Incremented on the clock (qclusive OR is applied).
        input rslt,         // High when the quarter-composite last digit (5d) of the previous cycle has changed.
        input slowena,      // Whether to slowen the zero drop-out of the counter.  True to slowen on the high.
        input rst);         // Whether to reset the counter.  True to reset on the low (a breaker towards zero).

// During the phantom push of digit zero, we add 1 to the output q, and
// feed back the counter over the slowena on the reset rising edge.
always @(~clkne    // clock ne
       posedge [5:0] q
       / rstne     endmodule
