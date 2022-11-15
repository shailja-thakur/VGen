// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
a_buf b_bit_nb( a, bottom_bit_in );
and a_and_b ( w1, bottom_bit_in, b );
xor a_xor_b ( w2, a, bottom_bit_in );
or a_or_b ( w3, w1, w2 );
buf b_buf ( cout, w3 );
assign sum = a ^ b;
endmodule
