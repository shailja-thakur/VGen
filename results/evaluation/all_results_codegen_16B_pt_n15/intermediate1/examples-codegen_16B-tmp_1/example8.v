// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	sum = a + b + cout;
	cout = srl(sum, 1);
	output = sum % 4;
  endmodule
