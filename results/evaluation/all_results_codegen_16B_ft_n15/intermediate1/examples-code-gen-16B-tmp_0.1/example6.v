// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

and( w1, a, b );
xor( sum, a, b );
or( cout, w1, w2 );

endmodule
