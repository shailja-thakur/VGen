// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

and( c1, a, b );
and( c2, a, cin );
and( c3, b, cin );
or( cout, c1, c2, c3 );
xor( sum, a, b, cin );
endmodule
