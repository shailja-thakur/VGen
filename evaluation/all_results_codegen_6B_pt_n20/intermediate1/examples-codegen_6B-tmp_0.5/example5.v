// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_module( a, b )
endfunction

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

function full_adder_module( a, b )
endfunction

// This is a carry-out only adder. A carry-out only adder adds two bits and produces a sum.
module carry_out_adder( 
input a, b,
output cout, sum );

function carry_out_adder_module( a, b )
endfunction

// This is a carry-out only half adder. A carry-out only half adder adds two bits and produces a sum.
module half_carry_out_adder( 
input a, b,
output cout, sum );

functionendmodule
