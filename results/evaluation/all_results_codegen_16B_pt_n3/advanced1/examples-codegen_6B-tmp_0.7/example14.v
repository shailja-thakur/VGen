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


// The carry bit of s is the most significant bit of a + b. 
// If there is a signed overflow, then s has a 1 in the most significant bit position and a 0 in all other bit positions.
// If there is no signed overflow, then s has a 0 in the most significant bit position and a 0 in all other bit positions.
// The output of the signed adder is the most significant bit of s.
// The output of the adder is also the output of the overflow bit.

// Design a subtracter that subtracts two 2's complement numbers, a[7:0] and b[7:0].

module signed_subtractor(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are subtracted from the output s. endmodule
