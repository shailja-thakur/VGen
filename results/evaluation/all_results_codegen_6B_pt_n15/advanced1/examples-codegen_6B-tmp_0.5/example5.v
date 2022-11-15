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


// Input:
// a = 00001010
// b = 00000111
// Output:
// s = 00011010
// overflow = 00001110
module add(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

module add_with_carry(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);

module add_with_carry_add(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);

module add_with_carry_add_carry(input [7:0] a,
    input [7:0] b,
    output [7endmodule
