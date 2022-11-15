// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire xor1;
assign xor1 = a^b;
assign sum = xor1^b;
assign cout = a&b;

endmodule
