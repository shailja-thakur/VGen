// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Add two bit values and give a carry out.
xor(
 ab, a, b
, cout, sum
);


endmodule
