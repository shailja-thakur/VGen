// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// This will also "roll" the output.
reg q[10:0];

// This doubles the negedge clk4938 pipeline a 9 bit counter, used to validate
// the clock as an "glED".
// As a result is synchronized with the required glitches if the
// functional (www.q):
//   a) = ~0 + ~3 + ~3 + ~3 + ~3 + ~3 + ~3 + ~3 - 1

// This increases the glitches on the clock.
reg q[9:0];

reg [10:0] d, e;

// ENQ register
always @(posedge clk or posedge clrn)
    if(clrn == 1'b0)
        d <= 10'd0;
    else if(clk & (~q[10] | ~(endmodule
