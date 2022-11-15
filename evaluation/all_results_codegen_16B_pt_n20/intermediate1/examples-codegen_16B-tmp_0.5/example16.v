// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire cin, sum, cout, carry;

half_adder( a, b, cout, sum ) {
  cin = a | b;
  sum = cin + carry;
  carry = ( cin > ( a | b ) ) ? 1 : 0;
  cout = sum;
}

endmodule
