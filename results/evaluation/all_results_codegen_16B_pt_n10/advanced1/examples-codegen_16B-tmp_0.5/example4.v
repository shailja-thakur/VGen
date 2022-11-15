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


signed_adder(a, b, s, overflow);

// The function should return the value of s.

// For example, if a = 5 and b = -3, the function should return -2.

// Assume that: a and b are in the range [-128, 127].
// a and b are in the range [-128, 127].
// s is in the range [-128, 127].
// overflow is in the range [0, 1].
// The maximum number of operations is 50.



// The function should return the value of s.
// The function should return -2.
// The function should return -2.
// The function should return -2.
// The function should return -2.
// The function should return -2.
// The function should return -2.
// The function should return -2.
// The function should return -2.endmodule
