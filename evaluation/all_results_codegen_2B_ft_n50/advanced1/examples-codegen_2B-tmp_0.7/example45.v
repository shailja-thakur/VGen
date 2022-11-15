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


wire signed [7:0] a_plus_b_sum, sum_of_sum;
wire signed [7:0] sum_of_a, sum_of_b;
wire signed_overflow;

assign sum_of_a = a;
assign sum_of_b = b;

assign a_plus_b_sum = sum_of_a + sum_of_b;

assign sum_of_sum = sum_of_a + sum_of_b;

always @(*)
begin
	case ({a[7],b[7]})
	2'b00: s = sum_of_sum;
	2'b01: s = a;
	2'b10: s = b;
	2'b11: s = a_plus_b_sum[7:0];
	endendmodule
