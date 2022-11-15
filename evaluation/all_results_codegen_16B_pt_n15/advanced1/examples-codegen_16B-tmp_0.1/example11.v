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

// Assume that a and b are in the range [-128, 127]. 
// Assume that s is in the range [-128, 127]. 
// Assume that overflow is in the range [0, 1]. 
// Assume that a and b are not both zero. 
// Assume that a and b are not both negative. 
// Assume that s is not negative. 
// Assume that overflow is not 1. 
// Assume that overflow is not 0. 
// Assume that a and b are not both negative. 
// Assume that a and b are not both zero. 
// Assume that s is not negative. 
// Assume that overflow is not 1. 
// Assume that overflow is not 0. 
// Assume that a and b are not both negative. endmodule
