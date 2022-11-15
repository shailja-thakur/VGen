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


wire signed [7:0] b_signed = {{6{b[7]}},b}; // since b is signed, we "borrow" the sign of b

assign s = a + b_signed; // a and b are added, and the final result is s

assign overflow = ((a[7]&b_signed[7])&~s[7]) | ((~(a[7]|b_signed[7]))&s[7]);
// s is high if a and b have opposite signs, and the sum has a negative sign

endmodule
