// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 

//sum = a^b = a xor b
assign sum = a ^ b;

//cout = a&b or a||b
assign cout = (a & b) | (a | b);


endmodule
