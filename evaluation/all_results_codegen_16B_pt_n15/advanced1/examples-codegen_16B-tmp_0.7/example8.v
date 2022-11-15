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


signed_adder(a0,b0,s0,overflow);

signed_adder(a1,b1,s1,overflow);

signed_adder(a2,b2,s2,overflow);

signed_adder(a3,b3,s3,overflow);

signed_adder(a4,b4,s4,overflow);

signed_adder(a5,b5,s5,overflow);

signed_adder(a6,b6,s6,overflow);

signed_adder(a7,b7,s7,overflow);

s0 += a0 + b0;
s1 += a1 + b1;
s2 += a2 + b2;
s3 += a3 + b3;
s4 += a4 + b4;
s5 += a5endmodule
