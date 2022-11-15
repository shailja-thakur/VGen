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

// Assign the result of the addition to the output register s. 
// It is guaranteed that a and b are not signed overflow and that s is not signed overflow.
// overflow is assigned in two cases: 
// if a and b have a different sign, or 
// if the most significant bits of a and b are the same and s is not all-ones 

signed_adder(a, b, s, overflow);

// Assign the result of the addition to the output register s. 
// It is guaranteed that a and b are not signed overflow and that s is not signed overflow. 
// overflow is assigned in two cases: 
// if a and b have a different sign, or 
// if the most significant bits of a and b are the same and s is not all-ones 

signed_adder(endmodule
