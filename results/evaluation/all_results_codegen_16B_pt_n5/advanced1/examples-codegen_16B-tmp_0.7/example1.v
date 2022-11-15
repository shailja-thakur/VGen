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
  
// Assume a and b are 2's-complement unsigned integers. 
// Provide an algorithm that takes as input two unsigned numbers a and b and outputs as an unsigned number the sum of a and b. 
// The input numbers may be of any size. 
// The output number has the same size as the input numbers. 
// The algorithm should not assume that a and b are normalized. 
// It should work with numbers that are represented in 1, 2, 4, or 8 bits. 
// You may assume bit arithmetic is available in your programming environment. 
// Here are some sample calls to signed_adder. 
// Example 1: 
// unsigned numbers a = 0, b = 0, result = 0, overflow = 0 
// signed_adder(a, b, result, overflow); 
// 0 + 0endmodule
