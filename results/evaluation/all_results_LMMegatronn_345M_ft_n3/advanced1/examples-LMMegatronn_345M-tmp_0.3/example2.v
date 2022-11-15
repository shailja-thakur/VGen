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


wire [7:0] s0 = a[7:0] + b[7:0];
wire [7:0] s1 = a[7:1] + b[7:1];
wire [7:0] s2 = a[7:2] + b[7:2];
wire [7:0] s3 = a[7:3] + b[7:3];
wire [7:0] s4 = a[7:4] + b[7:4];
wire [7:0] s5 = a[7:5] + b[7:5];
wire [7:0] s6 = a[7:6] + b[7:6];
wire [7:0] s7 = a[7:7] + b[7:6];

wire [7:0] s8 = a[8] +endmodule
