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


// The adder is implemented as a 4-stage pipeline:
//
// 1. The inputs a and b are shifted right by 1 bit.
// 2. The inputs a and b are added together.
// 3. The carry bit from the addition is shifted right by 1 bit.
// 4. The carry bit from the addition is added to the most significant bit of s.
//
// The output s is shifted left by 1 bit.
// The output overflow is shifted left by 1 bit.
//
// The adder is implemented as a 4-stage pipeline:
//
// 1. The inputs a and b are shifted right by 1 bit.
// 2. The inputs a and b are added together.
// 3. The carry bit from the addition is shifted right by 1 bit.
// 4. The carry bit from the addition is added to the most significant bit of s.
//
// The output s isendmodule
