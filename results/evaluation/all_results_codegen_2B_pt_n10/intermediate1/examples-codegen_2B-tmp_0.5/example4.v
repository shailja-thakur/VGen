// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_index, b_index,
output a_out, b_out,
output sum_out, carry_out;

void
main()
{
  // Inputs
  a_out = a_index = 0;
  b_out = b_index = 0;
  sum_out = carry_out = 0;
  
  // Outputs
  cout = sum_out;
  
  // Process
  while( a_index < (sizeof(a) * 8) )
  {
    // Add A to B
    sum_out = a_out + b_out;
    carry_out = sum_out >> 32;
    
    // Add A to B
    a_out = a_index < (sizeof(a) * 8) ? a[a_index] : 0;
    b_out =endmodule
