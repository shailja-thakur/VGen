// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, cin;
wire sum_out, cout_out;

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum );

wire a_in, b_in, c_in, d_in, cout_out, sum_out;

// This is a half adder with carry-in. A half adder adds two bits and produces a sum and carry-out.
module half_adder_with_carryin( 
input a, b, c_in,
output cout, sum );

wire a_in, b_in, cin, cout_out, sum_out;

// This is a full adder with carry-in. A full adder adds three bitsendmodule
