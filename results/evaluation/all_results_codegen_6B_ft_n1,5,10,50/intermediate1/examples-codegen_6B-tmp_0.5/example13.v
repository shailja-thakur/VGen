// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_r( a, b, cout, sum )
{
	if ( a == 0 )
		return;
	if ( b == 0 )
		return;
	half_adder_r( a >> 1, b >> 1, cout, sum );
	cout = a & b;
	sum = sum + cout;
}
endmodule
