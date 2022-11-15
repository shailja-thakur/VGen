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


// if a and b have the same sign, assign the sign of s to the same sign as a
assign s[0] = a[0] & b[0] | ~a[0] & ~b[0];

// if a and b have opposite signs, assign the sign of s to the opposite of the sign of a
assign s[7:1] = a[7:1] ^ b[7:1];

// if a is negative, assign the complement of b to the output s
assign s[7:2] = (~a[7:2]) + 1'b1;

// if a is positive, assign the value of b to the output s
assign s[7:2] = a[7:2];

// if b is negative, assign the complement of a to the output s
assign s[7:3] = (~bendmodule
