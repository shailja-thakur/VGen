// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

integer i0, i1, i2, i3, i4;

begin:
    i0 = a + b;
    cout = i0;

    i1 = i0 + i0;
    sum = i1;
    if ( i1 > i0 )
        goto carry;
    
    i2 = i1 + i0;
    sum = i2;
    if ( i2 > i1 )
        goto carry;
    
    i3 = i2 + i0;
    sum = i3;
    if ( i3 > i2 )
        goto carry;
    
    i4 = i3 + i0;
    sum = i4;
    if ( i4 > i3 )
        goto carry;
    
    cout = i4;
    goto finish;

carryend
endmodule
