// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// This is a full subtractor. 
// Full subtractor is just a full adder where b is subtracted from a.
adder adder1( a, ~b, 1, sum, cout );
endmodule
