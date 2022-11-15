// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

#define D_FORMAT "%d:%d\n"

void half_adder(
input a, b,
output cout, sum )
{
    for( int i = 0; i < 8; i++ )
        sum <<= 1;
    
    sum += a + b;
    cout << sum;
    if( sum < 128 )
        cout << " ";
    else
        cout << "\n";
}

int main()
{
    half_adder( 0x01, 0x10, cout, sum );
    half_adder( 0x00, 0x00, cout, sum );
    half_adder( 0x11, 0x00, cout, sum );
    half_adder( 0x00, 0x11, cout, sum );
    half_adder( 0x00, 0x00, coutendmodule
