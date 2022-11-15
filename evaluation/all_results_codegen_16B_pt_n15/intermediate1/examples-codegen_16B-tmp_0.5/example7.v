// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, cin, carry_out;

assign a_in = a;
assign b_in = b;
assign sum_out = a_in + b_in;

assign cout = sum_out;
assign carry_out = sum_out[7];

endmodule
