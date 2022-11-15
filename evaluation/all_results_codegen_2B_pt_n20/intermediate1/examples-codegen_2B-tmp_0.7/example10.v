// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b,
input cout, sum;

input carry_out;

assign cout = a | (b << 1) | carry_out;
assign sum = cout | ((a & b) << 1);

assign carry_out = sum >> 2;

endmodule
