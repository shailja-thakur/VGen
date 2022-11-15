// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

	always_comb
		cout <= sum + a + b;
		sum <= a + b + carry_out;
		carry_out <= b;
endmodule
