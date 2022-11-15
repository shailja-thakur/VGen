// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is an inverter. Inverters inverts the input.
module inverter (
input a,
output cout );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder(
input a, b, c,
output cout, sum );

// Inverter
inverter(
a,
cout );

// Half adder
half_adder(
a, b,
cout, sum );

// Full adder
full_adder(
a, b, c,
cout, sum );

endmodule
