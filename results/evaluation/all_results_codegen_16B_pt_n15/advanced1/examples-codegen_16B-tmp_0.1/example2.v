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

// The following test case shows the signed adder for two numbers a = 0xFF and b = 0xFF. 
// The output s = 0xFF and the output overflow = 0x1. 

a = 0xFF;
b = 0xFF;
s = 0xFF;
overflow = 0x1;

// The following test case shows the signed adder for two numbers a = 0x00 and b = 0x00. 
// The output s = 0x00 and the output overflow = 0x0. 

a = 0x00;
b = 0x00;
s = 0x00;
overflow = 0x0;

// The following test case shows the signed adder for two numbers a = 0x00 and b = 0xFF. 
// The output sendmodule
