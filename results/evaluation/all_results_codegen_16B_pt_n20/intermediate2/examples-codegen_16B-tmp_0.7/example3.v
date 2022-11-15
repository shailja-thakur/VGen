// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk or posedge reset)
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1;

// The conversion of a binary counter to a decimal number is based on the following
// conversion formula:
//
//   A*2^(n-1) + B (mod 10^9)
//
// where A and B are the two digits of the binary number
//   B is the number of digits in the binary number n
//
// with:
//   A = [A1 A2]
//   B = [B1 B2]
//
// The following modules are used to compute A1 and A2 and B1 and B2
module counter_max_a( input [14:0] a, input [5:0] b );
// A1 = a[endmodule
