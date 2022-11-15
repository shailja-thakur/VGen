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



// Create a 7-bit 2's complement number for each input.
// For example, if a is 2 and b is 3, then the 2's complement of a is 8 and the 2's complement of b is 5.

// Create a 7-bit 2's complement number for the output.
// For example, if s is 4 and overflow is true, then the 2's complement of s is -4.

// Create a 7-bit 2's complement number for the overflow output.
// For example, if overflow is true, then the 2's complement of s is 2.

// Create a 7-bit 2's complement number for the carry output.
// For example, if carry is true, then the 2's complement of s is -1.

// Create a 7-bit 2's complement number for the carry output.
// For example, if carry is true, then the 2's complement of s isendmodule
