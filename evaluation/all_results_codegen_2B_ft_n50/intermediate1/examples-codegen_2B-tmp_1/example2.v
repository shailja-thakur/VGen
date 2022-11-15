// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1;

xor( sum, a, b); 
and( w1, a, b);
or( cout, w1, a );

endmodule
