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


wire [8:0] c; // The carryout is the 9th element of the output, {1'b0,s[7:1]}.
// This is the carryout of the 9 bit adder and is the output of the adder.

assign c[0] = 0; // The most significant bit of c is always zero.
assign c[1] = (a[0]^b[0])^(s[0]^s[7]); // This is the carryout of the ripple carry adder.
assign c[2] = (a[1]^b[1])^(s[1]^s[0])^c[1];
assign c[3] = (a[2]^b[2])^(s[2]^s[1])^(s[0]^s[1])^c[1];endmodule
