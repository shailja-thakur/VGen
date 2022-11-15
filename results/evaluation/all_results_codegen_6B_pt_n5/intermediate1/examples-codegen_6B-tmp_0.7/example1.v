// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

output_wire cout;
input_wire a, b;

assign cout = sum;
assign sum = a + b;
endmodule
