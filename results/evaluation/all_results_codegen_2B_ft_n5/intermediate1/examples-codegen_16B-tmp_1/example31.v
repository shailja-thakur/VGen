// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// instantiation
xor gates ( sum, a , b );
and gates ( cout, a, b );
endmodule
