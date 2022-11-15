// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	
	// Caculate sum - contents of one adder is ANDed with the other adder's 
	// carry-in. The carry-out is ORed with the other adder's sum
	assign sum = a ^ b;

	// OR is short-circuited. The two assignments form one full adder.
	assign cout = a & b; //(a & b) is actually ((a xor b) xor 1).
	
endmodule
