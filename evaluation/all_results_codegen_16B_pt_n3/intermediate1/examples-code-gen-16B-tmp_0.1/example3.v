// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire c1, c2;

// The first XOR gate adds the two bits and produces a sum.
xor( sum, a, b );

// The AND gate produces a carry-out if both inputs are 1.
and( c1, a, b );

// The OR gate produces a carry-out if either input is 1.
or( c2, a, b );

// The AND gate combines the two carry-outs.
and( cout, c1, c2 );

endmodule
