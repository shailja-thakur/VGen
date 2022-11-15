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


wire [8:0]carry_out;
wire signed [7:0]overflow_s;

assign carry_out[0] = 1'b0;
assign overflow_s[7:0] = 8'b0;

ripple_carry_adder adder0(.a(a[7:0]), .b(b[7:0]), .carry_in(carry_out[0]), .s(s[7:0]), .overflow(overflow_s[0]));

//assign overflow = overflow_s[7];

generate
genvar i;

for (i = 0; i < 8; i = i+1)
begin
	wire signed_add_overflow;
	wire carry_out_i;

	add_half_adder add_half_adder_i(.a(a[end
endmodule
