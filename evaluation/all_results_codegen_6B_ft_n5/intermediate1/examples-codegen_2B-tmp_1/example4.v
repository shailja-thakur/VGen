// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire a_b, c_sum;
xor( a_b, a, b );
xor( sum, a_b, c_sum );
and( cout, a_b, c_sum );
endmodule
