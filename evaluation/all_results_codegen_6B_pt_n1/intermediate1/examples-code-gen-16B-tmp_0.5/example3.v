// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2, w3;

// The first gate is an XOR gate, which is a logic gate that outputs 1 if the inputs are different, and 0 if they are the same.
xor ( w1, a, b );

// The second gate is an AND gate, which is a logic gate that outputs 1 if both inputs are 1.
and ( w2, a, b );

// The third gate is an OR gate, which is a logic gate that outputs 1 if at least one input is 1.
or ( w3, w1, w2 );

// The last two lines connect the wire w1 to the output cout, and the wire w3 to the output sum.
assign cout = w1;
assign sum = w3;

endmodule
