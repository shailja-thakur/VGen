// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Declare the wires here
wire s0, c0;

// Create the half adder
half_adder_structural U1 (.a(a), .b(b), .s0(s0), .c0(c0));

// Create the output structurally
half_adder_structural U2 (.a(s0), .b(1'b0), .sum(sum), .cout(cout));

// Or you could simplify the circuit by using assign statements
// assign {cout, sum} = a + b;

endmodule
