// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire c1, c2;

and g1( c1, a, b );
xor g2( sum, a, b );
or g3( cout, c1, c2 );

endmodule
