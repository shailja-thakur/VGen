// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The normal half adder adds two bits and produces a sum.
module normal_adder(
input a, b,
output cout, sum );

// This is a subtracter. A subtracter subtracts two bits and produces a sum and carry-out.
module subtracter( 
input a, b,
output cout, sum );

// The normal subtracter subtracts two bits and produces a sum.
module normal_subtractor(
input a, b,
output cout, sum );

// The normal multiplyer adds two bits and produces a sum and carry-out.
module normal_multiplier( 
input a, b,
output cout, sum );

// This is a multiplyer. A multiplyer multiplies two bits and produces a sum.
module multiplier( 
input a, b,
output cout, sum );

// This is a divider.endmodule
