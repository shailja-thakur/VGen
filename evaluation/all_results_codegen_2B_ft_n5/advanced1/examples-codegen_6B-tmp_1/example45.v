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


wire signed [8:0] r;

// 8-bit RCA (reduce adder)
fulladder f1(a[0], b[0], 1'b0, s[0], r[0]);
fulladder f2(a[1], b[1], r[0], s[1], r[1]);
fulladder f3(a[2], b[2], r[1], s[2], r[2]);
fulladder f4(a[3], b[3], r[2], s[3], r[3]);
fulladder f5(a[4], b[4], r[3], s[4], r[4]);
fulladder f6(a[5], b[5], r[4], s[5], r[5]);
fulladder f7(a[6], b[6], r[5], sendmodule
