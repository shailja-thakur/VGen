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


// This module produces the sum of two 8-bit 2's complement numbers. 
// The output is represented in 2's complement.
// The output can be obtained by:
//  s=a-b-1
//  overflow=1 if a>b
//  if (a>b) then s=2**8-1
//  if (b>a) then s=2**8-1

// This module should be used in conjunction with the unsigned_adder module.
// The unsigned_adder module produces the sum of two unsigned 8-bit numbers.
// The output is represented in 2's complement.
// The output can be obtained by:
//  s=a-b
//  overflow=1 if a>b
//  if (a>b) then s=2**8-1
//  if (b>a) then s=2**8-endmodule
