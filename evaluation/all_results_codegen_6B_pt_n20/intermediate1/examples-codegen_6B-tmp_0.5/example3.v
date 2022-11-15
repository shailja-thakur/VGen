// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_dut( 
input a, b,
output cout, sum );

half_adder( 1, 0, 1, 1 );
half_adder( 1, 1, 1, 0 );
half_adder( 0, 1, 0, 1 );
half_adder( 1, 1, 1, 1 );
half_adder( 1, 1, 0, 1 );
half_adder( 1, 1, 0, 0 );
half_adder( 0, 1, 1, 1 );
half_adder( 0, 1, 1, 0 );
half_adder( 0, 1, 0, 1 );
half_adder( 1, 1, 1, 1 );
half_adder( 1, 1, 0, 1 );
half_adder( 1, 1, 0, 0 );
half_adder( 0, 1, 1, 1 );
half_adder( 0,endmodule
