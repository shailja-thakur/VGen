// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_create( cout, sum )

    cout |= a;
    cout |= b;
    sum   |= (cout>>32);
};


//===== fully_adder =====//
//Full adder

function fully_adder( 
input a, b,
output cout, sum )

    half_adder( a, b, cout, sum );
    if( cout["1"] == "1" ) {
        half_adder( a, zero_bit, cout, sum ); 
    }
    half_adder( b, zero_bit, cout, sum ); 

function fully_adder_create( cout, sum )

    half_adder_create( cout, sum );
    if( cout["1"] == "1" ) {
        half_adder_create( a, sum ); 
    }
    endmodule
