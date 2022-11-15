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


wire a_is_positive, b_is_positive;
wire [7:0] a_minus_b;
wire [7:0] b_minus_a;
wire [7:0] sum_difference;
wire [7:0] sum_difference_negative;
wire signed_overflow;
wire [7:0] a_and_b;

assign a_is_positive = a[7];
assign b_is_positive = b[7];

assign a_minus_b = a_is_positive ? a : ~a + 1'b1;
assign b_minus_a = b_is_positive ? b : ~b + 1'b1;

assign sum_difference = a_minus_b + b_minus_a;
assign sum_difference_negative = ~sum_differenceendmodule
