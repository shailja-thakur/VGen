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


wire [7:0] b2; 

assign b2 = ~b; // The numbers a and b are added in the opposite ways of how you'd implement a signed adder

full_adder FA0(a[0], b2[0], s[0], c1, carry[0]);
full_adder FA1(a[1], b2[1], s[1], c2, carry[1]);
full_adder FA2(a[2], b2[2], s[2], c3, carry[2]);
full_adder FA3(a[3], b2[3], s[3], c4, carry[3]);
full_adder FA4(a[4], b2[4], s[4], c5, carry[4]);
full_adder FA5(a[5], b2[5], s[5], c6endmodule
