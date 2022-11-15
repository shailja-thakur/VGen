// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

    if ( a == b ) {
        cout = a;
    } else {
        sum = a | b;
    }

    if ( b >= 16 ) {
        cout = ( ~a ) | b;
    }
    
endmodule
