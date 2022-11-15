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


assign overflow = (~a[7] & b[7] & ~s[7]) | (a[7] & ~b[7] & s[7]) | (a[7] & b[7] & s[7]);

// Add the complement of the b to the a. This results in a negative s.
assign yes = ~b[7] & a[7];
assign no = ~b[7] | a[7];

// There is no overflow if the complement of the b is added to the complement of the a.
assign overflow_complement = (~yes[7] & ~no[7]);



// The carry bit is equal to the complement of the negative of b.
assign carry = ~b[7] & ~a[7];

// Add the carry and complement of the b to the complement of the a. This gives theendmodule
