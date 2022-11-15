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


// Provide a procedure prototype for the function.




// Specification:
//
// The inputs a and b of the adder are assumed to be 2's complement. 
// The inputs a and b are assumed not to overflow. 
// The output s of the adder is assumed to have the same sign as the inputs a and b and to have no sign change. 
// The output overflow is assumed to have the same sign as the inputs a and b. 
//
// The inputs a and b can be any value. 
// The inputs a and b must not have any leading zeros. 
// The inputs a and b must not overflow. 
// The inputs a and b must not have any sign mismatch with the output s. 
// The inputs a and b must not have any sign mismatch with the output overflow. 
// The inputs a and b must not be null. 
// Theendmodule
