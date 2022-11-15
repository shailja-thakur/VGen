// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

int main( void )
{
  half_adder a, b, c;

  a = 0b00110000;
  b = 0b00000111;

  cout = 0;
  sum = 0;

  c = half_adder( a, b, cout, sum );

  if( cout == 1 )
    cout = 0;
  else
    cout = 1;

  if( sum == 0b00001000 )
    cout = 1;
  else
    cout = 0;

  return 0;
}
endmodule
