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


// The adder is implemented as a 4-bit adder with the carry bit being stored in the most significant bit of s. 
// The carry bit is set to 1 if the most significant bit of a and b are low and the most significant bit of s is high.
// The carry bit is set to 0 if the most significant bit of a and b are high and the most significant bit of s is low. 
// The carry bit is set to 1 if the most significant bit of a and b are low and the most significant bit of s is low. 
// The carry bit is set to 0 if the most significant bit of a and b are high and the most significant bit of s is high. 
// The carry bit is set to 1 if the most significant bit of a and b are high and the most significant bit of s is low. 
// The carry bit is set to 0 if the most significant bit of a andendmodule
