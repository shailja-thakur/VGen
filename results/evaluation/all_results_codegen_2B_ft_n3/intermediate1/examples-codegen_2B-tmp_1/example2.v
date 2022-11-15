// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
// Slave module instantiation
wire s, cout1, cout2;

half_adder( 
 .a(a), .b(b),
 .cout(cout1), .sum(s) );

half_adder(
 .a(s), .b(1'b0),
 .cout(cout2), .sum(sum) );

or ( cout, cout1, cout2);

endmodule
