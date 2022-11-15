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


// implementation 

wire [8:0] carry;

wire [7:0] b_carry;

wire overflow;

full_adder FA0(a[0], b[0], 1'b0, s[0], carry[0]);
half_adder HA1(a[1], b_carry[0], carry[0], s[1], carry[1]);

full_adder FA2(a[2], b_carry[1], carry[1], s[2], carry[2]);
half_adder HA3(a[3], b_carry[2], carry[2], s[3], carry[3]);

full_adder FA4(a[4], b_carry[3], carry[3], s[4], carry[4]);
half_adder HA5(a[5], b_carry[4], carry[4], sendmodule
