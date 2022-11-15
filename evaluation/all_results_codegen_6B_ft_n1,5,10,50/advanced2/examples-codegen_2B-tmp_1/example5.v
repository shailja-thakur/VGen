// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

wire isn_high;

always @(posedge clk)
    if (reset)
        q = 0;
    else if (slowena)
        q<=9;
    else 
        q<=qi;
    
// Operating on the positive edge of the slowena input:
// Test if the slowena input is high and q is not 9.
// The slowenabit should be 1 at q, 4, or 5. In the event of a transistrant value, 
// adjust the slowenabit to match the value on the fastest edge.
// http://www.openocd.org/docs/4.4/catalogs/fig1616-2.html
// Some include a HOLDP in the divider and in the dataport does that.
// A QAN is implemented in this catalognum, as a base class.

endmodule
