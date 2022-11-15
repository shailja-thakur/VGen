// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Whenever we write "assign" it's just shorthand for writing
// creating (a wire)?= logic within a module. The output wires CANNOT be
// defined within modules.
assign sum = a ^ b; // xor (a and b) and then xor (a and xor (b and cin) so that up is only when a>b. Otherwise up is 0.
assign cout = a & b; // logic AND

endmodule
