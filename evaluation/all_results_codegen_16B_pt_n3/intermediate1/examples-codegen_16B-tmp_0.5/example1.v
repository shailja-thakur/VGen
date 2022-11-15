// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a, b, cout, sum;

assign a = a + b;
assign b = a;
assign sum = a;

endmodule
