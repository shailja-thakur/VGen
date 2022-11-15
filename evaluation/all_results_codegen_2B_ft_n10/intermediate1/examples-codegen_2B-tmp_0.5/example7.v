// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire w1, w2, w3;
xor( w1, a, b );
xor( sum, w1, w2 );
and( w2, w1, b );
and( w3, w1, a );
or( cout, w3, w2 );
endmodule
