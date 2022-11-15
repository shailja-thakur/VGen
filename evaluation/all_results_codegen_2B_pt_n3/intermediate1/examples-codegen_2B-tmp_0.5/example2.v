// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_in, b_in;
output cout_out, sum_out;

input a_clk, b_clk;
output cout_clk, sum_clk;

input a_rst, b_rst;
output cout_rst, sum_rst;

void add_clk_proc( void )
{
  if ( a_clk == 1 )
  {
    sum_out = 0;
    sum_out = sum_out + a_in;
    sum_out = sum_out + b_in;
    cout_out = 1;
  }
  else
  {
    sum_out = sum_out + a_in;
    sum_out = sum_out + b_in;
    cout_out = 1;
  }
}

void add_endmodule
