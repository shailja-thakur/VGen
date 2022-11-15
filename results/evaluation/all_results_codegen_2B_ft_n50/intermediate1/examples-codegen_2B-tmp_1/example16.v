// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// This is the half adder which takes two 4-bit inputs a, b and produces a 4-bit sum.
// The carry output is a wire called carry.
// Wire w;
wire w0, w1;

// This is the dataflow module instantiating the half adder 1.
// Half adder 1. Here we have non-nested netwires.

// We instantiate two full adders (.
// The first full adder 1. Half adder 1.

// Implement half adder #1. This is our first adder in the sequence.

// final addition operator = +: beta+alpha = increments the or of carry and
// sum. carry also gets the value of carry_out from adder 1.
	or( carry, carry_out, p1_carry_out );
	assign sum = p1_a_w0_sum |endmodule
