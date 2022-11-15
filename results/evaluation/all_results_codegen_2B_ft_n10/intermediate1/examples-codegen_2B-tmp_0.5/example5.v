// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	
	wire c1, c2;
	
	xor(c1, a, b);
	xor(sum, a, b);
	and(c2, a, b);
	or(cout, c1, c2);

endmodule
