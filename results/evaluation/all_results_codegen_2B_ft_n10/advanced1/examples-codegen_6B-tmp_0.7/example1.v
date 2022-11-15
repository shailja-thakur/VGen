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



assign overflow = (a[7] & b[7]) & (~s[7]);

wire bnot[7:0]; // the wire holding the least significant bits of b

assign bnot[0] = ~b[0];
assign bnot[1] = ~b[1];
assign bnot[2] = ~b[2];
assign bnot[3] = ~b[3];
assign bnot[4] = ~b[4];
assign bnot[5] = ~b[5];
assign bnot[6] = ~b[6];
assign bnot[7] = ~b[7];

assign s[0] = (a[0] & bnot[0]) ^ (a[0] & b[0]) ^ (a[0] & a[0]) ^ (aendmodule
