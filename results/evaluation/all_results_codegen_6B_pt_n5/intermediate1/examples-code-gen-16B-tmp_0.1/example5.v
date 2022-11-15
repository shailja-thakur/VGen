// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

// The XOR gate is used to produce the sum.
xor( w1, a, b );

// The AND gate is used to produce the carry-out.
and( w2, a, b );

assign sum = w1;
assign cout = w2;

endmodule
