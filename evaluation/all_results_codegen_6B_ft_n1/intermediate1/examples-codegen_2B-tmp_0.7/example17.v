// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
input cin,
output cout, sum );

// Half-adder operators are same as full-adder operators, except that
// the program will not factor them in half.
module half_adder_ops( 
input a, b,
output cout, sum );

// The full adder operators are the same as the half adder operators,
// except that the program will not factor them in half.
module full_adder_ops( 
input a, b,
input cin,
output cout, sum );

// This is the quarter-adder, which adds four bits and produces a sum and carry-out.
module quarter_adder( 
input a, b, c, d,
output cout,endmodule
