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


wire [7:0] b_signed; // b is signed and the absolute value of the most significant bit of b is the signed value of b

assign b_signed = ((b[7] == 1'b1) ? ~b : b); // if b is negative, b_signed is the absolute value of b

assign s = a + b_signed; // add the signed values together

assign overflow = ((a[7] == b_signed[7]) && (a[7] != s[7])) ? 1'b1 : 1'b0; // if a and b have opposite signs, the sum has an overflow. Otherwise, the sum does not have an overflow.

endmodule
