// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_output_sum( a, b, cout, sum )
{
	cout = a + b + sum;
	sum = cout & 0x1;
}

function half_adder_output_carry( a, b, cout, sum )
{
	cout = a + b + sum;
	sum = cout & 0x1;
}

function half_adder_output_sum_carry( a, b, cout, sum )
{
	cout = a + b + sum;
	sum = cout & 0x1;
}

function half_adder_output_carry_sum( a, b, cout, sum )
{
	cout = a + b + sum;
	sum = cout & 0x1;
}

function half_adder_output_sum_carry_sum( a, b, coutendmodule
