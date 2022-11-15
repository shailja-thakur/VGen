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


wire [8:0] c;
wire [7:0] b_signed;
wire signed_overflow;

assign b_signed = ~b; // Inverse because bitwise And uses 'and'

assign c = a + b_signed + 8'h00000001; // The carry is c[8].

assign signed_overflow = c[8]; // Get the most significant bit of c. 

// If the sum of a and b is negative, the most significant bit is 0. 

assign s = (~a[7] & ~b_signed[7]) ? c[7:0] : c[7:8]; // If a and b are negative, the most significant bit is 0.

assign overflow = signed_overflow | (a[7] & b_signed[7]); // Get the overflow flag. 

endendmodule
