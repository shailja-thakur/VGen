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

// Assume a and b are 2's complement numbers.
// Assume that a and b are 7-bit numbers.
// Assume that s is a 7-bit number.
// Assume that overflow is a 1-bit number.
// Assume that the most significant bit of each input number is a 1.
// Assume that no input number is greater than 255.
// Write a test program that tests the signed_adder function.
// Test the signed_adder function on the following set of input values:
// (a, b, s, overflow) = (0, 0, 0, 0)
// (a, b, s, overflow) = (127, 255, 127, 0)
// (a, b, s, overflow) = (127, 0, 255, 1)
// (a, b, s, overflowendmodule
