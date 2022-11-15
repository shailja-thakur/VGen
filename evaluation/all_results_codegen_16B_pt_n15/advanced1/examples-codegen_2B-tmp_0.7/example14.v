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


// function void adder(uint8 a, uint8 b, uint8 s, bool * overflow);


// Design a signed multiply-adder that takes two 8-bit 2's complement numbers, a[7:0] and b[7:0], and returns
// the carry of the addition. The carry of the addition is the lower-order bit of the result.

// Design an unsigned multiply-adder that takes two 8-bit unsigned numbers, a[7:0] and b[7:0], and returns
// the carry of the addition. The carry of the addition is the lower-order bit of the result.

module signed_mul_add(input [7:0] a,
    input [7:0] b,
    output carry
); 

// Design an unsigned multiply-adder that takes two 8-bit unsigned numbers, a[7:0] andendmodule
