// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
assign #2 cout = a&b;
assign #4 sum = a^b;
endmodule
