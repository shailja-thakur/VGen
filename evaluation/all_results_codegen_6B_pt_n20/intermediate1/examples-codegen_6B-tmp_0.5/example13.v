// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a;
input b;

output cout;
output sum;

// This is a full adder. A full adder adds two bits and produces a sum.
module full_adder( 
input a, b,
output cout, sum );

input a;
input b;

output cout;
output sum;

// This is a carry-out adder. A carry-out adder adds two bits and produces a sum.
module carry_out_adder( 
input a, b,
output cout, sum );

input a;
input b;

output cout;
output sum;

// This is a carry-out carry-out adder. A carry-out carry-out adder adds two bits and produces a sum.
module carry_out_carry_out_adder( 
input a, b,
output cout, sum );
endmodule
