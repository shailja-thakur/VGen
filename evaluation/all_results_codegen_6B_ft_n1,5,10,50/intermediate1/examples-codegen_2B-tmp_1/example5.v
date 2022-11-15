// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

  sum = ( ( a << 1 ) ^ a ) << 1;
  cout(a); cout(sum); auto sum_and_carry = sum & c; cout(sum_and_carry); cout(!sum_and_carry); 
  cout(!(sum & c));
}
endmodule
