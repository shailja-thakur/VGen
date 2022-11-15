// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

int result;

void main()
{
	cout = sum = result;
}

int half_adder(int a, int b, int& sum)
{
	int result = (a + b) & 0x7fff;
	sum = result;
	return result;
}endmodule
