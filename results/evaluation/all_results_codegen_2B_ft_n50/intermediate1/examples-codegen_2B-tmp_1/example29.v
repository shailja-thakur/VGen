// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	wire s, c;
	xor g1(sum, a, b);
	and g2(cout, a, b);
	or g21(c,cout,cout);
endmodule
