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
// assign the most significant bit of a to s[0]
// assign the rest of the bits of a to s[7:1]
// assign the most significant bit of b to s[0]
// assign the rest of the bits of b to s[7:1]
// if a[7] and b[7] are both high, then the most significant bit of s is high
// if a[7] and b[7] are both low, then the most significant bit of s is low
// if a[7] and b[7] are different, then the most significant bit of s is high
// if a[7] and b[7] are both high, then the most significant bit of s is low
// if a[7] and b[7] are both low, then the most significant bit of s is high
// if a[7] and b[7endmodule
