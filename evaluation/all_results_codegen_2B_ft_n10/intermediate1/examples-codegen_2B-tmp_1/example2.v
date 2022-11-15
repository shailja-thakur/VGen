// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 

wire s;

	xor(tempb, a, b);
	xor( sum, tempb, s); 
	and(s, a, b);
	or(cout, s, tempb);

endmodule
