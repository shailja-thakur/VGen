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


signed_adder(a, b, s, overflow);

// The signed adder is implemented as a 4-stage pipeline. 
// The inputs a and b are first sign extended to 32 bits. 
// The sign extended values are then added to the output s. 
// The result is then sign extended to 32 bits and the most significant bit of the result is set to 1 if the most significant bit of s is 1 and to 0 if the most significant bit of s is 0. 
// The result is then sign extended to 32 bits and the most significant bit of the result is set to 1 if the most significant bit of overflow is 1 and to 0 if the most significant bit of overflow is 0. 
// The result is then sign extended to 32 bits and the most significant bit of the result is set to 1 if the most significant bit of s is 1 and to 0 if the most significant bit of s is 0. 
endmodule
