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


// The output overflow is a single bit. 
// The output s is 8 bits long and the overflow bit is the most significant bit.

// The addition is done using two's complement arithmetic. 
// The most significant bit of the sum s is the same as the most significant bit of a and b. 
// The least significant bit of the sum s is the complement of the least significant bit of a and b. 
// The complement of the least significant bit of a and b is the complement of the least significant bit of a. 
// The complement of the least significant bit of b is the complement of the least significant bit of b. 

// The output overflow is a single bit. 
// The output s is 8 bits long and the overflow bit is the most significant bit.

// The addition is done using two's complement arithmetic. 
// The most significant bit of the sum s is the same as theendmodule
