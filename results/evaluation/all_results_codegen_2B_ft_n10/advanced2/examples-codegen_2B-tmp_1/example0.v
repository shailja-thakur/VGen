// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// q will be reset to 0 if slowena is low or else to the next decreasing value if slowena is high.
// Slow count increments slower than the clock.
always @(posedge clk)
 if (reset)
 q <= 0;
 else if (slowena)// implement the decrement feature.
 if (q == 4'b1001)
 q <= 0;
 else
 q <= q - 1;
endmodule
