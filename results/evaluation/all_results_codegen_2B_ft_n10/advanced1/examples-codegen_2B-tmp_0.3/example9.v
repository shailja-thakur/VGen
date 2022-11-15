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


// Create a 4-bit adder for each 8-bit input
wire [3:0] a0, b0, a1, b1, a2, b2, a3, b3;
wire [3:0] s0, s1, s2, s3;

// Create wires for each adder
wire a0_carry, b0_carry, a1_carry, b1_carry, a2_carry, b2_carry, a3_carry, b3_carry;
wire s0_carry, s1_carry, s2_carry, s3_carry;

// Create wires for each adder
wire a0_borrow, b0_borrow, a1_borrow, b1_borrow, a2_borrow, b2_borrow, a3_borrow, b3_borrow;
wire sendmodule
