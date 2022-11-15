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

// The following test case shows the signed adder for a and b = 0x80 and 0x7F. 
// The output s = 0x7F and the overflow is 0. 
// The signed adder adds the numbers and assigns the result to s. 
// The most significant bit of s is 1 because the most significant bit of a is 1 and the most significant bit of b is 1. 
// The most significant bit of s is 0 because the most significant bit of a is 0 and the most significant bit of b is 1. 
// The most significant bit of overflow is 0 because the most significant bit of a is 1 and the most significant bit of b is 0. 
// The most significant bit of overflow is 1 because the most significant bit of a is 0 and the most significant bit of b is 0. 

signed_adder(endmodule
