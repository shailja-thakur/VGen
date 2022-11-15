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



// Add two 8-bit 2's complement numbers a and b, and returns the result in s, 
// and the overflow flag. 
// Assume that a and b are both positive. 
// Assume that the most significant bit of s is the most significant bit of a.

// example:
// a = 01101101
// b = 01101101
// s = 01101101
// overflow = true

// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low

// example:
// a = 01101101
// b = 01101101
// s = 01101101
// overflow = false

void add(int a, int b, int s[], bool& overflow)endmodule
