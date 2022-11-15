// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input alpha, beta;
input sum_in, carry_in;

reg a_reg;
reg b_reg;
reg sum_reg;
reg carry_reg;

always_comb
{
  a_reg = a;
  b_reg = b;
  sum_reg = sum;
  carry_reg = carry_in;
}

always_comb
{
  sum_reg = sum_reg + alpha;
  carry_reg = carry_reg + beta;
  sum_reg = sum_reg & 0xffff;
  carry_reg = carry_reg & 0x1;
  sum_reg = sum_reg & 0xffff;
  sum_reg = sum_reg + carry_reg;
  cout = sum_reg;
}
endmodule
