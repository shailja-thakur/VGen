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


wire signed [7:0] b_signed = {b[6:0],b[7]};

wire signed [7:0] signed_s;
wire signed [7:0] signed_s_next;

// adds the unsigned numbers a and b and stores the result in signed s
adder add1(a,b,signed_s);

// calculates the next value of signed s after the first half of the add has been performed
adder add2(signed_s,b_signed,signed_s_next);

assign s = signed_s_next[7] ? {1'b1,signed_s_next[6:0]} : {1'b0,signed_s_next[6:0]}; // if s is negative, then b is negative and s is too
assign overflow = signed_s_next[7] ^ signed_sendmodule
