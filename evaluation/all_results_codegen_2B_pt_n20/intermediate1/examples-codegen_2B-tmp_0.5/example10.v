// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is an adder with a carry-in.
module adder_with_carry( 
input a, b,
input carry,
output cout, sum );

// This is a subtractor. It subtracts two bits and produces a sum and carry-out.
module subtractor( 
input a, b,
output cout, sum );

// This is an adder with an output.
module adder_with_output( 
input a, b,
output cout, sum );

// This is a subtractor with an output.
module subtractor_with_output( 
input a, b,
output cout, sum );

// This is anendmodule
