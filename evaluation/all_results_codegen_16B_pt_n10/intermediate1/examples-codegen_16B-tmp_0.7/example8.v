// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

int main()
{
	// Declare the inputs and outputs of the adder
	half_adder adder( a, b, cout );

	// Write the simulation
	for ( int i = 0; i < 100; i++ )
	{
		// Use the inputs to update the outputs
		adder.sum = adder.a + adder.b;

		// Write the output
		cout << adder.sum << " " << adder.cout << " " << adder.cout;

		// Shift the inputs
		adder.a = adder.b;
		adder.b = adder.a;
	}
}
endmodule
