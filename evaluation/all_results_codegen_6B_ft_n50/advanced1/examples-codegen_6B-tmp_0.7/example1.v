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


// s is the signed sum of a and b and carry_in is the carry-in bit for the 4-bit adder

wire signed [7:0] s, carry_in;

// Half adder using full adder
half_adder h1(.a(a[0]), .b(b[0]), .s(s[0]), .c1(carry_in[0]));
full_adder h2(.a(a[1]), .b(b[1]), .c0(carry_in[0]), .s(s[1]), .c1(carry_in[1]));
full_adder h3(.a(a[2]), .b(b[2]), .c0(carry_in[1]), .s(s[2]), .c1(carry_in[2]));
full_adder h4(.a(endmodule
