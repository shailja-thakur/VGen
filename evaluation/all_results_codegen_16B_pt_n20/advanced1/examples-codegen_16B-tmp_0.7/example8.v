// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


// Implementation

// The algorithm works by adding the two numbers, then checking the most significant bit of the result.  If the most significant bit is zero, the result is positive and no signed overflow occurs.  If the most significant bit is one, the result is negative and a signed overflow occurs.  The algorithm works by shifting one of the inputs by one bit and adding the two numbers.  The most significant bit of the result is shifted out to the output and the result is tested for a sign.

signed_adder(a, b, s, overflow)
{
  assign(overflow, a[0] == b[0] && a[1] == b[1] && a[2] == b[2] && a[3] == b[3] &&
         a[4] == b[4] && a[5] == b[5] && a[6] == b[6]endmodule
