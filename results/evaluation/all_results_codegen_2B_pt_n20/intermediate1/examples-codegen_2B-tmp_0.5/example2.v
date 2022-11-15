// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Add two bits and produce carry-out.
module adder( 
input a, b,
output cout, sum );

// A carry-out is a carry-in.
module carry_out( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two words and produces a sum and carry-out.
module full_adder( 
input a, b,
input c, d,
output cout, sum );

// Add two words and produce carry-out.
module adder( 
input a, b,
input c, d,
output cout, sum );

// A carry-out is a carry-in.
module carry_out( 
input a, b,
input c, d,
output cout, sum );

// This is a subtractor. A subtractor subtractendmodule
