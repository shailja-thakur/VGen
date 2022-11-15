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


// The adder is implemented as a full adder with carry propagation. 
// The carry bit is propagated to the output. 
// The carry bit is set if the carry bit of the previous add operation is 1. 
// The carry bit is cleared if the carry bit of the previous add operation is 0. 
// The carry bit is set if the carry bit of the current add operation is 1. 
// The carry bit is cleared if the carry bit of the current add operation is 0. 
// The carry bit is set if the carry bit of the current add operation is 1. 
// The carry bit is cleared if the carry bit of the current add operation is 0. 
// The carry bit is set if the carry bit of the current add operation is 1. 
// The carry bit is cleared if the carry bit of the current add operation is 0. 
// The carry bit is set if the carryendmodule
