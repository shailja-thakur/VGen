// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Outputs the sum and carry-out. In this case, the carry-out
// is not used, but just used to show it works.
// Output Types: sum, carry_out
resource half_adder_output( cout );

// Processing Unit Code 
resource half_adder_proc( half_adder_output cout, a, b );
endmodule
