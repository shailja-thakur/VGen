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

	wire low_a, low_b, low_s;
	wire [7:0] bpos_a, bpos_b;
	assign bpos_a = (a[7]) ? ~a + 1 : a;
	assign bpos_b = (b[7]) ? ~b + 1 : b;
	assign low_a = !(a[7] || b[7]);
	assign low_b = !(b[7] || a[7]);
	assign low_s = !(s[7] || low_a || low_b);
	assign overflow = s[7] ^ low_s;
	// must test for overflow signficantly (greater than >> overflow bits) based on
	// the widths of the operands
	assign s = (low_a && low_b) ? ((endmodule
