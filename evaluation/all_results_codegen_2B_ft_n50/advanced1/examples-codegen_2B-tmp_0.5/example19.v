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


wire signed_overflow;
wire [7:0] sum;
wire [7:0] carry_out;

carry_select_adder_full_adder_8bit_generate_1 adder1(.a(a), .b(b), .cin(1'b0), .sum(sum), .cout(carry_out));
carry_select_adder_full_adder_8bit_generate_1 adder2(.a(sum), .b(carry_out), .cin(1'b1), .sum(s), .cout(signed_overflow));
assign overflow = (a[7] & b[7] & carry_out[7]) | (a[7] & b[7] & carry_out[7] & (~s[7])) | (sum[7] & carry_out[7]);

endendmodule
