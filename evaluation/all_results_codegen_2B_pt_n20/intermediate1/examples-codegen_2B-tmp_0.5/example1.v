// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_in, b_in;
input cout_in, sum_in;

reg a_reg;
reg b_reg;
reg cout_reg;
reg sum_reg;

void half_adder_proc()
{
  a_reg = a;
  b_reg = b;
  cout_reg = cout;
  sum_reg = sum;
  
  do
  {
    a_reg = a_in;
    b_reg = b_in;
    
    sum_reg = 0;
    sum_reg = sum_reg + a_reg;
    sum_reg = sum_reg + b_reg;
    sum_reg = sum_reg + cout_reg;
    
    cout_reg = sum_reg;
    cout_reg = cout_reg >> 1;
    
    endmodule
