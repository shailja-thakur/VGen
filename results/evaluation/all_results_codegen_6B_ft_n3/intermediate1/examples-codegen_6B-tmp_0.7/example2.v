// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign #1 cout = a&b;
assign #1 sum = a^b;

endmodule
