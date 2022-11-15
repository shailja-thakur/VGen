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


// Assume that the inputs are in the range [-128, 127]
// Assume that the outputs are in the range [-128, 127]
// Assume that the signed overflow is in the range [-128, 127]
//
// Example:
// a = [0, 1, 2, 3, 4, 5, 6, 7], b = [0, 1, 2, 3, 4, 5, 6, 7], s = [0, 1, 2, 3, 4, 5, 6, 7], overflow = [0, 1, 2, 3, 4, 5, 6, 7]
//
// a = [0, 0, 0, 0, 0, 0, 0, 0], b = [0, 0, 0, 0, 0, 0, 0, 0], s = [0, 0, 0, 0, 0, 0, 0, 0], overflow = [0, 0endmodule
