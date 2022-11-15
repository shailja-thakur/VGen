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



wire [8:0] carry;
wire [7:0] s_final;
wire overflow_final;

assign carry[0] = 1'b0;

assign overflow_final = (a[7] & b[7] & ~s[7]) | (a[7] & ~b[7] & s[7]);

full_adder full_adder0(
.a(a[0]),
.b(b[0]),
.cin(carry[0]),
.s(s_final[0]),
.cout(carry[1])
);

full_adder full_adder1(
.a(a[1]),
.b(b[1]),
.cin(carry[1]),
.s(s_final[1]),
.cout(carry[2])
);

full_adder full_adderendmodule
