// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input cin;
output operand_cout;

always @ (posedge clk)
{
  operand_cout = a + b;
  sum = discard_sum(sum);
  cout = a + b + sum[31];
}


endmodule
