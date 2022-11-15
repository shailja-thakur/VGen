// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder is a 4-bit ripple-carry adder with carry-out.
// It uses two half adders.
// A full adder can be described as follows:
// 1. Use two half adders to create a 4-bit carry-out.
// 2. Add the carry-outs.
// 3. The carry-out is the carry-in to the next full adder.

assign sum = a ^ b;
assign cout = a & b;

endmodule
