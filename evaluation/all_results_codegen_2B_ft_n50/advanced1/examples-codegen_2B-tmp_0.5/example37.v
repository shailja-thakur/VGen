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


// The output s is the sum of a and b. The sign of the sum is the sign of a and b.
// The overflow occurs when the most significant bit of the sum is high and the most significant bit of the sum is low.
// The overflow is a signed overflow if the most significant bit of the sum is high and the most significant bit of the sum is low.
// The overflow is a signed overflow if the most significant bit of the sum is high and the most significant bit of the sum is low.

// The output overflow is the occurence of overflow when the most significant bit of s is high and the most significant bit of s is low.

// The output s and overflow are 8 bits.

// If overflow is high the output s is the sum of a and b.
// If overflow is low then the output s is the result of the subtraction of b from a.

// The overflow isendmodule
