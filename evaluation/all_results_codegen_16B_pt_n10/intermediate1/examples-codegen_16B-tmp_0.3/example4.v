// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire carry_out;
wire sum;

assign cout = sum + carry_out;
assign carry_out = a[0] + b[0] + (sum[0] == 0);
assign sum = a[1] + b[1] + carry_out;

endmodule
