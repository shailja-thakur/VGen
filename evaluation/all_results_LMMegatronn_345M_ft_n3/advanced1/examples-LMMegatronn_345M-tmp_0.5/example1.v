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


wire [7:0] s_fract_o;
wire [7:0] s_iter;

// Store whether we are in a or b in an or adder
assign s_iter = a + b;
assign overflow = ((a + b) + s_fract_o) > 0;

// Calculate our own s/fract_o with a[7:0] and b[7:0]
s_fract_smul s_fract_smul
( 
	.a(s_fract_o), 
	.b(s_iter), 
	.s(s_iter), 
	.overflow(overflow)
);

assign s_overflow = overflow | ((a << b) + s_fract_o);

endmodule
