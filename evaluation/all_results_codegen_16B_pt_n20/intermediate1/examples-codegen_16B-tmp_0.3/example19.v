// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, cout_in, sum_out, carry_out;

void half_adder( 
input a, b,
output cout, sum )
{
  sum_out = a + b;
  carry_out = sum_out[0] + sum_out[1];
  cout_in = carry_out;
  cout = cout_in;
}

endmodule
