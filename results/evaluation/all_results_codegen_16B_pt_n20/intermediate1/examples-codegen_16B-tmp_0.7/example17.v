// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_out, b_out;
wire sum_out;

reg a_in;
reg b_in;

reg sum_out_reg;
reg a_in_reg;
reg b_in_reg;

void half_adder( 
input a, b, 
output cout, sum ) 
{
  a_out = a;
  b_out = b;
  sum_out = sum_out_reg;
  a_in_reg = a_in;
  b_in_reg = b_in;
  sum_out_reg = sum_out;

  assign a_out = a_in_reg;
  assign b_out = b_in_reg;
  assign sum_out = sum_out_reg;
  assign a_in_reg = a_out + bendmodule
