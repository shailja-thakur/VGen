// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire cout;

xor xor1( sum, a, b );
and and1( cout, a, b );

endmodule
