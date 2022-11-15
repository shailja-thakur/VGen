// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds a word and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// Constant vector input.
module constant_vector_adder(
input a, b,
output cout, sum );



// ------------------------------------------------------------
// Saturating adder
// Each result is one bit wider than the input.
// The carry/borrow bit is always the rightmost bit.
// ------------------------------------------------------------

// saturating adder
module saturating_adder(
input a, b,
output cout, sum );

// saturating adder
module saturating_adder_2(
input a, b,
output cout, sum );

// saturating adder
module saturating_adder_3(
input a, b,
output cout, sum );endmodule
