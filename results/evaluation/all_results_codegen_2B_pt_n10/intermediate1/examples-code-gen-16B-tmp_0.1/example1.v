// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

// The first XOR gate computes the sum.
xor( w1, a, b );
assign sum = w1;

// The second XOR gate computes the carry-out.
xor( w2, a, b );
assign cout = w2;

endmodule
