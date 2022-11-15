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


wire [7:0] s2 = a[7:0] + b[7:0];
wire [7:0] s3 = b[7:0] + b[7:0];
wire [7:0] s4 = c[7:0];
wire [7:0] s5 = c[15:8];
wire [7:0] s6 = c[23:16];
wire [7:0] s7 = c[31:24];

wire [7:0] s2_neg = a[31:24] + b[31:24];
wire [7:0] s3_neg = c[31:24] + b[31:24];

wire [7:0] s4_neg = a[31:24] + b[31:24];
wire [7:0] s5_neg = cendmodule
