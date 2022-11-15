// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_in, carry_out, sum_out;

half_adder( a, b, cout, sum_out ) {
	carry_in = 0;
	sum_out = a + b + carry_in;
	carry_out = sum_out / 2;
	cout = sum_out % 2;
}

endmodule
