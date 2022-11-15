// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire ab,cout;
half_adder_1 h1(a, b, ab, cout);
half_adder_2 h2(ab, cout, sum, cout);
endmodule
