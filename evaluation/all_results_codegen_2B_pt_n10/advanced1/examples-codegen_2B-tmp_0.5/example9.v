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


signed_adder(a[7:0], b[7:0], s[7:0], overflow). 

// This design is not a good design because it does not allow for overflow to be checked.
// To check for overflow, the number a + b needs to be checked for overflow.
// This is done by using the following procedure:
// 1. The number a + b needs to be checked for overflow.
// 2. The most significant bit of a + b is compared with the most significant bit of s.
// 3. If the most significant bit of a + b is low, overflow occurs.
// 4. Otherwise, the most significant bit of a + b is high.
// 5. If the most significant bit of s is low, overflow occurs.
// 6. Otherwise, the most significant bit of s is high.
// 7. If the most significant bit of a + b is high, andendmodule
