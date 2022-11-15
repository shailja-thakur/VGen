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


// if a and b are signed and have the same sign, the sum may or may not be signed overflow.
// to determine if the sum is signed overflow or unsigned, first use a unsigned adder to add the two numbers.
// then use a tri-state bus to determine the most significant bit of the unsigned sum. 

// if the most significant bit of the unsigned sum is high, then the sum is signed overflow.
// if the most significant bit of the unsigned sum is low, then the sum is unsigned overflow.


// if the a and b are both signed and have opposite signs, then the sum is a signed overflow.
// the output is s = ((a[7] == b[7]) && (a[6:0] < b[6:0]));

// if a or b is signed and the most significant bit is high, then the sum is a signed overflow.
// if the mostendmodule
