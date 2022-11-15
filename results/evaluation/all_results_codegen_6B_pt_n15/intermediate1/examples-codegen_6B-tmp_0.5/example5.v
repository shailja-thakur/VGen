// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum, carry_out );

// This is a carry-out generator. The carry-out is the bit in the carry-out register.
module carry_out_generator( 
input cout,
output carry_out );

// This is a carry-out register. The carry-out register is a single bit register.
module carry_out_register( 
input cout,
output carry_out );

// This is a full adder. The full adder adds two inputs and produces a sum and carry-out.
module full_adder_2( 
input a, b,
output cout, sum, carry_out );

// This is a carry-out generator. The carry-endmodule
