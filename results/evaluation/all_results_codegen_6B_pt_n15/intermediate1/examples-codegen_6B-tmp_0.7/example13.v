// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

half_adder( 0, 0, cout, sum );

sum:
    if ( sum > 0x7 ) {
        sum = 0x8 | ( sum & 0x7 );
    } else {
        sum <<= 1;
    }
    sum += a;
    sum += b;
    sum >>= 1;
    sum &= 0x7;
    if ( sum > 0x7 ) {
        sum = 0x8 | ( sum & 0x7 );
    }
    cout = sum;
endhalf_adder

// This is a full adder. A full adder adds two bits and produces a sum.
module full_adder( 
input a, b,
output cout, sum );

full_adder( 0, 0, cout, sum );

sum:
    sum += a;
    sum += b;
endmodule
