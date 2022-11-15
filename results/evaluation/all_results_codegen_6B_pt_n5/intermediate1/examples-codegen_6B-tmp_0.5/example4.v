// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

public half_adder( 
input a, b,
output cout, sum )
{
	this.a = a;
	this.b = b;
	this.cout = cout;
	this.sum = sum;
}

// The output is the sum.
public output
output()
{
	return this.sum;
}

// The output is the carry-out.
public output
carry_out()
{
	return this.cout;
}

// The output is the sum and the carry-out.
public output
output_sum()
{
	return this.sum, this.cout;
}

// The output is the sum and the carry-out and the carry-in.
public output
output_sum_carry()
{
	return this.sum, this.cout, this.a;
endmodule
