// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Create wires to connect each half adder to the other half adder.
wire p, q;

// Create instances of the half adders each with a unique name.
half_adder ha1(.a(a), .b(b), .cout(p), .sum(sum));
half_adder ha2(.a(p), .b(q), .cout(cout), .sum(sum));

endmodule
