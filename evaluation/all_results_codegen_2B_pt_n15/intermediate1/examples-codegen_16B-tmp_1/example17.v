// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
 // The output is a 1 bit, so only uses one of the three wires. 
assign sum = a ^ b;
assign cout = a & b; 
endmodule
