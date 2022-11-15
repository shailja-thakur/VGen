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

// The following test vectors are provided for you to test your adder. 
// The adder should add the numbers in a and b to the output s, and the overflow bit should be set to 1 if a and b overflow. 

// a = 0x00, b = 0x00, s = 0x00, overflow = 0x00
// a = 0x01, b = 0x00, s = 0x01, overflow = 0x00
// a = 0x00, b = 0x01, s = 0x01, overflow = 0x01
// a = 0x01, b = 0x01, s = 0x00, overflow = 0x01
// a = 0x80, b = 0x7F, s = 0x80, overflow = 0x01
// a = 0x7Fendmodule
