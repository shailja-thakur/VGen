// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Full adder
assign sum = (a ^ b) ^ (a & b);
assign cout = (a & b) | (a ^ b);
endmodule
