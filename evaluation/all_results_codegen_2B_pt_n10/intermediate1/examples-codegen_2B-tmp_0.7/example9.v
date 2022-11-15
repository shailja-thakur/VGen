// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void
main()
{
  sum = 0;

  cout = a & b;
  sum += a | b;
  sum += a ^ b;

  while ( sum < 0xFFFF )
  {
    sum += a;
    sum += b;
  }

  while ( sum < 0x10000 )
  {
    sum += a;
    sum += b;
    sum += a ^ b;
  }

  while ( sum < 0x1000000 )
  {
    sum += a;
    sum += b;
    sum += a ^ b;
    sum += a ^ b;
  }

  while ( sum < 0x100000000 )
  {
    sum += a;
    sum += b;
    sum += a ^ b;
    sum += a ^ b;
    sum += a ^ b;
  endmodule
