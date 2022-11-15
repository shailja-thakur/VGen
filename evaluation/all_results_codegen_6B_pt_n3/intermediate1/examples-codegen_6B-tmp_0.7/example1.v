// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

def half_adder( a, b, cout, sum ):
    sum += a + b;
    cout = ( a + b ) & 0x1;
    return cout, sum;

def main():
    a = 0x3;
    b = 0x4;
    cout, sum = half_adder( a, b );
    print( cout, sum );
    assert( cout == 0x3 );
    assert( sum == 0x7 );

    a = 0x2;
    b = 0x3;
    cout, sum = half_adder( a, b );
    print( cout, sum );
    assert( cout == 0x2 );
    assert( sum == 0x8 );

    a = 0x1;
    b = 0x0;
    cout, sum = half_adder( a, b );
endmodule
