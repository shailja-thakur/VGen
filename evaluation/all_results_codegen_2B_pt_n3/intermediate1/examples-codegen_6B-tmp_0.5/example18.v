// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

#include "half_adder.verilog"

#include <cstdio>
#include <cstdlib>
#include <cmath>

void main()
{
	half_adder h;

	h.a( 1, 2 );
	h.b( 3, 4 );
	h.cout( 5, 6 );

	printf( "a = %d, b = %d, cout = %d, sum = %d\n", h.a, h.b, h.cout, h.sum );

	h.a( 7, 8 );
	h.b( 9, 10 );
	h.cout( 11, 12 );

	printf( "a = %d, b = %d, cout = %d, sum = %d\n", h.a, h.b, h.cout, h.sumendmodule
