// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire cin;

// Half adder
half_adder u1( 
.a(a), 
.b(b), 
.cin(cin),
.sum(sum),
.cout(cout) );
endmodule
