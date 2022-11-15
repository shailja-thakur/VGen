// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a, b, cin;
wire sout, carry_out;

// This is a full adder. A full adder adds all four bits and produces an output.
module full_adder( 
input a, b, 
output cout );

wire a, b, cin;
wire sout;

// The carry-in is the number of bits that were added to the sum.
// It is determined by the carry-out.
wire carry_in;

// The carry-out is the number of bits that were added to the sum.
// It is determined by the carry-in.
wire carry_out;

// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
wire half_adder_output;

// This is a full adder. A full adder adds all four bits andendmodule
