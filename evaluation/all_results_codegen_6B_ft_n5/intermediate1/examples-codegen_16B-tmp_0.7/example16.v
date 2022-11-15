// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 
 
//This uses two full adders, one with each operand.
assign sum = a ^ b;
assign cout = a & b;
 
endmodule
