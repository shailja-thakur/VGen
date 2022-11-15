// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum, carry );

// This is the carry-in. The carry-in always has two bits.
module carry_in( 
input a, b,
output cout, carry );

// This is the carry-out. The carry-out always has one bit.
module carry_out( 
input a, b,
output cout, carry );

// This is the mask. The mask always has three bits.
module mask( 
input a, b, c,
output cout, carry );

// This is the adder. The adder always has three bits.
module adder( 
input a, b, c,
output cout, sum, carry );

endmodule
