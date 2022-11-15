// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Create the sum and carry wires
wire sum_and_cout, carry_and_cout;

// Create the sum and carry wires

// Create the carry-in and carry-out wires
wire carry_in_and_carry_out, carry_in_carry_out;

// Create the carry-in and carry-out wires

// Create the full adder
full_adder adder( .a(a), .b(b), .cin(carry_in_and_carry_out), .sum(sum_and_cout), .cout(carry_and_cout) );

// Create the carry-in and carry-out wires
assign carry_in_and_carry_out = carry_in | carry_and_cout;
assign carry_in_carry_out = carry_in & carry_and_cout;
endmodule
