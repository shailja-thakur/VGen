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


wire signed [8:0] c; // The carries between adders. Since carry is not used in this specific adder, declare it as a wire.

assign c[0] = 1'b0; // since carry is not used, initialize it to 0.
assign c[1] = 1'b0;
assign c[2] = 1'b0;
assign c[3] = 1'b0;
assign c[4] = 1'b0;
assign c[5] = 1'b0;
assign c[6] = 1'b0;
assign c[7] = 1'b0;

// The adders are called to perform signed addition. a and b are casted as integers to perform the addition.
// For a+b, the overflowed carry is c[0]. For a-b, the overflendmodule
