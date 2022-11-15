// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

    // serliza in cout the output of the half adder
    // for the high bit
    output high( cout[ 0 ], cout[ 1 ] );

    // for the middle bit
    bool carry;
    if( a <= b )
        carry = false;
    else
        carry = true;
    
    // for the low bit
    high( cout[ 0 ], high( cout[ 1 ], cout[ 2 ] ) | carry );
        
    // assign the correct sum
    sum = a + b + carry;
    
endmodule
