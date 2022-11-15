// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-in.
module full_adder( 
input a, b,
output cout, sum );

// The subtracter is used for add in the two half-adder and full adder modules.
module subtracter( 
input a, b,
output cout, sum );

// This is a half subtracter. A half subtracter subtracts two bits and produces a sum and carry-out.
module half_subtractor( 
input a, b,
output cout, sum );

// This is a full subtracter. A full subtracter subtracts two bits and produces a sum and carry-in.
module full_subtractor( 
input a, b,
output cout, sum );

// These are the two signed integer addition and subtraction modules.
module adderendmodule
