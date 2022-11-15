// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two words and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum, carry );

// This is a half subtractor. A half subtractor subtracts two bits and produces a difference and carry-in.
module half_sub( 
input a, b,
output dout, diff );

// This is a full subtractor. A full subtractor subtracts two words and produces a difference and carry-in.
module full_sub( 
input a, b,
output dout, diff, carry );

// This is a half multiply. A half multiply multiplies two bits and produces a product and carry-out.
module half_mul( 
input a, b,
output cout, prod );

// This is a full multiply. A full multiplyendmodule
