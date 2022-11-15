// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The carry-out bit is used to indicate if it was a sum or carry-out.
module carry_out( 
input a, b,
output cout, sum, carry );

module half_adder_adder(
input a, b,
output cout, sum, carry );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum, carry );

// The carry-out bit is used to indicate if it was a sum or carry-out.
module carry_out_full( 
input a, b,
output cout, sum, carry );

// This is a half subtractor. A half subtractor subtracts two bits and produces a sum and carry-out.
module half_subtractor( 
input a, b,endmodule
