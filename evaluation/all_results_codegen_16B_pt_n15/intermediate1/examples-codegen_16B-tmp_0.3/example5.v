// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, cin, cout_in, sum_in;

// This is a full adder. A full adder adds four bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum );

wire a_in, b_in, c_in, cout_in, sum_in;

// This is a full adder with carry-in. A full adder adds four bits and produces a sum and carry-out.
module full_adder_with_carry_in( 
input a, b, c, cin,
output cout, sum );

wire a_in, b_in, c_in, cout_in, sum_in;

// This is a full adder with carry-in and carry-out. A full adder adds four bitsendmodule
