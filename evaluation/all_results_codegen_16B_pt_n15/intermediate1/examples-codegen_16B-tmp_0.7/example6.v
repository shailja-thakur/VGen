// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
input a, b;
output sum;

wire sum_out;

reg carry_out = 1;
reg carry_in = 1;

wire sum_in;

assign sum = sum_out;

assign sum_out = carry_out | (carry_in & ((a & b) | (a ^ b)));

endmodule
