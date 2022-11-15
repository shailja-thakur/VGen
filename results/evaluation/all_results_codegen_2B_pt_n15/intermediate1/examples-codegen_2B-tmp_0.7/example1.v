// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a subroutine to implement a full adder.
module full_adder( 
input a, b,
output cout, sum, carry );

// This is the full adder
module full_adder(
input a, b,
input a_out, b_out,
output cout, sum, carry,
wire reset);


module full_adder( 
input a, b,
input a_out, b_out,
output cout, sum, carry,
wire reset );

// This is the incrementer
module incrementer( 
input a, b,
input a_out, b_out,
output cout, sum, carry,
wire reset);

// This is the decrementer
module decrementer( 
input a, b,
input a_out, b_out,
output cout, sum, carry,
wireendmodule
