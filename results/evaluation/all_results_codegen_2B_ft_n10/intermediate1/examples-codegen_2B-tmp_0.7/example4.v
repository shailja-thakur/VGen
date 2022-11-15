// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	xor(w1, a, b);
	xor(sum, w1, a);
	and(w2, a, b);
	and(w3, b, a);
	or(cout, w2, w3);
endmodule
