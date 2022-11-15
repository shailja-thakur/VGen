// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// This is the function that adds two bits.
assign sum = a ^ b;
// The carry-out is the bit that remains if you add a and b.
assign cout = a & b;
endmodule
