// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


// This is a half subtractor. A subtractor subtract two bits and produces a sum.
module half_subtractor( 
input a, b, 
output cout, sum );


// This module computes a 16 bit unsigned half-carry number.
module unit_run( input s4p,
              output c, a, b );

#endmodule
