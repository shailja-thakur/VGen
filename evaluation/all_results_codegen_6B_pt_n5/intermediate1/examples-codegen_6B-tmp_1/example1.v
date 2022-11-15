// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
`octonion_half_adder( Signal_I, Signal_B );

art.pure
function half_adder_cout is half_adder.cout;
`octonion_half_adder_cout( c );

func half_adder_sum(
input a, b,
output cout, sum 
);
half_adder_sum_input a, b, c;
`octonion_half_adder_sum( x, y );
a = To_Octonion_Cell(11, 13, 14);
b = To_Octonion_Cell(16, 23, 31);
Carrier C = half_adder_sum(a, b, c.cout, c.sum);
Console.WriteLine( C.C );

agca( 32, 56789 );

Console.WriteLine("Some typed interface works in 68kendmodule
