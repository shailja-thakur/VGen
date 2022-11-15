// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk)
void sum_fcns()
{
  cout = (sum[1] << 4|
         sum[0]);
}

always @(negedge clk)
void out_set_fcns()
{
  sum[2] = (a << 4 | b);
  sum[1] = (sum[1] >> 1);
  sum[0] = (sum[1] >> 1);
}
endmodule
