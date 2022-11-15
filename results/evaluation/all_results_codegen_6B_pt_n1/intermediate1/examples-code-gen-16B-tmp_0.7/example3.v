// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire s, c;

// We use an XOR gate to compute the sum.
xor(s, a, b);

// We use an AND gate to compute the carry-out.
and(c, a, b);

// We assign the signals s and c to the output signals.
assign sum = s;
assign cout = c;

endmodule
