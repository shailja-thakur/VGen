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


// Add two 8-bit 2's complement numbers a and b, a[7:0] and b[7:0], and store the result in s[7:0].
// If the result overflows, assign overflow to the output overflow.

// Assume that a[7:0] and b[7:0] are both between 0 and 255.

// Example:

// Input:
// a = 0x00, b = 0x01
// Output:
// s = 0x02
// overflow = 0

// Input:
// a = 0x00, b = 0x80
// Output:
// s = 0x80
// overflow = 1

// Input:
// a = 0xFF, b = 0x00
// Output:
// s = 0xFF
// overflow = 1

// Input:
// a = 0xFF,endmodule
