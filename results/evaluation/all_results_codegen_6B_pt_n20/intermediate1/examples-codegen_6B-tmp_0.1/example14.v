// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a half subtracter. A half subtracter subtracts two bits and produces a sum and carry-out.
module half_subtracter( 
input a, b,
output cout, sum );

// This is a full subtracter. A full subtracter subtracts two bits and produces a sum and carry-out.
module full_subtracter( 
input a, b,
output cout, sum );

// This is a half subtracter. A half subtracter subtracts two bits and produces a sum and carry-out.
module half_subtracter_with_carry( 
input a, b,
output cout, sum,
output carry );endmodule
