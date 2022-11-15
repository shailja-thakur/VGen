// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a carry only adder. A carry only adder adds two bits and produces a sum and carry-out.
module carry_only_adder(
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder(
input a, b,
output cout, sum,
output carry_out );

// This is a carry and a half adder. A carry and half adder adds two bits and produces a sum and carry-out.
module half_carry_adder(
input a, b,
output cout, sum,
output carry_out );

// This is a carry and a fully adder. A carry and fully adder adds two bits and produces a sum and carry-out.
module full_carry_adder(
input a, b,endmodule
