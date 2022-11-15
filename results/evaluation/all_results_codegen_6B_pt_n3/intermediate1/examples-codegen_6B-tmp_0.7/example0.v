// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
output half_adder.sum;
output half_adder.carry;
defines half_adder > ( a, b, cout, sum, carry );

net half_adder_net =
{ half_adder > ( a, b, cout, sum, carry ),
  { cout, sum } };

// The full adder is a sum and carry. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum, carry );
output full_adder.carry;
output full_adder.sum;
defines full_adder > ( a, b, cout, sum, carry );

net full_adder_net =
{ full_adder > ( a, b, cout, sum, carry ),
  { cout, sum, carry } };

//****************************************************************************80

void run_endmodule
