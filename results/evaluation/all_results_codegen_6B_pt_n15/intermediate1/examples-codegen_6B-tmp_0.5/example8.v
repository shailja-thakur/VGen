// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_impl()
end


// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

function full_adder_impl()
end

// This is a carry-out shifter. It shifts the carry-out bit and
// produces a result.
module carry_out_shifter( 
input cout,
output cout_shifted, result );

function carry_out_shifter_impl( cout )
end

// This is a half carry-out shifter. It shifts the half carry-out bit and
// produces a result.
module half_carry_out_shifter( 
input cout,
output cout_shifted, result );

function half_carry_out_shifter_impl( coutendmodule
