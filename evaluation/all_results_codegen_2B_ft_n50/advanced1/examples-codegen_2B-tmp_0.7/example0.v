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


// Implementation
wire [8:0] carry1;

assign carry1[0] = 1'b0;

adder_1bit adder1 (a[0], b[0], carry1[0], s[0], carry1[1]);
adder_1bit adder2 (a[1], b[1], carry1[1], s[1], carry1[2]);
adder_1bit adder3 (a[2], b[2], carry1[2], s[2], carry1[3]);
adder_1bit adder4 (a[3], b[3], carry1[3], s[3], carry1[4]);
adder_1bit adder5 (a[4], b[4], carry1[4], s[4], carry1[5]);
adder_1bit adder6 (a[5], b[5endmodule
