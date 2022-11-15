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


wire [7:0] b_signed; // stores the most significant bit of b
assign b_signed = ~b[7] + 1; // calculates the b most significant bit

wire signed_adder_overflow; // the output overflow
assign signed_adder_overflow = (a[7] & b_signed[7]) & ~s[7]; // calculates if the output overflow is high


// assigns the two numbers as the output s and the output overflow
assign s = a + b + signed_adder_overflow;

// calculates the carry output
assign carry = (a[7] & b_signed[7]) & ~(s[7] ^ signed_adder_overflow);

endmodule
