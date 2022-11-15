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


wire sign_a; //high if the most significant bit of a is high
wire sign_b; //high if the most significant bit of b is high

wire [7:0] b_not; //the most significant bit of b is high if it is inverted

not(b_not[0], b[0]); //this inverts the bit of b

and(sign_a, a[7], b_not[0]); //if a is signed and b is not, then s is signed
and(sign_b, b[7], b_not[0]); //if b is signed and a is not, then s is signed


fulladder add1(1'b1, a[6:0], b[6:0], s[6:0], c_out[0]);
fulladder add2(sign_a, a[6:0], b_not[endmodule
