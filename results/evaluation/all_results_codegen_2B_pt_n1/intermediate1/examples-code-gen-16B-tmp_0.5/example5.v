// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The following line tells Quartus that the sum output is a function of the inputs a and b.
assign sum = a ^ b; // xor
assign cout = a & b; // and

endmodule
