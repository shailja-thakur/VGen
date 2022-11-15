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

// The following test case shows the signed adder for two positive numbers. 
// The result is 0x00, since the most significant bit of s is 0. 
// The overflow is 0x00. 

a = 0x01;
b = 0x02;
s = 0x00;
overflow = 0x00;

// The following test case shows the signed adder for two negative numbers. 
// The result is 0xFF, since the most significant bit of s is 1. 
// The overflow is 0xFF. 

a = 0x80;
b = 0xFF;
s = 0x00;
overflow = 0xFF;

// The following test case shows the signed adder for two positive numbers. 
// The result is 0x01, since the most significantendmodule
