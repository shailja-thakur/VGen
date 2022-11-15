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


wire [7:0] b_signed; // b is the signed version of the input b

assign b_signed = ((b[0] == 1'b1) ? ~b : b); // if b is a negative number, b_signed is its absolute value

assign s = a + b_signed; // add the signed versions of a and b

assign overflow = ((a[7] == b_signed[7]) && (a[7] != s[7])) ? 1'b1 : 1'b0; // if a and b have opposite signs, a + b = - (a + b)

// if a and b are both negative, s is a negative number, too. If a and b are both positive, s is positive.
// if a and b are both zero, s is zero. If a or b is NaN, s is NaN
endmodule
