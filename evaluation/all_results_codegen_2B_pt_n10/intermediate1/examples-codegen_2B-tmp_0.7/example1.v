// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// prepare inputs
reg a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;

// on inputs
reg carry_out;

// on outputs
reg sum;

// Local variables
reg T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18;

assign a1 = a >> 1;
assign a2 = a1 & 0x1;
assign carry_out = a1 >> 1; // carry-out
assign a3 = a2 & 0x1;
assign a4endmodule
