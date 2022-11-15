// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_in, b_in, cout_in;

initial
{
  a_in <= (a > 0x7f);
  b_in <= (b > 0x7f);
  cout_in <= 0;
}

always @(posedge clk)
{
  if (clk == 0)
  {
    cout <= 0;
    sum <= 0;
    sum_carry_out <= 0;
  }
  else
  {
    cout <= cout_in;
    sum <= a + b;
    sum_carry_out <= sum_carry_in;
  }
}

// This is a full adder. A full adder adds two words and produces a sum and carry-out.
module full_adder( 
input a_in, b_in,
output cout, sum );endmodule
