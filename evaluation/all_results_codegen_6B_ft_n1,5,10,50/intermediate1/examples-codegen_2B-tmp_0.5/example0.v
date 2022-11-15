// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @( posedge clk )
{
  sum = 0;
  if ( a == 0 && b == 0 )
  {
    cout = 0;
  }
  else if ( a == 0 )
  {
    sum = b;
    cout = 1;
  }
  else if ( b == 0 )
  {
    sum = a;
    cout = 1;
  }
  else
  {
    sum = a + b;
    cout = 0;
  }
}
endmodule
