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


wire [8:0] c; // The 9-bit carry out

assign c[0] = 0; // c is the 9-bit carry out

// The 9-bit carry out is added to the 8-bit sum
fulladder add1(a[7], b[7], c[8], s[7], c[7]);
fulladder add2(a[6], b[6], c[7], s[6], c[6]);
fulladder add3(a[5], b[5], c[6], s[5], c[5]);
fulladder add4(a[4], b[4], c[5], s[4], c[4]);
fulladder add5(a[3], b[3], c[4], s[3], c[3]);
fulladder add6(a[2], b[2], c[3endmodule
