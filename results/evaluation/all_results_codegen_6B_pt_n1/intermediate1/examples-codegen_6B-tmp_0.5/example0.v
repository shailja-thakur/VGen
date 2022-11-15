// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

half_adder( 0, 0, cout, sum );

function half_adder( a, b, cout, sum )
{
	var a_carry = ( a >> 2 ) & 1;
	var b_carry = ( b >> 2 ) & 1;
	sum = ( a_carry + b_carry ) & 1;
	cout = a_carry + b_carry + sum;
}
endmodule
