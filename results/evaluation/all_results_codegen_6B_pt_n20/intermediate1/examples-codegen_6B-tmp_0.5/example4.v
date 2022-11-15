// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

def half_adder( a, b, cout, sum ):
    sum = add( a, b, cout, sum )
    cout = shift_left( cout )
    return cout, sum

endmodule
