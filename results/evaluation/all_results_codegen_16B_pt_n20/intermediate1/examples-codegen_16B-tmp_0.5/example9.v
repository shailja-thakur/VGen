// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_in, carry_out, sum_in;

// This is the logic that performs the addition.
// The inputs to the logic are a and b.
// The outputs are cout, sum, and carry_out.
module half_adder_logic( 
input a, b,
output cout, sum, carry_out );

// This is the logic that performs the carry-in.
// The inputs are cout and sum.
// The outputs are carry_out and sum_in.
module half_adder_carry_in( 
input cout, sum,
output carry_out, sum_in );

// This is the logic that performs the carry-out.
// The inputs are cout and sum.
// The outputs are cout and sum.
module half_adder_carry_out(
input cout, sum,
output carry_out, sum);

endmodule
