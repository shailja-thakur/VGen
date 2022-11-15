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


fulladder add1(a[0], b[0], s[0], c1, carry[0]);
fulladder add2(a[1], b[1], c1, s[1], carry[1]);
fulladder add3(a[2], b[2], c1, s[2], carry[2]);
fulladder add4(a[3], b[3], c1, s[3], carry[3]);
fulladder add5(a[4], b[4], c1, s[4], carry[4]);
fulladder add6(a[5], b[5], c1, s[5], carry[5]);
fulladder add7(a[6], b[6], c1, s[6], carry[6]);
fulladder add8(a[7], b[7], c1, s[7], carry[7]);endmodule
