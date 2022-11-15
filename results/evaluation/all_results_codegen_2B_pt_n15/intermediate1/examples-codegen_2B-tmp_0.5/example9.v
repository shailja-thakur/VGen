// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-in.
module full_adder( 
input a, b,
output cout, sum );


// The adder to be optimized is the half adder.
// The output is a half adder output.
module half_adder_opt( 
input a, b,
output cout, sum );

// The adder to be optimized is the full adder.
// The output is a full adder output.
module full_adder_opt( 
input a, b,
output cout, sum );

// The carry out is a half adder output.
module half_adder_carry( 
input a, b,
output cout, sum );

// The carry in is a full adder output.
module full_adder_carry( 
input a, bendmodule
