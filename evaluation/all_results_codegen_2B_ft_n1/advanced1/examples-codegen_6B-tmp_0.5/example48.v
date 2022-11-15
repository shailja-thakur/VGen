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


wire signed [8:0] ca_sum; // the carry out of the adder

// The sign of the output is the same as the most significant bit of the sum
assign s[7] = ca_sum[8];

// The carry in is the second most significant bit
assign ca_sum[1:0] = 2'b00;

// All other bits are zero
assign ca_sum[9:2] = 9'b0;

assign overflow = ca_sum[8];

// The adder is instantiated
adder8
adder_inst
(
	.a(a),
	.b(b),
	.s(s),
	.overflow(overflow)
);

endmodule
