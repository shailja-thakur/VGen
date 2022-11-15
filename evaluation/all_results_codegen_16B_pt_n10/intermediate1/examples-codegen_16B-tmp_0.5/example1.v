// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void main(){
	half_adder( a, b, cout, sum );
}

// This is the implementation of the half adder.
void half_adder( 
input a, b,
output cout, sum )
{
	// declare a temporary variable to store the sum
	int sum = 0;

	// declare a temporary variable to store the carry-out
	int carry_out = 0;

	// declare a temporary variable to store the output
	int out = 0;

	// add the two input values.
	out = a + b;

	// add the carry-out
	carry_out = out / 2;

	// add the sum
	sum = out - carry_out * 2;

	// write the output
	cout = out;
	sum = sum;
}endmodule
