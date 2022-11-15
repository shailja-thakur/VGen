// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This uses the dataflow modelling style.
assign sum = a ^ b; // XOR gate
assign cout = a & b; // AND gate

endmodule
