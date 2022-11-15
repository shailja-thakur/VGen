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


wire [7:0] b_signed; // b is the signed version of b

assign b_signed = (b[7]) ? ~b[7:0] + 1'b1 : b[7:0]; // b_signed is signed b

// perform the signed addition
adder add1(a[7:0], b_signed[7:0], s[7:0], carry[0]);
adder add2(a[7:0], b_signed[7:0], s[7:0], carry[1]);

// detect the signed overflow
assign overflow = carry[0] ^ carry[1];

endmodule
