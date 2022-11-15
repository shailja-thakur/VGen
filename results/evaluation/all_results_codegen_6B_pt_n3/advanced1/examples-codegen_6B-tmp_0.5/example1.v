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


// The signed adder is a function with the following signature:

// function signed_adder(a, b)

// Inputs:
// a is an 8-bit 2's complement number
// b is an 8-bit 2's complement number
// Outputs:
// s is a 8-bit 2's complement number
// overflow is an 8-bit 2's complement number

// This function must return a tuple of two values:
// s and overflow

// The return value of the function must be a tuple of two elements:
// s and overflow

// The return value of the function must be a tuple of two elements:
// s and overflow

// You may assume that the inputs a and b are in the range [-128, 127].

// If the inputs a and b are in the range [-128, 127], their sum is in the range [-128, 127].

//endmodule
