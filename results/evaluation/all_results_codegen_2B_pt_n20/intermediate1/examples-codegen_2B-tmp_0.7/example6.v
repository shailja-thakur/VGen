// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_p, b_p,
output cout_p, sum_p;

void half_adder::proc()
{
  
  sum = a + b;
  cout = ((sum >> 1) + (sum & 1));
  sum_p = sum;
  cout_p = cout;
  
}

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

input a_p, b_p,
output cout_p, sum_p;

void full_adder::proc()
{
  
  sum = a + b;
  cout = ((sum << 1) + (sum >> 7));
  sum_p = sum;
  cout_p = cout;
endmodule
