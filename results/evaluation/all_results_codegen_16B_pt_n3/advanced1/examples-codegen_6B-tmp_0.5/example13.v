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


// Note that the signed_adder module is not an error module.

// The input a and b are not required to be full 8-bit numbers. 
// If a is not full 8-bit, then the carry in the most significant bit of s is set to zero. 
// If b is not full 8-bit, then the carry in the most significant bit of s is set to zero. 

// The output s is not required to be full 8-bit.

// The output s is not required to be zero. 
// If s is not zero, then the most significant bit of s is set to zero. 

// The output overflow is not required to be full 8-bit.

// If overflow is not full 8-bit, then the most significant bit of overflow is set to zero. 

// The output overflow is not required to be zero. 
// If overflow isendmodule
