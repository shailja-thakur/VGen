// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

half_adder( a, b, cout, sum )
{
    int sum = a + b;
    cout = sum;
    sum = sum & 0x7;
    sum = sum << 1;
    sum = sum + b;
    sum = sum & 0x7;
    sum = sum << 1;
    sum = sum + a;
    sum = sum & 0x7;
    sum = sum << 1;
    sum = sum + b;
    sum = sum & 0x7;
    sum = sum << 1;
    sum = sum + a;
    sum = sum & 0x7;
    sum = sum << 1;
    sum = sum + b;
    sum = sum & 0x7;
    sum = sum << 1;
    sum = sum + a;
    sum = sum & 0x7;
    endmodule
