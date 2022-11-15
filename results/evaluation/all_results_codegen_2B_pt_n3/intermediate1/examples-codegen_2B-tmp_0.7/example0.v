// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. It takes two inputs and produces a sum and carry-out.
module full_adder( 
input a, b,
input cout, sum, carry );
    
// The following is a local network. It takes two inputs and produces a sum and carry-out.
module local_network( 
input a, b,
input cout, sum, carry );

// The following is a bit-flipper. It takes two inputs and produces a carry in and a sum.
module bit_flipper( 
input a,
input b,
output cout, carry, sum );

// The following is a local network that takes two inputs and produces two outputs.
module local_network_with_two_outputs( 
input a,
input b,
output cout1, cout2, sum, carry );

// The following is a simple local netendmodule
