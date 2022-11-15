// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b,
output cout;

output sum;

reg a, b,
	cout, sum;

always
begin
	if (a < 16)
	{
		a = a + 1;
	}
	else
	{
		a = 0;
	}

	if (b < 16)
	{
		b = b + 1;
	}
	else
	{
		b = 0;
	}

	sum = a + b;
	cout = sum > 0x7f;
end

endmodule
