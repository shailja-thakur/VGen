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


// The signal overflow is a delayed version of the signal s. 
// The addition of a and b is delayed by one cycle. 
// The addition of the output s is delayed by one cycle. 
// The addition of the overflow bit is delayed by one cycle.

assign overflow = (a[7] ^ b[7]) & s[7] | (a[7] & b[7]) & ~s[7];

// The addition is done in the following stages:
// 1. The most significant bit of a and b are compared with the most significant bit of s. 
// 2. If the most significant bits of a and b are equal, the sign of the sum is set to the sign of s.
// 3. If the most significant bits of a and b are different, the sign of the sum is set to the sign of a.
// 4. The least significant bits of aendmodule
