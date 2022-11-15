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


// Modify the implementation to add an overflow checker to the adder. 
// A signed overflow checker will be added to the adder that asserts an overflow exception if the sign of a, b, or s are all different, 
// and if the result after the addition will be a negative number.

// The following logic should be used to determine if an overflow occured.
// a signed overflow occurs if the most significant bit of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low

assign overflow = (a[7] ^ b[7]) & ~(s[7]) & ~(a[7] ^ s[7]);

// The following logic should be used to add two numbers a and b.
// The implementation should add a and b usingendmodule
