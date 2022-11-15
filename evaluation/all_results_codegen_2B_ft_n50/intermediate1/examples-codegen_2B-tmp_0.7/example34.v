// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
	// Half Adders have 2 inputs, and a carry-in. 
	// For any input, the carry-in is the same as the sum.
	// Half Adder has an output.
	
	// 1:1 mux decision
	// sum output is a 1 bit. cout output is a 0 bit.
	assign sum = (a^b) & b;
	assign cout = a & b;
endmodule
