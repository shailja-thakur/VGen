// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire w1, w2;

// Create a XOR gate for the sum
xor_gate xor_sum( .a(a), .b(b), .y(sum) );

// Create an AND gate for the carry-out
and_gate and_cout( .a(a), .b(b), .y(cout) );

endmodule
