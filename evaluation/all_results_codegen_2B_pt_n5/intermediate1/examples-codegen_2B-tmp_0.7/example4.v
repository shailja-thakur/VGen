// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void half_adder_user_fun( 
input a, b, output cout,
output sum )
{
  do
  {
    sum += (a & 0x1) + (b & 0x1);
    sum += (a & 0x2) + (b & 0x2);
    sum += (a & 0x4) + (b & 0x4);
    sum += (a & 0x8) + (b & 0x8);
    sum += (a & 0x10) + (b & 0x10);
    sum += (a & 0x20) + (b & 0x20);
    sum += (a & 0x40) + (b & 0x40);
    sum += (a & 0x80) + (b & 0x80);
    a >>= 1;
    b >>= 1;
endmodule
