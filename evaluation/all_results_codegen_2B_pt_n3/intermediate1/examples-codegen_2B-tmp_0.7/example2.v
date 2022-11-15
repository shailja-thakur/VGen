// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

{
	sum   = (a + b) >> 1;
	cout  = (a + b) >> 1;
}endmodule
