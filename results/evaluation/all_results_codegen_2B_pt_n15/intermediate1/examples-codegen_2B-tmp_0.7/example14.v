// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is an all-adder. An all-adder adds the inputs and produces a sum.
module all_adder( 
input a, b, c, d,
output cout, sum );

// This is a half-adder. A half-adder adds two bits and produces a sum.
module half_adder( 
input cin, sum );

// This is an all-adder. An all-adder adds the inputs and produces a sum.
module all_adder( 
input a, b,
output cout, sum );

// This is a half-adder. A half-adder adds two bits and produces a sum.
module half_adder( 
input a, b, c,
output cout, sum );

// This is an all-adder. An all-adder adds the inputs and produces a sum.
module all_adder( 
input a, b,endmodule
