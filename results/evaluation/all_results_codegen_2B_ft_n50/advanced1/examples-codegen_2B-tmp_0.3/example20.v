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


wire signed [7:0] a_minus_b;
wire [7:0] b_minus_a;

assign a_minus_b = a - b;
assign b_minus_a = b - a;

wire signed [7:0] sum_of_a_minus_b;
wire signed [7:0] sum_of_b_minus_a;

assign sum_of_a_minus_b = a_minus_b[7:0] + b_minus_a[7:0];
assign sum_of_b_minus_a = b_minus_a[7:0] + a_minus_b[7:0];

wire signed [7:0] sum_of_a_minus_b_plus_1;
wire signed [7:0] sum_of_b_minus_aendmodule
