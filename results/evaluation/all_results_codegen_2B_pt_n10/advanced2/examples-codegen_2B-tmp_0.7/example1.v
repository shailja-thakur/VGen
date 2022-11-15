// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Finally, return q.

// On the negative edge of the clock:
// if slowena is high, increment the output q by one.
// Otherwise, return q.

// Whenever q is 9, increment the output q by 10.

wire [3:0] q;

// ----------------------------------------------------------------------------
// Function declarations
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Utility Functions
// ----------------------------------------------------------------------------

// The reference for byte operations is:
//   http://www.graphics.cornell.edu/~bjw/bitsandwords.html

// Bitwise operations are performed on each bit of the inputs.
// For example, "input x" is "x[7:0]", while "input y" is "y[7:0]".

// 32-bit operations are performed on each byte of the inputs.
// For example, "input x" is "x[endmodule
