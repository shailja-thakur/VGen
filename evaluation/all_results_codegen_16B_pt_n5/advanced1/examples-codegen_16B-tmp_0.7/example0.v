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


signed_adder(a[7:0], b[7:0], s[7:0], overflow);

// Check if an overflow occurs

// If an overflow occurs, the most significant bit of s is 1. Otherwise it is 0. 
// The signed overflow occurs if it is 1. 

// Implement a signed adder that adds two 16-bit 2's complement numbers, a[15:0] and b[15:0]. 

module signed_adder(input [15:0] a,
    input [15:0] b,
    output [15:0] s
);

signed_adder(a[15:0], b[15:0], s);

// Check if an overflow occurs

// If an overflow occurs, the most significant bit of s is 1. Otherwise it is 0. 

// The signed overflow occurs if it is 1.endmodule
