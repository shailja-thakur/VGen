// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	assign sum = a ^ b; //a XOR b
	assign cout = a & b; //a AND b
endmodule
