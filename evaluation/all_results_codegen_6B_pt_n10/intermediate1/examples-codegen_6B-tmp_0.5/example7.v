// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

var cin, carry_out;

carry_out <= (a + b + carry_out);

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b, 
output cout, sum );

var cin, carry_out;

carry_out <= (a + b + carry_out);

// This is a subtracter. A subtracter subtracts two bits and produces a sum and carry-out.
module subtracter( 
input a, b,
output cout, sum );

var cin, carry_out;

carry_out <= (a + b - carry_out);

// This is a full subtracter. A full subtracter subtracts two bits and produces a sum and carry-out.
module full_subtractor( endmodule
