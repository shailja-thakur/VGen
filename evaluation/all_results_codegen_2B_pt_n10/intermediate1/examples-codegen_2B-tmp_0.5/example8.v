// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum );

// This is a half subtracter. A half subtracter subtracts two bits and produces a sum and carry-in.
module half_sub( 
input a, b,
output cout, sum );

// This is a full subtracter. A full subtracter subtracts three bits and produces a sum and carry-in.
module full_sub( 
input a, b, c,
output cout, sum );

// This is a half xor. A half xor xor two bits and produces a sum and carry-out.
module half_xor( 
input a, b,
output cout, sum );

// This is a full xor. A fullendmodule
