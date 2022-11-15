// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


// This is a full adder. A full adder adds two byte-sized values and produces a sum and carry-out.
module full_adder( 
input a, b,
input carry,
output cout, sum );


// This is a carry-less subtractor. A carry-less subtractor subtracts two byte-sized values and produces a carry-out.
module carry_less_subtractor( 
input a, b,
input carry,
output cout, sum );


// This is a carry-less subtractor. A carry-less subtractor subtracts two byte-sized values and produces a carry-out.
module add_to_carry_less_subtractor( 
input a, b,
input carry,
output cout, sum );
endmodule
