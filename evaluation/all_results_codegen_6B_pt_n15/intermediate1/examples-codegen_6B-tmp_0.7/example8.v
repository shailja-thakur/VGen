// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Outputs cout = a + b + sum, carry-out = a + b + sum & 0x1
// Inputs a, b, sum should be 0 to 15.

// The value of a, b, or sum will be in the range 0 to 15.
task main()
{
	half_adder( a, b, cout, sum );
}
endmodule
