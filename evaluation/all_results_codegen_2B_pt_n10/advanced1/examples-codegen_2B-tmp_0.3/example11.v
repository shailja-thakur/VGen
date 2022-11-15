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


// Note:
// The input a and b are 8-bit 2's complement numbers.
// The output s is 8-bit 2's complement number.
// The output overflow is a boolean.
// The output overflow is true if the most significant bits of a and b are low and the most significant bit of s is high.
// The output overflow is false if the most significant bits of a and b are high and the most significant bit of s is low.

// Example 1:
// Input:
// a = 100, b = 101
// Output:
// s = 102
// Overflow = false
// Example 2:
// Input:
// a = 101, b = 100
// Output:
// s = 100
// Overflow = false
// Example 3:
// Input:
// a = 0, b = -1
// Output:
// s = -1
// Overflow =endmodule
