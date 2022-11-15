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

// Display the result of the signed addition in hexadecimal format.

s <= a + b;

// Display the result of the signed addition in decimal format. 
// add the value of a and b to determine the value of s. 
// use s[7] as the most significant digit of s. 
// s[6:0] is the least significant digit of s. 
// subtraction of a and b to determine overflow. 
// use s[7] as the most significant digit of overflow. 
// use s[6:0] as the least significant digit of overflow. 
// if s is greater than a and b, the signed overflow is positive. 
// if s is less than a and b, the signed overflow is negative. 
// if s is equal to a and b, the signed overflowendmodule
